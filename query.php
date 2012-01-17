

/// query for template sale report


SELECT a.cart_id AS orderId, b.product_id AS Product_ID, b.template_id AS Template_id, c.product_name AS product_name, d.template_base_name AS Template_Name, a.final_price AS Total_Price
FROM  `cart` AS a, cart_items AS b, products AS c, templates AS d
WHERE a.cart_id = b.cart_id
AND a.`session_id` LIKE  '%Done%'
AND c.product_id = b.product_id
AND b.template_id = d.template_id
GROUP BY a.cart_id
ORDER BY a.`cart_id` DESC 
LIMIT 0 , 100


/// query for Coupon Used report

SELECT  `cart_id` ,  `coupon_code` ,  `final_price` 
FROM  `cart` 
WHERE  `session_id` LIKE  '%Done%'
AND  `coupon_code` IS NOT NULL 

//