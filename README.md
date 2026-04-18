# E-Commerce Business Performance Analysis

## Overview

This project analyzes an e-commerce business using the Google Analytics sample dataset in BigQuery. The analysis focuses on evaluating overall business performance, identifying key revenue drivers, and uncovering growth opportunities.

## Objectives

- Analyze overall business performance and health
- Identify key revenue drivers across channels
- Understand customer behavior and segmentation
- Detect conversion inefficiencies impacting revenue

## Dataset

- **Source**: Google Analytics Sample Dataset
- **Platform**: BigQuery
- **Grain**: Session-level

## Key fields used:

- totals.transactions
- totals.totalTransactionRevenue
- trafficSource.source
- geoNetwork.country
- device.deviceCategory
- totals.newVisits

## Approach

### Stage 1: Business Health
- Daily sessions and revenue
- Conversion rate and Average Order Value (AOV)
- Revenue trends over time

### Stage 2: Revenue Drivers
- Traffic source analysis
- Device performance analysis
- Geographic performance analysis

### Stage 3: Growth Strategy
- New vs Returning user analysis
- High-value channel identification
- Traffic vs revenue imbalance analysis

## Key Insights

- Revenue is highly volatile despite relatively stable traffic, indicating that fluctuations are driven by conversion variability rather than user acquisition.
- Returning users generate the majority of revenue despite fewer sessions, highlighting the importance of customer retention.
- High-traffic channels such as Google, YouTube, and Reddit contribute significantly to sessions but underperform in conversion, indicating inefficient traffic acquisition.
- Mobile devices drive substantial traffic but exhibit significantly lower conversion rates compared to desktop, suggesting potential issues in mobile user experience.
- Many geographic regions generate traffic but fail to convert into revenue, indicating weak global monetization.
- Some low-volume channels show high revenue per session but lack scalability, making them less impactful for overall growth.
- Overall, a consistent pattern emerges where traffic does not translate into proportional revenue across multiple dimensions.

## Identified Business Problem 

Despite consistent user traffic across multiple channels, the business does not achieve proportional revenue generation. This indicates inefficiencies in converting user sessions into transactions across key segments such as traffic sources, devices, and geographies.

## SQL Queries

All SQL queries used in this analysis are available in the /[queries](https://) folder.

## Tools Used

- BigQuery (SQL)

## Conclusion

The analysis reveals that the primary constraint to revenue growth is conversion inefficiency rather than lack of traffic. While the business successfully attracts users across multiple channels and regions, it fails to convert them effectively into paying customers.

Improving conversion performance, especially in high-traffic channels and on mobile devices, presents the most significant opportunity for revenue growth.