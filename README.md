# AI-Driven Lead Engagement & CRM Automation Prototype

A Marketing Operations / MarTech portfolio project demonstrating how CRM data, SQL intelligence, AI-assisted outreach, and workflow automation can be combined into a scalable lead engagement system.

---

## Business Problem

B2B sales and marketing teams often face a fragmented workflow:

- CRM data sits in HubSpot
- engagement/activity data is difficult to operationalize
- lead prioritization is manual
- follow-up actions are inconsistent
- AI outreach experiments remain disconnected from CRM workflows

As a result, valuable leads may be missed, follow-up timing becomes inconsistent, and marketing/sales teams spend time manually reviewing signals instead of acting on them.

---

## Solution

This project simulates an end-to-end Marketing Operations workflow that connects:

- CRM segmentation (HubSpot)
- SQL intelligence layer (BigQuery)
- behavioral trigger logic
- AI-assisted outreach prototyping (Antigravity)
- workflow automation (Make)
- dashboard visualization (Looker Studio)

The objective is to reduce the manual gap between lead intelligence and CRM execution.

---

## Tech Stack

- HubSpot CRM
- Google BigQuery
- SQL
- Looker Studio
- Make
- Google Sheets
- Antigravity (AI agent prototyping)

---

## System Architecture

See full architecture documentation:

[docs/architecture.md](docs/architecture.md)

---

## CRM Operational Layer (HubSpot)

Implemented CRM segmentation logic including:

- High Intent Leads
- Re-engagement Leads
- Tier 1 SaaS ICP Leads

These segments demonstrate how CRM properties can be operationalized into lead prioritization workflows.

### CRM Example

![HubSpot CRM Segment](screenshots/hubspot_high_intent_segment.png)

---

## SQL Intelligence Layer

SQL workflows include:

- lead activity aggregation
- outreach status modeling
- unified lead intelligence view
- trigger generation logic

SQL files:

- [01 Lead Activity Summary](sql/01_lead_activity_summary.sql)
- [02 Lead Outreach Status](sql/02_lead_outreach_status.sql)
- [03 Unified Lead View](sql/03_unified_lead_view.sql)
- [04 Trigger Generation View](sql/04_trigger_generation_view.sql)

Example trigger logic:

- demo request → demo offer
- high engagement + no outreach → intro
- warm activity → follow-up
- inactivity → re-engagement

---

## Dashboard & Visualization

A Looker Studio dashboard was created to visualize:

- lifecycle stage distribution
- lead source distribution
- engagement by persona
- trigger recommendation distribution

### Dashboard Preview

![Dashboard](screenshots/looker_dashboard.png)

---

## AI Outreach Assistant Prototype

AI outreach logic was first prototyped in Antigravity.

The assistant generates:

- email drafts
- LinkedIn outreach messages
- internal sales notes

Files:

- [AI Prompt](ai-agent/outreach_prompt.md)
- [Sample Output](ai-agent/sample_output.md)

---

## Workflow Automation Prototype (Make)

A Make automation prototype demonstrates how trigger outputs can move into CRM execution.

Workflow:

Google Sheets trigger input  
→ Make router  
→ HubSpot CRM action  
→ automation log

Supported routes:

- demo_offer
- re_engagement
- follow_up
- intro

This demonstrates operational workflow orchestration for Marketing Operations teams.

### Automation Preview

![Make Workflow](screenshots/make_scenario_overview.png)

---

## Business Value

This prototype demonstrates how teams can:

- reduce manual lead review
- standardize CRM follow-up workflows
- operationalize SQL insights
- connect AI experimentation to CRM execution
- improve marketing/sales process consistency

---

## Skills Demonstrated

### Marketing Operations

- CRM workflow design
- lifecycle management
- lead prioritization
- operational automation

### MarTech

- system orchestration
- HubSpot CRM operations
- workflow automation
- dashboard reporting

### Data / Analytics

- SQL modeling
- behavioral trigger logic
- data aggregation
- KPI visualization

### AI / Automation

- AI prompt design
- AI-assisted workflow prototyping
- automation routing logic

---
