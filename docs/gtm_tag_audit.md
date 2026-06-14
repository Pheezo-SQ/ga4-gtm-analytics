# GTM Tag Audit — Google Merchandise Store

*Project:* GA4 + GTM Analytics  
*Analyst:* Philip Ocheri  
*Date:* June 2026  

---

## Overview

This document records the GTM tag audit conducted as part of the GA4 + GTM Analytics portfolio project. The audit examines tag configuration, trigger logic, and data layer implementation against best practices for a DTC e-commerce brand.

---

## Audit Scope

| Area | Coverage |
|---|---|
| Page view tracking | GA4 Configuration tag |
| Purchase event tracking | GA4 Event tag — purchase |
| Session attribution | Traffic source parameters |
| Bounce tracking | Engagement hit configuration |
| Internal traffic filtering | IP exclusion filters |

---

## Tags Audited

### 1. GA4 Configuration Tag
- *Purpose:* Fires GA4 base tracking on all pages
- *Trigger:* All Pages
- *Status:* ✅ Correctly configured
- *Recommendation:* Ensure Measurement ID is pulled from a GTM variable, not hardcoded

### 2. GA4 Purchase Event Tag
- *Purpose:* Fires on transaction confirmation page
- *Trigger:* Page URL contains /order-confirmation
- *Status:* ⚠️ Risk identified
- *Issue:* No deduplication logic on transaction ID — risk of duplicate purchase events if user refreshes confirmation page
- *Fix:* Add transaction ID to GTM dataLayer and configure event deduplication via GA4 event parameter

### 3. Internal Traffic Filter
- *Purpose:* Exclude internal IP addresses from reports
- *Status:* ❌ Not configured in GA4 Data Filters
- *Fix:* Navigate to GA4 Admin → Data Filters → Create Internal Traffic filter, define IP ranges

### 4. Session Source Attribution
- *Purpose:* Capture UTM parameters for campaign attribution
- *Status:* ✅ Functioning via GA4 automatic attribution
- *Recommendation:* Enforce UTM tagging policy across all paid campaigns to reduce (none) medium sessions

---

## Key Findings

1. Purchase event deduplication is missing — highest risk item
2. Internal traffic not filtered — inflating session counts
3. UTM discipline inconsistent — 189,445 sessions attributed to (none) medium
4. No cross-domain tracking configured — if checkout is on subdomain, sessions will break

---

## Priority Fix Order

| Priority | Issue | Impact |
|---|---|---|
| 1 | Purchase event deduplication | Revenue double-counting |
| 2 | Internal IP filter | Session inflation |
| 3 | UTM enforcement policy | Attribution accuracy |
| 4 | Cross-domain tracking | Session fragmentation |