-- show timezone
-- SELECT now()

create Table timez(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)

SELECT * from timez;

INSERT INTO timez VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00')

SELECT now()::date;
SELECT now()::time;

SELECT to_char(now(), 'dd/mm/yyyy')

SELECT to_char(now(), 'MONTH')

SELECT to_char(now(), 'Month')

SELECT to_char(now(), 'DDD')

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE, '2000-09-14')

-- get a new column name is age and give the age of every student
SELECT *, age(CURRENT_DATE, dob) from students2;

SELECT extract (month from '2024-01-25'::date)

    