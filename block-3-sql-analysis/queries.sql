-- Задача 1: Вторая зарплата
SELECT (
    SELECT DISTINCT salary 
    FROM Employee 
    ORDER BY salary DESC 
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;

-- Задача 2: Дубликаты email
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;

-- Задача 3: Клиенты без заказов
SELECT c.name
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.id IS NULL;