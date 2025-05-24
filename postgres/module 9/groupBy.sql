-- GROUP BY
SELECT country from students2
    GROUP BY country;

SELECT country, count(*) from students2
    GROUP BY country;

SELECT country, avg(age) from students2
    GROUP BY country;

SELECT country, count(*), avg(age), sum(age) from students2
    GROUP BY country;



--
SELECT country, count(*), avg(age), sum(age) from students2
    GROUP BY country
        HAVING avg(age) > 30;

SELECT extract(year from dob) as birth_year, count(*)
    FROM Students2
        GROUP BY birth_year