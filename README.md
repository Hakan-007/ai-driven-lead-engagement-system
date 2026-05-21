# AI-Driven Lead Engagement & Outreach System

## Overview

This project demonstrates an AI-driven Marketing Operations system for a B2B SaaS company.

The system combines CRM lead data, behavioral activity logs, outreach history, SQL-based trigger logic, and AI-generated outreach messages to recommend the next best action for each lead.

The goal of this project is to show how CRM, data analysis, automation logic, and AI can work together in a practical Marketing Operations / Growth workflow.

---

## Business Problem

B2B SaaS companies often collect leads from multiple sources, but outreach is frequently manual, inconsistent, and disconnected from actual lead behavior.

Common challenges include:

- Sales teams do not always know which leads to prioritize.
- Outreach is often generic or based on intuition.
- High-intent signals such as demo requests or content engagement may not trigger timely follow-up.
- Inactive leads are rarely handled systematically.
- Marketing and sales teams may not work from the same lead intelligence layer.

---

## Solution

I designed a behavior-triggered lead engagement system that combines:

- CRM lead data
- Behavioral activity data
- Outreach history
- SQL-based intelligence layers
- AI-generated outreach recommendations

The system identifies:

- high-intent leads
- highly engaged leads without outreach
- warm leads needing follow-up
- inactive leads requiring re-engagement

The final trigger output can be used by an AI assistant to generate personalized multi-channel outreach messages.

---

## Tech Stack

| Layer | Tool / Skill |
|---|---|
| CRM | HubSpot |
| Data Warehouse | Google BigQuery |
| Data Modeling | SQL |
| AI Prototype | Antigravity |
| Automation Concept | Make |
| Portfolio Documentation | GitHub + Notion |

---

## Data Model

The system uses three core datasets:

### 1. Leads

CRM master data including:

- lead profile
- company
- job title
- industry
- country
- persona
- target tier
- lifecycle stage
- lead score

### 2. Activities

Behavioral event data including:

- email opens
- link clicks
- page visits
- demo requests
- webinar attendance

### 3. Outreach Log

Previous outreach history including:

- message type
- message theme
- sent date
- response status

---

## SQL Intelligence Layer

I created SQL views in BigQuery to transform raw CRM and behavioral data into a decision-making layer.

### SQL Views

- `lead_activity_summary`
- `lead_outreach_status`
- `unified_lead_view`
- `trigger_generation_view`

### Purpose

These views help convert raw lead and activity data into:

- engagement metrics
- high-intent signals
- outreach status
- recommended next actions

---

## Trigger Logic

The trigger engine uses four main rules:

### 1. Demo Request → Demo Offer

If a lead requested a demo and has not yet received outreach, the system recommends a demo offer.

### 2. High Engagement, No Outreach → Intro

If a lead has a high calculated engagement score but no outreach history, the system recommends an intro message.

### 3. Warm Follow-Up

If a lead received an intro message and continued engaging without replying, the system recommends a follow-up.

### 4. Inactive Re-engagement

If a lead has been inactive for more than 14 days after previous outreach, the system recommends a low-priority re-engagement message.

---

## AI Outreach Assistant

To demonstrate how the trigger engine could be operationalized, I prototyped an AI outreach assistant using Antigravity.

The assistant takes trigger output from BigQuery and generates:

- email subject line
- personalized email body
- LinkedIn message
- internal sales note

---

## Example Use Case

A lead becomes inactive for more than 14 days after previous outreach.

The SQL trigger engine identifies this as an inactive re-engagement case and recommends a low-priority re-engagement action.

The AI assistant then generates a personalized, low-pressure outreach message tailored to the lead’s role, company, industry, and trigger reason.

---

## Skills Demonstrated

This project demonstrates practical skills in:

- CRM data modeling
- SQL joins and aggregation
- behavioral segmentation
- trigger-based marketing logic
- lead prioritization
- AI prompt design
- AI-assisted outreach personalization
- Marketing Operations system thinking

---

## Business Impact

This type of system could help a B2B SaaS company:

- prioritize high-intent leads
- reduce manual follow-up work
- avoid generic outreach
- improve sales and marketing alignment
- create more consistent lead engagement workflows
