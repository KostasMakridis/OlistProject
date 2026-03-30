-- 1. Verify total row count
SELECT COUNT(*) as TotalRows FROM olist_closed_deals_dataset;

-- 2. Preview first 100 rows
SELECT TOP 100 * FROM olist_closed_deals_dataset;

-- 3. Total Marketing Leads count
SELECT COUNT(*) as TotalLeads FROM olist_closed_deals_dataset;