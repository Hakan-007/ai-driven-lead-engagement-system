-- This view combines CRM lead data, behavioral activity intelligence,
-- and outreach history into a unified decision-making layer.
-- It serves as the main intelligence input for trigger generation
-- and AI-assisted outreach recommendations.

CREATE OR REPLACE VIEW `lead-engagement-and-outreach.crm_project.unified_lead_view` AS
SELECT
  l.lead_id,
  l.first_name,
  l.last_name,
  l.email,
  l.company,
  l.job_title,
  l.company_size,
  l.lead_source,
  l.country,
  l.language,
  l.industry,
  l.target_tier,
  l.persona,
  l.lifecycle_stage,
  l.lead_status,
  l.created_date,

  -- CRM-native scoring
  l.lead_score,
  l.engagement_score AS crm_engagement_score,

  -- Behavioral intelligence
  COALESCE(a.real_activity_count, 0) AS real_activity_count,
  a.real_last_activity_date,
  COALESCE(a.email_opens, 0) AS email_opens,
  COALESCE(a.link_clicks, 0) AS link_clicks,
  COALESCE(a.page_visits, 0) AS page_visits,
  COALESCE(a.demo_requests, 0) AS demo_requests,
  COALESCE(a.webinar_attendances, 0) AS webinar_attendances,
  COALESCE(a.high_intent_flag, FALSE) AS high_intent_flag,
  COALESCE(a.calculated_engagement_score, 0) AS calculated_engagement_score,

  -- Outreach intelligence
  COALESCE(o.total_outreach_count, 0) AS total_outreach_count,
  o.last_outreach_date,
  o.last_message_type,
  o.last_message_theme,
  o.last_response_status,
  COALESCE(o.positive_responses, 0) AS positive_responses,
  COALESCE(o.negative_responses, 0) AS negative_responses,
  COALESCE(o.waiting_for_replies, 0) AS waiting_for_replies

FROM `lead-engagement-and-outreach.crm_project.leads` l
LEFT JOIN `lead-engagement-and-outreach.crm_project.lead_activity_summary` a
  ON l.lead_id = a.lead_id
LEFT JOIN `lead-engagement-and-outreach.crm_project.lead_outreach_status` o
  ON l.lead_id = o.lead_id;
