-- Branch Profitability & Network Optimization
-- Core management analysis queries

-- Branch profitability ranking
SELECT branch_id, branch_name,
       SUM(revenue) AS revenue,
       SUM(cogs) AS cogs,
       SUM(operating_cost) AS operating_cost,
       SUM(revenue - cogs - operating_cost) AS operating_profit,
       ROUND(100.0 * SUM(revenue - cogs - operating_cost) / NULLIF(SUM(revenue),0), 2) AS operating_margin_pct
FROM branch_financials
GROUP BY branch_id, branch_name
ORDER BY operating_profit DESC;

-- High revenue but weak margin branches
SELECT branch_id, branch_name,
       SUM(revenue) AS revenue,
       ROUND(100.0 * SUM(revenue - cogs - operating_cost) / NULLIF(SUM(revenue),0), 2) AS margin_pct
FROM branch_financials
GROUP BY branch_id, branch_name
HAVING SUM(revenue) >= (SELECT AVG(revenue) FROM (SELECT SUM(revenue) revenue FROM branch_financials GROUP BY branch_id) x)
   AND 100.0 * SUM(revenue - cogs - operating_cost) / NULLIF(SUM(revenue),0) < 10
ORDER BY margin_pct;

-- Cost pressure by category
SELECT branch_id, cost_category, SUM(cost_amount) AS total_cost
FROM branch_costs
GROUP BY branch_id, cost_category
ORDER BY branch_id, total_cost DESC;
