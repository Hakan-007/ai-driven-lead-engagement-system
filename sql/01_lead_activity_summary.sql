-- This view aggregates event-level activity data into lead-level behavioral metrics.
-- It calculates real activity count, last activity date, high-intent flags,
-- and a weighted engagement score for each lead.

CREATE OR REPLACE VIEW `lead-engagement-and-outreach.crm_project.lead_activity_summary` AS
SELECT
  lead_id,
  COUNT(*) AS real_activity_count,
  MAX(activity_date) AS real_last_activity_date,

  COUNTIF(activity_type = 'email_open') AS email_opens,
  COUNTIF(activity_type = 'link_click') AS link_clicks,
  COUNTIF(activity_type = 'page_visit') AS page_visits,
  COUNTIF(activity_type = 'demo_request') AS demo_requests,
  COUNTIF(activity_type = 'webinar_attendance') AS webinar_attendances,

  COUNTIF(activity_type IN ('demo_request', 'webinar_attendance')) > 0 AS high_intent_flag,

  SUM(
    CASE
      WHEN activity_type = 'email_open' THEN 1
      WHEN activity_type = 'link_click' THEN 3
      WHEN activity_type = 'page_visit' THEN 2
      WHEN activity_type = 'webinar_attendance' THEN 6
      WHEN activity_type = 'demo_request' THEN 10
      ELSE 0
    END
  ) AS calculated_engagement_score

FROM `lead-engagement-and-outreach.crm_project.activities`
GROUP BY lead_id;
