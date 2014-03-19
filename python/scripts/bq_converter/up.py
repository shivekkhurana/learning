import sqlite3

connection = sqlite3.connect("Quotes.sqlite")
cursor = connection.cursor()

cursor.execute("""
		create table Quote(
		  _id  integer primary key  AUTOINCREMENT,
		  category varchar(255) not null,
		  text varchar(255) not null unique,
		  author varchar(255) not null,
		  hex_color varchar(255) not null,
		  read integer,
		  favorite integer
		);
	""")

cursor.execute("""
	CREATE TABLE "android_metadata" ("locale" TEXT DEFAULT 'en_US')
	""")

cursor.execute("""
	INSERT INTO "android_metadata" VALUES ('en_US')
	""")

connection.commit()
connection.close()