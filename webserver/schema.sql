PRAGMA foreign_keys = ON;

CREATE TABLE folders(
	ID INTEGER NOT NULL,
	name VARCHAR(40) NOT NULL,
	parentName VARCHAR(40) NOT NULL,
	favorited INTEGER,
	static integer,
	PRIMARY KEY(ID),
	CONSTRAINT foldernames UNIQUE(name),
	FOREIGN KEY(parentName) REFERENCES folders(name) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
);

CREATE TABLE applications(
	ID INTEGER NOT NULL,
	name VARCHAR(40) NOT NULL,
	folderName VARCHAR(40) NOT NULL,
	description VARCHAR(1024),
	favorited INTEGER,
	CONSTRAINT appnames UNIQUE(name),
	PRIMARY KEY(ID),
	FOREIGN KEY(folderName) REFERENCES folders(name)
);
