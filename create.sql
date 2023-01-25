CREATE TABLE Authors
(
	authors_id       INT       NOT NULL,
	writer  char(20)	NULL,
	penciler    char(20)	NULL,
	cover_artist	char(20)	NULL,
	imprint		char(50)	NULL
);

CREATE TABLE Issue
(
	issue_id	INT		NOT NULL,
	issue_title		char(100)	NULL,
	authors_id       INT       NOT NULL,
	info_id       INT       NOT NULL
);

CREATE TABLE Info
(
	info_id		INT  NOT NULL,
	comic_name		char(50)	NULL,
	active_years	char(20)	NULL,
	publish_date	char(20)	NULL,
	issue_description	char(100)	NULL,
	format		char(20)	NULL,
	rating		char(20)	NULL,
	price		float	NULL
);

ALTER TABLE Authors ADD PRIMARY KEY (authors_id);
ALTER TABLE Issue ADD PRIMARY KEY (issue_id);
ALTER TABLE Info ADD PRIMARY KEY (info_id);

ALTER TABLE Issue ADD CONSTRAINT FK_Issue_Authors FOREIGN KEY (authors_id) REFERENCES Authors (authors_id);
ALTER TABLE Issue ADD CONSTRAINT FK_Issue_Info FOREIGN KEY (info_id) REFERENCES Info (info_id);
