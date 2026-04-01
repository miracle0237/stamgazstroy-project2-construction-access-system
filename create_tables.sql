-- Сотрудники
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    company TEXT, -- подрядчик
    position TEXT,
    status TEXT DEFAULT 'active'
);

-- Объекты (стройки)
CREATE TABLE objects (
    id SERIAL PRIMARY KEY,
    object_name TEXT NOT NULL,
    location TEXT
);

-- Карты доступа
CREATE TABLE access_cards (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(id),
    object_id INT REFERENCES objects(id),
    access_level TEXT, -- full / limited
    valid_until DATE
);

-- Логи посещений
CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(id),
    object_id INT REFERENCES objects(id),
    entry_time TIMESTAMP,
    exit_time TIMESTAMP
);
