--Процедура, що виводить надає інформацію про комікс з вказаним рейтингом
DROP PROCEDURE IF EXISTS get_cname(varchar(20));
CREATE OR REPLACE PROCEDURE get_cname(rate_arg varchar(50))
LANGUAGE 'plpgsql'
AS $$
DECLARE record_cname info.comic_name%TYPE;
DECLARE record_rate info.rating%TYPE;

BEGIN
    SELECT comic_name, rating into record_cname, record_rate FROM info WHERE rating = rate_arg;
    RAISE INFO 'Comic_name: %,  Rating: %', TRIM(record_cname), TRIM(record_rate);
END;
$$;


select * from info
CALL get_cname('Rated T');