

-- 1. Display all car brands and models in Uppercase (String Function)
SELECT UPPER(brand) AS Brand, UPPER(model) AS Model FROM Cars;

-- 2. Display customer names with a formatted phone number (Concatenation)
SELECT full_name, ('+966-' || phone) AS International_Phone FROM Customers;

-- 3. Calculate the number of days until the end of the year 2025 (Date Arithmetic)
SELECT rental_id, rental_date, ('2025-12-31'::date - rental_date) AS Days_Until_Year_End FROM Rentals;

-- 4. Show rental status and replace NULL return dates with 'Not Returned' (COALESCE/General Function)
SELECT rental_id, COALESCE(CAST(return_date AS VARCHAR), 'Still Rented') AS Return_Status FROM Rentals;

-- 5. Get full rental details (Inner Join: Customer, Car, and Staff)
SELECT R.rental_id, C.full_name AS Customer, Ca.model AS Car, S.staff_name AS Staff
FROM Rentals R
JOIN Customers C ON R.customer_id = C.customer_id
JOIN Cars Ca ON R.car_id = Ca.car_id
JOIN Staff S ON R.staff_id = S.staff_id;

-- 6. List cars and their daily rental rates (Join with Category)
SELECT Cars.model, CarCategories.category_name, CarCategories.daily_rate 
FROM Cars 
JOIN CarCategories ON Cars.category_id = CarCategories.category_id;

-- 7. Find cars that have never been rented (Left Join)
SELECT Cars.brand, Cars.model 
FROM Cars 
LEFT JOIN Rentals ON Cars.car_id = Rentals.car_id 
WHERE Rentals.rental_id IS NULL;

-- 8. Calculate total revenue collected per payment method (Aggregate Function: SUM)
SELECT payment_method, SUM(amount) AS Total_Revenue 
FROM Payments 
GROUP BY payment_method;

-- 9. Find the staff member who processed the highest number of rentals (Limit/Group By)
SELECT staff_id, COUNT(*) AS Total_Rentals 
FROM Rentals 
GROUP BY staff_id 
ORDER BY Total_Rentals DESC 
LIMIT 1;

-- 10. List car categories with an average daily rate greater than 100 (Having Clause)
SELECT category_id, AVG(daily_rate) AS Avg_Rate
FROM CarCategories 
GROUP BY category_id 
HAVING AVG(daily_rate) > 100;

-- 11. Count available cars in each category (Where & Group By)
SELECT category_id, COUNT(*) AS Available_Count
FROM Cars 
WHERE status = 'Available' 
GROUP BY category_id;

-- 12. Retrieve customers who paid more than the overall average payment (Subquery)
SELECT full_name FROM Customers 
WHERE customer_id IN (
    SELECT customer_id FROM Rentals 
    WHERE rental_id IN (SELECT rental_id FROM Payments WHERE amount > (SELECT AVG(amount) FROM Payments))
);

-- 13. Find cars belonging to the most expensive category (Subquery with MAX)
SELECT brand, model FROM Cars 
WHERE category_id = (SELECT category_id FROM CarCategories WHERE daily_rate = (SELECT MAX(daily_rate) FROM CarCategories));

-- 14. Combined list of all names in the system (Union: Staff and Customers)
SELECT staff_name AS Name, 'Staff' AS Type FROM Staff
UNION
SELECT full_name AS Name, 'Customer' AS Type FROM Customers;

-- 15. List cars manufactured between 2021 and 2024 (Between)
SELECT brand, model, year FROM Cars WHERE year BETWEEN 2021 AND 2024;

-- 16. Search for customers whose names start with the letter 'S' (Like Operator)
SELECT * FROM Customers WHERE full_name LIKE 'S%';

-- 17. Display the 5 most recent payments (Order By & Limit)
SELECT * FROM Payments ORDER BY payment_date DESC LIMIT 5;
