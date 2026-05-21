-- This view summarizes previous outreach history at the lead level.
-- It tracks outreach count, latest message, response signals,
-- and helps prevent duplicate or unnecessary outreach actions.

CREATE OR REPLACE VIEW `lead-engagement-and-outreach.crm_project.lead_outreach_status` AS
SELECT
  lead_id,
  COUNT(*) AS total_outreach_count,
  MAX(sent_date) AS last_outreach_date,

  ARRAY_AGG(message_type ORDER BY sent_date DESC LIMIT 1)[OFFSET(0)] AS last_message_type,
  ARRAY_AGG(message_theme ORDER BY sent_date DESC LIMIT 1)[OFFSET(0)] AS last_message_theme,
  ARRAY_AGG(response_status ORDER BY sent_date DESC LIMIT 1)[OFFSET(0)] AS last_response_status,

  COUNTIF(response_status IN ('replied', 'interested')) AS positive_responses,
  COUNTIF(response_status = 'not_interested') AS negative_responses,
  COUNTIF(response_status = 'no_reply') AS waiting_for_replies

FROM `lead-engagement-and-outreach.crm_project.outreach_log`
GROUP BY lead_id;
