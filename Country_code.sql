             `Question`

`A business is analyzing data by country. For a each country, display the country name, total number of invoices, and their average amount, 
format the averages as a floating-point number with 6 decimal place. 
return only those countries where their average invoice amount is greater than the average  invoice amount over all invoices

The average invoice amount is 2353.5 the average invoice amount of country with ids 1, 2, and 3 are 4825, 1017.5, and 1218 respectively. 
Hence, the only country to report is Australia.


               `Answer!`

SELECT co.country_name, COUNT(*), AVG(i.total_price)
FROM country co
JOIN city ci ON co.id = ci.country_id
JOIN customer cu ON ci.id = cu.city_id
JOIN invoice i ON cu.id = i.customer_id
GROUP BY co.country_name
HAVING AVG(i.total_price) > (SELECT AVG(total_price) FROM invoice);
