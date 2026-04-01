-- Сотрудники
INSERT INTO employees (name, company, position, status) VALUES
('Aigerim S.', 'StamGazStroy', 'Engineer', 'active'),
('Dias K.', 'Contractor LLC', 'Welder', 'active'),
('Murat T.', 'Contractor LLC', 'Intern', 'inactive');

-- Объекты
INSERT INTO objects (object_name, location) VALUES
('Oil Plant A', 'Atyrau'),
('Gas Station B', 'Aktau');

-- Карты доступа
INSERT INTO access_cards (employee_id, object_id, access_level, valid_until) VALUES
(1, 1, 'full', '2026-12-31'),
(2, 1, 'limited', '2026-06-01'),
(3, 1, 'full', '2025-01-01'); -- просрочен

-- Логи посещений
INSERT INTO visits (employee_id, object_id, entry_time, exit_time) VALUES
(1, 1, NOW() - INTERVAL '5 hours', NOW() - INTERVAL '1 hour'),
(2, 1, NOW() - INTERVAL '3 hours', NULL),
(3, 1, NOW() - INTERVAL '1 day', NOW() - INTERVAL '20 hours');
