
---

## Блок 3: `block-3-sql-analysis/README.md`

```markdown
# Блок 3: SQL

*Тут всё просто, задачи с LeetCode.*

## 1. Вторая зарплата

```sql
-- Вариант 1 (понятный)
SELECT DISTINCT salary 
FROM Employee 
ORDER BY salary DESC 
LIMIT 1 OFFSET 1;

-- Но если второй нет — вернёт пустую строку, а надо NULL
-- Поэтому обернул в подзапрос:

SELECT (
    SELECT DISTINCT salary 
    FROM Employee 
    ORDER BY salary DESC 
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;