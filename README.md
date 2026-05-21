# ai-driven-lead-engagement-system


## Overview

This project demonstrates an AI-driven Marketing Operations system for a B2B SaaS company.

The system combines CRM lead data, behavioral activity logs, outreach history, SQL-based trigger logic, automation and AI-generated outreach messages to recommend the next best action for each lead.

## Business Problem

B2B SaaS companies often collect leads from multiple sources, but outreach is frequently manual, inconsistent, and disconnected from actual lead behavior.

This project solves that problem by creating a data-driven workflow that identifies high-intent, engaged, or inactive leads and recommends the most relevant outreach action.

## Tech Stack

- HubSpot CRM
- Google BigQuery
- SQL
- Antigravity AI Agent Prototype
- AI prompt engineering
- Make automation concept

## Data Model

The system uses three core datasets:

1. Leads — CRM master data
2. Activities — behavioral activity data
3. Outreach Log — previous outreach history

These are combined into SQL views that create a unified lead intelligence layer.

## Key SQL Layers

- lead_activity_summary
- lead_outreach_status
- unified_lead_view
- trigger_generation_view

## AI Outreach Layer

The AI assistant takes trigger outputs from BigQuery and generates:

- Email subject line
- Personalized email body
- LinkedIn message
- Internal sales note

## Example Use Case

A lead becomes inactive for more than 14 days after previous outreach.  
The trigger engine recommends a low-priority re-engagement action.  
The AI assistant then generates a value-add follow-up message tailored to the lead’s role and industry.

## Portfolio Goal

This project was built to demonstrate practical skills in:

- CRM data modeling
- Behavioral segmentation
- SQL-based trigger logic
- Marketing automation thinking
- AI-assisted outreach personalization
