# Construction Site Access Control System (PostgreSQL)

## 📌 Описание
Проект моделирует систему контроля доступа сотрудников на строительные объекты.

Используется для:
- учета сотрудников и подрядчиков
- контроля доступа на объекты
- анализа посещений
- выявления нарушений безопасности

## 🧱 Структура

- employees — сотрудники
- objects — объекты (стройки)
- access_cards — пропуска
- visits — посещения

## 🔍 Ключевые проверки

### Просроченные пропуска
```sql
SELECT e.name, o.object_name
FROM access_cards ac
JOIN employees e ON e.id = ac.employee_id
JOIN objects o ON o.id = ac.object_id
WHERE ac.valid_until < CURRENT_DATE;

-- Кто сейчас на объекте
SELECT e.name
FROM visits
WHERE exit_time IS NULL;
