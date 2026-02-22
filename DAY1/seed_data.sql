
-- 3. DATA INSERTION (The "Practice-Ready" Set)
INSERT INTO province_names VALUES 
('ON', 'Ontario'), ('BC', 'British Columbia'), ('QC', 'Quebec'), 
('AB', 'Alberta'), ('NS', 'Nova Scotia'), ('MB', 'Manitoba');

INSERT INTO doctors VALUES 
(1, 'Gregory', 'House', 'Diagnostics'),
(2, 'James', 'Wilson', 'Oncology'),
(5, 'Lisa', 'Cuddy', 'Endocrinology'),
(19, 'Eric', 'Foreman', 'Neurology'),
(22, 'Robert', 'Chase', 'Cardiology');

INSERT INTO patients VALUES 
(1, 'Charles', 'Maroni', 'M', '1975-10-10', 'Hamilton', 'ON', 'Penicillin', 188, 110),
(45, 'Sarah', 'Smith', 'F', '2010-05-15', 'Kingston', 'ON', NULL, 160, 65),
(534, 'Stevens', 'Sims', 'M', '1992-03-20', 'Hamilton', 'ON', 'Morphine', 175, 75),
(579, 'Leo', 'Nadal', 'M', '1972-06-14', 'Halifax', 'NS', NULL, 170, 72),
(879, 'Mariya', 'Ross', 'F', '1985-02-12', 'Kingston', 'ON', 'Peanuts', 165, 70),
(1000, 'John', 'Doe', 'M', '1985-12-30', 'Toronto', 'ON', 'Penicillin', 180, 105),
(542, 'Arthur', 'Morgan', 'M', '1949-01-01', 'Toronto', 'ON', 'NKA', 185, 90),
(10, 'Fatima', 'Zahra', 'F', '1990-05-05', 'Montreal', 'QC', 'Penicillin', 150, 120),
(11, 'Kevin', 'Hart', 'M', '1979-07-07', 'Vancouver', 'BC', NULL, 160, 55),
(12, 'Zoe', 'Kravitz', 'F', '1988-11-11', 'Toronto', 'ON', 'NKA', 155, 48),
(13, 'John', 'Maroni', 'M', '1970-02-15', 'Hamilton', 'ON', 'Morphine', 175, 120),
(14, 'Duplicate', 'Name', 'F', '2010-01-01', 'Winnipeg', 'MB', NULL, 165, 60),
(15, 'Duplicate', 'Name', 'F', '1995-06-06', 'Winnipeg', 'MB', 'Dust', 165, 60),
(20, 'Roger', 'Waters', 'M', '1973-09-06', 'Toronto', 'ON', NULL, 180, 85),
(21, 'David', 'Gilmour', 'M', '1976-03-06', 'Toronto', 'ON', 'NKA', 182, 88),
(30, 'Ben', 'Affleck', 'M', '1972-08-15', 'Halifax', 'NS', NULL, 190, 95),
(31, 'Matt', 'Damon', 'M', '1970-10-08', 'Halifax', 'NS', NULL, 178, 84),
(32, 'Jennifer', 'Lopez', 'F', '1969-07-24', 'Halifax', 'NS', 'Peanuts', 164, 59);

INSERT INTO admissions VALUES 
(1, '2026-01-01', '2026-01-01', 'Migraine', 1),
(579, '2026-01-05', '2026-01-10', 'Fever', 19),
(579, '2026-02-01', '2026-02-03', 'Fever', 19),
(542, '2026-01-15', '2026-01-20', 'Dementia', 5),
(534, '2026-03-10', '2026-03-15', 'Dementia', 5),
(1000, '2026-01-20', '2026-01-25', 'Pneumonia', 1),
(10, '2026-02-10', '2026-02-15', 'Asthma', 2),
(11, '2026-02-11', '2026-02-12', 'Asthma', 2),
(542, '2026-05-01', NULL, 'Broken Arm', 22),
(1, '2026-05-10', '2026-05-12', 'Checkup', 5);