# System Architecture

## Overview

This project demonstrates an AI-driven lead engagement workflow for a B2B SaaS company.

The architecture combines CRM data, behavioral analytics, SQL-based decision logic, and AI-generated outreach recommendations.

---

## System Flow

```text
HubSpot CRM
   ↓
Leads Dataset
   ↓
Activities Dataset + Outreach Log
   ↓
BigQuery SQL Intelligence Layer
   ↓
Trigger Generation Engine
   ↓
AI Outreach Assistant
   ↓
Email / LinkedIn / Internal Sales Notes
```

---

## Layer Breakdown

### 1. CRM Layer

HubSpot stores the master lead dataset.

This includes:

- lead profile data
- company information
- lifecycle stage
- lead score
- persona
- target tier

Purpose:

Create a CRM-style lead source of truth.

---

### 2. Behavioral Data Layer

Behavioral activities are stored separately.

Examples:

- email opens
- link clicks
- page visits
- webinar attendance
- demo requests

Purpose:

Capture real engagement signals instead of relying only on static CRM scores.

---

### 3. Outreach History Layer

Stores previous outreach attempts.

Examples:

- intro emails
- follow-up messages
- response outcomes

Purpose:

Prevent repetitive outreach and improve decision quality.

---

### 4. SQL Intelligence Layer

BigQuery SQL views transform raw data into lead intelligence.

Views:

- lead_activity_summary
- lead_outreach_status
- unified_lead_view

Purpose:

Convert raw events into decision-ready intelligence.

---

### 5. Trigger Engine

The SQL trigger engine identifies recommended next actions.

Examples:

- demo offer
- intro outreach
- follow-up
- re-engagement

Purpose:

Translate behavior into operational actions.

---

### 6. AI Outreach Layer

AI generates outreach content using trigger context.

Outputs:

- email subject
- email body
- LinkedIn message
- internal sales note

Purpose:

Operationalize trigger intelligence into scalable communication.

---

## Skills Demonstrated

This architecture demonstrates:

- CRM thinking
- behavioral segmentation
- SQL data modeling
- trigger-based automation logic
- AI-assisted outreach design
- Marketing Operations system thinking
