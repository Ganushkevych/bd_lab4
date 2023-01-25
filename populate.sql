-- Authors
INSERT INTO Authors(authors_id, writer, penciler, cover_artist, imprint)
VALUES(0, 'Yves Bigerel', 'Yves Bigerel', 'Jamal Campbell', 'Marvel Universe');
INSERT INTO Authors(authors_id, writer, penciler, cover_artist, imprint)
VALUES(1, 'Chris Sims', 'Jamal Campbell', NULL , 'Marvel Universe');
INSERT INTO Authors(authors_id, writer, penciler, cover_artist, imprint)
VALUES(2, 'Gerry Duggan', 'Paco Diaz', 'Goran Parlox' , 'None');
INSERT INTO Authors(authors_id, writer, penciler, cover_artist, imprint)
VALUES(3, 'Brian Michael Bendis', 'Michael Gaydos', NULL , 'Max');
INSERT INTO Authors(authors_id, writer, penciler, cover_artist, imprint)
VALUES(4, 'Benjamin Percy', 'David Wachter', 'Phil Noto' , 'Marvel Universe');

-- Issue
INSERT INTO Issue(issue_id, issue_title, authors_id, info_id)
VALUES(0, 'A Year of Marvels: April Infinity Comic (2016) #1', 0 , 0);
INSERT INTO Issue(issue_id, issue_title, authors_id, info_id)
VALUES(1, 'A Year of Marvels: August Infinity Comic (2016) #1', 1 , 1);
INSERT INTO Issue(issue_id, issue_title, authors_id, info_id)
VALUES(2, 'A+X (2012) #17', 2 , 2);
INSERT INTO Issue(issue_id, issue_title, authors_id, info_id)
VALUES(3, 'Alias (2001) #28', 3 , 3);
INSERT INTO Issue(issue_id, issue_title, authors_id, info_id)
VALUES(4, 'Aliens: Afternath (2021) #1', 4 , 4);

--Info
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(0, 'A Year of Marvels: April Infinity Comic (2016)', '(2016)' , 'April 01, 2016', 'The Infinite Comic that will have everyone talking!...', 'Infinite Comic', 'Rated T+', 0);
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(1, 'A Year of Marvels: August Infinity Comic (2016)', '(2016)' , 'August 10, 2016', 'Its August, and Nick Fury us just time to attend ...', 'Infinite Comic', 'None', 0);
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(2, 'A+X (2012-2014)', '(2012-2014)' , 'Februaru 19, 2014', 'SPIDER-MAN + PSYLOCKE= a heart breaking story...', 'Comic', 'Rated T', 3.99 );
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(3, 'Alias (2001-2003)', '(2001-2003)' , 'November 05, 2003', NULL , 'Comic', 'Max', 0);
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(4, 'Aliens: Afternath (2021)', '(2021)', 'June 14, 2021', 'FOR ALIENS` 35TH ANNIVERSARY, A RETURN...', 'Comic', 'Parental Advisory', 4.99);
