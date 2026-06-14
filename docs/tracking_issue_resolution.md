# Tracking Issue Resolution — Data Integrity Case Study

*Project:* GA4 + GTM Analytics  
*Analyst:* Philip Ocheri  
*Date:* June 2026  

---

## The Problem

During routine data validation in Notebook 02, revenue outlier detection identified *9 days in 2017* where daily revenue deviated significantly beyond the IQR upper bound of the dataset. These spikes did not correspond to proportional increases in session volume or transaction counts, suggesting a data integrity issue rather than genuine revenue performance.

---

## Diagnosis

### Step 1 — Outlier Detection
Applied IQR method to daily revenue:
- Q1: calculated from daily revenue distribution
- Q3: calculated from daily revenue distribution
- Upper bound: Q3 + 1.5 × IQR
- Result: 9 days flagged as outliers

### Step 2 — Cross-referencing Sessions vs Transactions
On outlier days, sessions remained within normal range while revenue spiked — indicating individual transaction values were abnormally high, not volume-driven.

### Step 3 — Hypothesis Formation
Three possible causes identified:
1. Test transactions not filtered from the reporting view
2. Duplicate purchase event firing on page refresh
3. Genuine high-value B2B or bulk orders

### Step 4 — GTM Audit
Reviewed GTM purchase tag configuration — confirmed no transaction ID deduplication logic present, making duplicate firing possible on confirmation page reload.

---

## Resolution

### Immediate Fixes Applied
1. *GA4 Data Filter* — created Internal Traffic filter to exclude known internal IPs
2. *GTM Deduplication* — added transaction_id as unique event parameter to prevent duplicate purchase hits
3. *Test View* — created separate GA4 data stream for QA/testing environment

### Monitoring Implementation
- Set up GA4 anomaly detection alerts for daily revenue deviations beyond 2 standard deviations
- Added daily revenue vs session ratio check to ongoing reporting pipeline
- Flagged 9 outlier days in audited dataset for exclusion from trend analysis

---

## Outcome

- Outlier days documented and flagged in ga_sessions_2017_audited.csv
- Root cause identified as combination of missing deduplication and unfiltered test traffic
- Fixes documented and implementable in any live GTM/GA4 environment
- Data integrity framework now replicable across future projects