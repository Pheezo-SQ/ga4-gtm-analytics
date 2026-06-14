# GA4 + GTM Analytics — Google Merchandise Store

*Analyst:* Philip Ocheri  
*GitHub:* github.com/Pheezo-SQ  
*Portfolio:* philipocheri.vercel.app  
*Period Analysed:* January 1, 2017 — August 1, 2017  
*Data Source:* BigQuery Public Dataset — bigquery-public-data.google_analytics_sample

---

## Project Overview

A full end-to-end analytics project built on real Google Analytics 360 data from the Google Merchandise Store. The project covers GA4/GTM tracking architecture, data integrity auditing, KPI dashboard design, channel attribution analysis, and CDP integration planning — answering five core questions a senior data analyst or analytics engineer would face in a DTC or subscription e-commerce environment.

---

## Key Findings

| Metric | Value |
|---|---|
| Total Sessions | 467,260 |
| Total Revenue | $1,028,927.13 |
| Total Transactions | 6,646 |
| Conversion Rate | 1.42% |
| Average Order Value | $154.82 |
| Bounce Rate | 50.00% |
| Revenue Outlier Days | 9 |
| Top Revenue Channel | Direct/None — $716,676 |
| Highest Converting Paid Channel | CPM — 2.79% |
| Best Revenue Month | April — $222,767 |

---

## Project Structure
ga4-gtm-analytics/
├── data/
│   ├── raw/                          # Original BigQuery CSV exports
│   ├── processed/                    # Cleaned and audited datasets
│   └── exports/                      # Power BI ready CSVs
├── notebooks/
│   ├── 01_data_extraction_bigquery   # BigQuery SQL + data load
│   ├── 02_data_cleaning_integrity    # Tracking audit + anomaly detection
│   ├── 03_kpi_analysis               # Core KPI framework + monthly trends
│   ├── 04_channel_attribution        # Medium, source, device breakdown
│   └── 05_cohort_rfm_analysis        # Cohort analysis + RFM segmentation
├── queries/                          # Saved BigQuery SQL files
├── reports/                          # All generated chart PNGs
├── docs/
│   ├── gtm_tag_audit.md             # GTM tag audit findings
│   ├── tracking_issue_resolution.md  # Data integrity case study
│   ├── kpi_dashboard_walkthrough.md  # KPI dashboard design rationale
│   └── cdp_integration_approach.md  # CDP + CRM integration architecture
└── README.md
---

## Tools & Stack

| Layer | Tool |
|---|---|
| Tag Management | Google Tag Manager |
| Analytics | Google Analytics 4 |
| Data Warehouse | BigQuery (Sandbox) |
| Analysis | Python — pandas, numpy, matplotlib, seaborn |
| Dashboard | Power BI |
| CRM | HubSpot |
| Version Control | Git + GitHub |
| Work Management | Notion + Jira |
| Design & Marketing | Canva + Google Looker Studio |

---

## Notebooks Summary

### 01 — Data Extraction & BigQuery Documentation
Documented BigQuery SQL queries, loaded real GA360 session data, validated schema, and produced annual summary KPIs.

### 02 — Data Cleaning & Tracking Integrity Audit
Identified 9 revenue outlier days using IQR method. Diagnosed root cause as missing GTM purchase event deduplication and unfiltered internal traffic. Documented resolution steps.

### 03 — KPI Analysis & Dashboard Design
Built monthly and weekly KPI aggregations. Defined metric prioritisation framework for DTC leadership dashboard. Exported Power BI ready datasets.

### 04 — Channel Attribution Analysis
Analysed 7 traffic mediums, 3 device categories, and top 10 traffic sources. CPM identified as highest converting paid channel despite low volume. Direct traffic dominates revenue at 69.7%.

### 05 — Cohort & RFM Analysis
Monthly cohort revenue indexed against January baseline. April identified as strongest cohort. RFM segmentation built at monthly grain. Day of week analysis shows weekday dominance in both revenue and conversion.

---

## Data Integrity Note

All metrics in this project are derived programmatically from verified BigQuery source data. No figures were manually entered. Outlier days are flagged in ga_sessions_2017_audited.csv and documented in docs/tracking_issue_resolution.md.

---

## Contact

*Philip Ocheri*  
pcheri17@gmail.com  
+2348086193521  
linkedin.com/in/philip-o-821b17116  
philipocheri.vercel.app