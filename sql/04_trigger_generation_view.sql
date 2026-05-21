-- This view translates lead behavior into recommended outreach actions.
-- It acts as a trigger engine for Marketing Operations / Growth workflows.
-- The output can be consumed by AI assistants or automation tools.

CREATE OR REPLACE VIEW `lead-engagement-and-outreach.crm_project.trigger_generation_view` AS

-- Rule 1: Demo Request → Demo Offer
SELECT
  lead_id,
  'demo_request' AS trigger_type,
  'Lead has requested a demo, which is a high-intent buying signal.' AS trigger_reason,
  'demo_offer' AS recommended_action,
  'high' AS priority
FROM `lead-engagement-and-outreach.crm_project.unified_lead_view`
WHERE demo_requests > 0
  AND total_outreach_count = 0

UNION ALL

-- Rule 2: High Engagement, No Outreach → Intro
SELECT
  lead_id,
  'high_engagement_no_outreach' AS trigger_type,
  'Lead shows strong engagement but has not received any outreach yet.' AS trigger_reason,
  'intro' AS recommended_action,
  'high' AS priority
FROM `lead-engagement-and-outreach.crm_project.unified_lead_view`
WHERE calculated_engagement_score > 20
  AND total_outreach_count = 0

UNION ALL

-- Rule 3: Warm Follow-Up
SELECT
  lead_id,
  'warm_follow_up' AS trigger_type,
  'Lead received an intro message and continued engaging with content.' AS trigger_reason,
  'follow_up' AS recommended_action,
  'medium' AS priority
FROM `lead-engagement-and-outreach.crm_project.unified_lead_view`
WHERE last_message_type = 'intro'
  AND calculated_engagement_score > 20
  AND last_response_status = 'no_reply'

UNION ALL

-- Rule 4: Inactive Re-engagement
SELECT
  lead_id,
  'inactive_reengagement' AS trigger_type,
  'Lead has been inactive for more than 14 days after previous outreach.' AS trigger_reason,
  're_engagement' AS recommended_action,
  'low' AS priority
FROM `lead-engagement-and-outreach.crm_project.unified_lead_view`
WHERE PARSE_TIMESTAMP('%d/%m/%Y', real_last_activity_date)
      < TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 14 DAY)
  AND total_outreach_count > 0
  AND last_message_type != 're_engagement';
