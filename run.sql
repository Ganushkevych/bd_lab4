-- Функція, що видаляє з таблиці Issue усі випуски, що не мали ілюстратора.
DROP FUNCTION IF EXISTS clean_cov();
CREATE OR REPLACE FUNCTION clean_cov() RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN 
   DELETE FROM issue
   WHERE issue.authors_id IN 
      (SELECT issue.authors_id from issue left join authors using(authors_id) where authors.cover_artist is NULL);
END;
$$; 
select clean_cov();
select * from issue

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


-- Тригер додає час, коли було додано новий рядок
drop table info
CREATE TABLE Info
(
	info_id		INT  NOT NULL,
	comic_name		char(50)	NULL,
	active_years	char(20)	NULL,
	publish_date	char(50)	NULL,
	issue_description	char(100)	NULL,
	format		char(20)	NULL,
	rating		char(20)	NULL,
	price		float	NULL
);

DROP TRIGGER IF EXISTS aded_comics ON info;
DROP FUNCTION IF EXISTS set_data;

CREATE FUNCTION set_data() RETURNS TRIGGER
LANGUAGE 'plpgsql'
AS
$$
   BEGIN 
      UPDATE Info
      SET
		   publish_date = CURRENT_TIMESTAMP(0)
      WHERE 
         info.info_id = NEW.info_id;
      RETURN NULL;
   END;
$$;

CREATE TRIGGER aded_comics
AFTER INSERT ON Info
FOR EACH ROW EXECUTE FUNCTION set_data();


INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
values(8,'AAAAVENGERS', '(2023)', 'November 05 2023','Some issue description...', 'NOT Infinite Comic','Very good)', 2);
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(0, 'A Year of Marvels: April Infinity Comic (2016)', '(2016)' , 'April 01, 2016', 'The Infinite Comic that will have everyone talking!...', 'Infinite Comic', 'Rated T+', 0);
SELECT * FROM info
