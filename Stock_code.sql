~A stock is considered profitable if the predicted price is strictly greater than the current price.
Write a query to find the stock_codes of all the stocks which are profitable based on this definition. sort the output in ascending order.
there are two table in the database: Price_today and price_tomorrow. their primarry keys are stock_code.

Explanation:
For TITAn, today's stock price is 560 and its predicted price is 750, Hence it is profitable stock.
For MRF, today's stock price is 950 and its predicted price is 800, hence it is not profitable stock.
For GOOGL, today's stock price is 200 ad its predicted price is 210, hence it is profitable stock~

                                 ~Answer!~

SELECT p.stock_code
FROM Price_today p
JOIN Price_tomorrow t ON p.stock_code = t.stock_code
WHERE t.price > p.price
ORDER BY p.stock_code ASC;
