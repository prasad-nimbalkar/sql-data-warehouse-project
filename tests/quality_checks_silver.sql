-- checking 'silver.crm_cust_info'
SELECT 
    cst_id,
    COUNT(*) 
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;


SELECT 
    cst_key 
FROM silver.crm_cust_info
WHERE cst_key != TRIM(cst_key);

SELECT DISTINCT 
    cst_marital_status 
FROM silver.crm_cust_info;
