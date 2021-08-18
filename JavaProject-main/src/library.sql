BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "admins" (
	"ID"	INTEGER NOT NULL,
	"USER_NAME"	VARCHAR(45) NOT NULL,
	"PASSWORD"	VARCHAR(45) NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "movies" (
	"ID"	INTEGER NOT NULL,
	"MOVIE_NAME"	VARCHAR(45) NOT NULL,
	"ACTOR_NAME"	VARCHAR(45) NOT NULL,
	"DIRECTOR_NAME"	VARCHAR(45) NOT NULL,
	"IMDBSCORE"	VARCHAR(45) NOT NULL,
	"TYPE"	VARCHAR(45) NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "borrowmovie" (
	"ID"	INTEGER NOT NULL,
	"MOVIE_NAME"	VARCHAR(100) NOT NULL,
	"ACTOR_NAME"	VARCHAR(100) NOT NULL,
	"DIRECTOR_NAME"	VARCHAR(100) NOT NULL,
	"IMDBSCORE"	VARCHAR(10) NOT NULL,
	"TYPE"	VARCHAR(50) NOT NULL,
	"USER_NAME"	VARCHAR(100) NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "users" (
	"ID"	INTEGER NOT NULL,
	"NAME"	VARCHAR(100) NOT NULL,
	"SURNAME"	VARCHAR(100) NOT NULL,
	"USERNAME"	VARCHAR(10) NOT NULL,
	"PASSWORD"	VARCHAR(50) NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
INSERT INTO "admins" VALUES (1,'Admin','123456');
INSERT INTO "movies" VALUES (1,'Esaretin Bedeli','Tim Robbins, Morgan Freeman, William Sadler','Frank Darabont','9,3','Dram');
INSERT INTO "movies" VALUES (2,'Kara Şövalye','Christian Bale, Heath Ledger, Aaron Eckhart','Christopher Nolan','9','Aksiyon');
INSERT INTO "movies" VALUES (3,'Baba','Brad Pitt, Edward Norton, Meat Loaf','Francis Ford Coppola','9,2','Suç');
INSERT INTO "movies" VALUES (4,'Dövüş Kulübü','Tim Robbins, Morgan Freeman, William Sadler','David Fincher','8,8','Dram');
INSERT INTO "movies" VALUES (5,'Yüzüklerin Efendisi: Kralın Dönüşü','Elijah Wood, Viggo Mortensen, Ian McKellen',' Peter Jackson','8,9','Macera');
INSERT INTO "movies" VALUES (6,'Yüzüklerin Efendisi: Yüzük Kardeşliği ','Elijah Wood, Ian McKellen, Orlando Bloom','Peter Jackson','8,8','Macera');
INSERT INTO "movies" VALUES (7,'Başlangıç','Leonardo DiCaprio, Elliot Page, Ken Watanabe','Christopher Nolan','8,8','Aksiyon');
INSERT INTO "movies" VALUES (8,'Forrest Gump','Tom Hanks, Robin Wright, Gary Sinise','Robert Zemeckis ','8,8','Dram');
INSERT INTO "movies" VALUES (9,'Yıldızlararası','Matthew McConaughey, Anne Hathaway, Jessica Chastain','Christopher Nolan','8,6','Bilimkurgu');
INSERT INTO "movies" VALUES (10,'Prestij','Christian Bale, Hugh Jackman, Scarlett Johansson','Christopher Nolan','8,5','Bilimkurgu');
INSERT INTO "movies" VALUES (11,'Yıldız Savaşları: İmparator','Mark Hamill, Harrison Ford, Carrie Fisher','Irvin Kershner','8,7','Fantastik');
INSERT INTO "movies" VALUES (12,'Matrix','Keanu Reeves, Laurence Fishburne, Hugo Weaving','Lana Wachowski','8,7','Bilimkurgu');
INSERT INTO "movies" VALUES (13,'Kuzuların Sessizliği',' Jodie Foster, Anthony Hopkins, Kasi Lemmons','Jonathan Demme','8,6','Suç');
INSERT INTO "movies" VALUES (14,'Piyanist','Adrien Brody, Thomas Kretschmann, Emilia Fox','Roman Polanski','8,5','Dram');
INSERT INTO "movies" VALUES (15,'Harry Potter ve Ölüm Yadigârları','Daniel Radcliffe, Emma Watson, Rupert Grint','David Yates','8,1','Fantastik');
INSERT INTO "movies" VALUES (16,'Karayıp Korsanları: Siyah inci nin Laneti','Johnny Depp, Geoffrey Rush, Orlando Bloom','Gore Verbinski','8','Macera');
INSERT INTO "movies" VALUES (17,'Yenilmezler','Robert Downey Jr., Chris Evans, Scarlett Johansson','Joss Whedon','8','Bilimkurgu');
INSERT INTO "movies" VALUES (18,'Truman Show','Jim Carrey, Ed Harris, Laura Linney','Peter Weir','8,1','Komedi');
INSERT INTO "movies" VALUES (19,'Yukarı Bak','Edward Asner, Jordan Nagai, John Ratzenberger','Pete Docter','8,2','Komedi');
INSERT INTO "movies" VALUES (20,'Hobbit: Beklenmedik Yolculuk','Martin Freeman, Ian McKellen, Richard Armitage','Peter Jackson','8','Fantastik');
INSERT INTO "users" VALUES (2,'Merve','Sun','mervesun','12345');
COMMIT;
