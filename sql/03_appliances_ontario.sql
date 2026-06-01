-- Question 3
-- What were the total sales of appliances in Ontario?

SELECT
  Province, product_sub_category, sum(sales) as REVENUE
FROM [KMS Order Table]
WHERE Province = 'Ontario' and product_sub_category = 'Appliances'
GROUP BY Province, product_sub_category
