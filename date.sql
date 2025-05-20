-- Active: 1747562696861@@localhost@5432@ph
SHOW timezone;

select now();

CREATE TABLE timeZ
(
    ts TIMESTAMP without time zone,
    tsz TIMESTAMP with time zone
)

INSERT INTO timeZ
VALUES('2024-01-12 12:04:00', '2024-01-12 12:04:00')

SELECT * from timeZ;

SELECT now();

SELECT CURRENT_DATE

SELECT now():: date;

SELECT to_char(now(),'yyyy/mm/dd')

SELECT CURRENT_DATE + INTERVAL '2 year'

SELECT age(CURRENT_DATE, '1994-04-03')

SELECT extract(year from '2024-02-12':: date)

SELECT 'n'::BOOLEAN;