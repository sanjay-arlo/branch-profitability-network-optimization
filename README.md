# Branch Profitability & Network Optimization

> Business Analyst portfolio project analysing branch revenue, operating profit, margin and network-level investment decisions.

## 🚀 Live Dashboard

**[Open the interactive dashboard](https://sanjay-arlo.github.io/branch-profitability-network-optimization/)**

## Business question

**Which branches create the most economic value, where is margin under pressure, and what should management do next?**

**Flow:** Branch performance → KPI analysis → Profitability comparison → Margin diagnosis → Management recommendation

## What the dashboard shows

- **Revenue** — annual revenue across the selected branch set
- **Operating profit** — total annual operating profit
- **Operating margin** — profit as a percentage of revenue
- **Branch comparison** — revenue and operating profit by branch
- **Margin benchmark** — branch-level operating margin comparison
- **Management view** — strongest branch, weakest margin and decision lens

## Dataset

`data/branch_summary.csv`

The repository contains **synthetic / illustrative branch records** for portfolio demonstration. It is not company financial data.

## Analysis

The project answers:

1. Which branches generate the most revenue and operating profit?
2. Which branches combine scale with healthy margins?
3. Where is margin compression most visible?
4. Which branches should be prioritised for turnaround or investment?
5. What evidence should management consider before expansion or consolidation?

## Project files

- `index.html` — live dashboard interface
- `app.js` — dashboard calculations, filtering and charts
- `style.css` — dashboard presentation layer
- `data/branch_summary.csv` — source branch KPI dataset
- `data/branches.csv` — branch reference data
- `data/branch_daily_performance.csv` — detailed performance data
- `sql/analysis.sql` — SQL business analysis
- `analysis/analysis.py` — Python / Pandas analysis
- `dashboard/dashboard_spec.md` — dashboard and KPI specification

## Technical stack

- **Excel** — business calculations and scenario planning
- **SQL / MySQL** — profitability analysis and benchmarking
- **Python / Pandas** — data preparation and analytical checks
- **HTML / CSS / JavaScript** — interactive live dashboard
- **Chart.js** — browser-based visualisation
- **GitHub Pages** — live dashboard hosting
- **Power BI** — compatible dashboard design direction

## KPI logic

**Operating margin**

`Operating Profit / Revenue × 100`

**Network operating profit**

`SUM(Branch Operating Profit)`

**Branch benchmark**

Compare branch operating margin and absolute operating profit to identify scale-versus-efficiency trade-offs.

## Limitation

This is a **portfolio case study**, not production financial research. A production implementation would require audited financial data, branch-level fixed and variable cost detail, lease data, staffing costs and approved investment assumptions.

## Author

**Sanjay Arlo**

Business Analyst / Data Analyst Portfolio  
[GitHub](https://github.com/sanjay-arlo)
