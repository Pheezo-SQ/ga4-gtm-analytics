*Project:* GA4 + GTM Analytics  
*Analyst:* Philip Ocheri  
*Date:* June 2026  

---

## Approach

This document walks through the process of building a KPI dashboard for a DTC or subscription e-commerce brand from scratch — covering metric prioritisation, tool selection, data trust, and leadership communication.

---

## Step 1 — Define the Business Questions First

Before selecting any metric, the dashboard must answer specific business questions:

| Business Question | KPI |
|---|---|
| Are we growing? | Monthly Revenue & MoM Growth % |
| Is our site working? | Conversion Rate |
| Are customers spending more? | Average Order Value |
| Is our traffic quality improving? | Bounce Rate & Revenue Per Session |
| Which channels drive value? | Revenue by Medium & Source |
| Which devices convert best? | Conversion Rate by Device |

---

## Step 2 — Metric Prioritisation

### Tier 1 — Leadership Metrics (top of dashboard)
- Total Revenue
- Conversion Rate
- Average Order Value
- Monthly Revenue Growth %

### Tier 2 — Marketing Metrics (second section)
- Revenue by Channel Medium
- Sessions by Traffic Source
- Revenue Per Session
- Bounce Rate by Medium

### Tier 3 — Operational Metrics (drill-down)
- Day of Week Performance
- Weekly Revenue Trend
- Device Breakdown
- RFM Cohort Analysis

---

## Step 3 — Tools Used

| Layer | Tool | Purpose |
|---|---|---|
| Tag Management | Google Tag Manager | Event and pageview tracking |
| Analytics | GA4 | Session, event, and conversion data |
| Data Warehouse | BigQuery | SQL extraction and storage |
| Analysis | Python (pandas, matplotlib) | Cleaning, modelling, charting |
| Dashboard | Power BI | Interactive leadership dashboard |
| CRM | HubSpot | Contact lifecycle and segmentation |
| Work Management | Notion + Jira | Project tracking and documentation |

---

## Step 4 — Ensuring Data Is Trusted by Leadership

1. *Single source of truth* — all metrics derived from BigQuery, not GA4 UI
2. *Documented definitions* — every metric has a formula recorded in this project
3. *Outlier audit* — anomalous days flagged and excluded from trend lines
4. *Reproducible pipeline* — any analyst can re-run notebooks and get identical output
5. *Version controlled* — all code and queries committed to GitHub with timestamps
6. *No manual overrides* — zero manually entered numbers anywhere in the pipeline

---

## Step 5 — Power BI Dashboard Structure

### Page 1 — Executive Summary
- Revenue scorecard (total, MoM growth, vs prior period)
- Conversion rate gauge
- AOV trend line
- Sessions vs transactions dual axis

### Page 2 — Channel Attribution
- Revenue by medium bar chart
- Sessions by source treemap
- Conversion rate by medium table
- Device breakdown pie + bar

### Page 3 — Cohort & Trends
- Monthly revenue index (vs January baseline)
- Weekly revenue trend
- Day of week heatmap
- RFM scatter plot

### Page 4 — Data Integrity Log
- Outlier days flagged
- Audit summary table
- Tracking issue resolution notes