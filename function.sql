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


