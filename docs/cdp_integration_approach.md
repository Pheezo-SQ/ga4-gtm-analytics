# CDP Integration Approach — Segment-Style Architecture

*Project:* GA4 + GTM Analytics  
*Analyst:* Philip Ocheri  
*Date:* June 2026  

---

## Overview

This document outlines how a Customer Data Platform (CDP) would be integrated into the GA4 + GTM analytics stack to enable unified customer profiles, lifecycle tracking, and personalised marketing automation.

---

## Architecture
GTM (event collection)
↓
GA4 (session & behaviour data)
↓
BigQuery (data warehouse)
↓
Segment CDP (identity resolution + audience building)
↓
HubSpot CRM (lifecycle management + email automation)
↓
Power BI (unified reporting)
---

## Integration Steps

### Step 1 — GTM to GA4
- Configure GA4 Configuration tag in GTM
- Set up purchase, add_to_cart, view_item events
- Pass user_id via dataLayer for logged-in users

### Step 2 — GA4 to BigQuery
- Enable BigQuery Export in GA4 Admin
- Raw event data streams daily into BigQuery dataset
- Query with SQL to build session and user-level tables

### Step 3 — BigQuery to Segment
- Connect BigQuery as a Segment Source using Reverse ETL
- Map user_id, session data, and purchase events to Segment traits
- Build unified customer profiles with cross-session identity

### Step 4 — Segment to HubSpot
- Sync Segment audiences to HubSpot contact lists
- Trigger lifecycle workflows based on RFM segment
- High-value customers (M_score = 3) → VIP email sequence
- At-risk customers (R_score = 1) → win-back campaign

### Step 5 — HubSpot to Power BI
- Export HubSpot contact and deal data via API
- Merge with BigQuery session data for unified reporting
- Track email-influenced revenue alongside direct GA4 attribution

---

## Tools & Platforms

| Tool | Role |
|---|---|
| Google Tag Manager | Event collection and tag management |
| GA4 | Behavioural analytics |
| BigQuery | Data warehouse and SQL layer |
| Segment | CDP — identity resolution and audience management |
| HubSpot | CRM — lifecycle management and automation |
| Power BI | Unified dashboard and reporting |
| Notion | Documentation and project management |
| Jira | Sprint and task tracking |

---

## CRM Tools
- *HubSpot Free Tier* — contact management, deal pipeline, email sequences, lifecycle stage tracking

## Design & Marketing Tools
- *Canva* — creative asset production for email and social
- *Google Looker Studio* — lightweight dashboard for marketing team
- *Mailchimp* — email campaign execution (integrated via HubSpot)

## Work Management Tools
- *Notion* — project documentation, SOPs, and knowledge base
- *Jira* — sprint planning and issue tracking for analytics team
- *Google Workspace* — Docs, Sheets, Slides for stakeholder communication