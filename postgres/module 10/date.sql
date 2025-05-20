-- show timezone
-- SELECT now()

create Table timez(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)

SELECT * from timez;

INSERT INTO timez VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00')

SELECT now()::date;
SELECT now()::time;
