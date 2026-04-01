-- Активные доступы
CREATE VIEW active_access AS
SELECT e.name, o.object_name, ac.access_level
FROM access_cards ac
JOIN employees e ON e.id = ac.employee_id
JOIN objects o ON o.id = ac.object_id
WHERE ac.valid_until >= CURRENT_DATE;
