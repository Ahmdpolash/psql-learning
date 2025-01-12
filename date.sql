-- SHOW timezone

SELECT now()

CREATE Table timeZone (ts TIMESTAMP without TIME zone, tsz TIMESTAMP with TIME zone)

INSERT INTO timeZone VALUES ('2024-01-12 10:45:20', '2024-01-12 10:45:20')

SELECT * FROM timeZone

SELECT CURRENT_DATE

SELECT now()::time

SELECT now()::date

SELECT current_time


SELECT to_char(now(),'dd/mm/yyyy')


SELECT CURRENT_DATE - INTERVAL '1 d'

SELECT age(now(),'2004-07-02')


SELECT *, age(now(),dob) FROM students

SELECT extract(year from '2025-05-14'::date)