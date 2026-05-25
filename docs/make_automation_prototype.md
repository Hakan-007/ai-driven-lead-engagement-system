# Make Automation Prototype

## Purpose

This prototype demonstrates how SQL-based trigger recommendations can be operationalized into CRM actions.

The goal is to reduce the manual gap between lead intelligence and sales execution.

## Workflow

```text
Google Sheets trigger input
→ Make router
→ HubSpot CRM action
→ Google Sheets automation log

Input

The workflow starts from a structured trigger input containing:

lead_id
email
first_name
company
job_title
industry
persona
lifecycle_stage
calculated_engagement_score
trigger_type
trigger_reason
recommended_action
priority
draft_message
Routing Logic

The scenario routes leads based on recommended_action.

Examples

re_engagement → create contextual HubSpot note
demo_offer → create HubSpot follow-up task
follow_up → create HubSpot follow-up task
intro → create HubSpot intro task
Output

The workflow writes the result into an automation log with:

lead_id
email
recommended_action
action_type
timestamp
notes
Business Value

This automation demonstrates how a Marketing Operations team can convert lead intelligence into CRM execution.

Instead of manually reviewing trigger outputs and creating CRM actions one by one, the workflow can route and create the appropriate next step automatically.
