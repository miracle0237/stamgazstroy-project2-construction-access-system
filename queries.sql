-- Кто имеет доступ к объектам
SELECT e.name, o.object_name, ac.access_level
FROM access_cards ac
JOIN employees e ON e.id = ac.employee_id
JOIN objects o ON o.id = ac.object_id;

-- Просроченные пропуска
SELECT e.name, o.object_name, ac.valid_until
FROM access_cards ac
JOIN employees e ON e.id = ac.employee_id
JOIN objects o ON o.id = ac.object_id
WHERE ac.valid_until < CURRENT_DATE;

-- Уволенные с доступом
SELECT e.name, o.object_name
FROM access_cards ac
JOIN employees e ON e.id = ac.employee_id
JOIN objects o ON o.id = ac.object_id
WHERE e.status = 'inactive';

-- Кто сейчас находится на объекте
SELECT e.name, o.object_name, v.entry_time
FROM visits v
JOIN employees e ON e.id = v.employee_id
JOIN objects o ON o.id = v.object_id
WHERE v.exit_time IS NULL;
