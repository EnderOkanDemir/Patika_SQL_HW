-- Birden fazla tablolar ile çalışırken tablolar arasında bir ilişki kurulması gerekir.
-- Bu ilişki Primary Key(PK) ve Foreing Key(FK) ile kurulur.
-- Primary Key (PK) : Satırda bulunan veriyi diğer verilerden ayrıştırmayı sağlar. 
-- 					Benzersiz tanımlayıcıdırlar.
-- 					Asıl veriyi diğer verilerden ayrıştıracak bir identifier dır.
-- 					Bir tabloda sadece bir tane primary key bulunur.
-- Foreign Key(FK): Tablolar arasında köprü oluşturmaya sağlayan aynı isimli ve içerikli kolonlardır.
-- 					Bir tabloda birden fazla foreign key bulunabilir.
-- 					Foreign key colonlarındaki bilgiler tekrar edebilir.
-- Bir tabloda primary key olurken bu kolon başka bir tabloda primary key değildir. Yani foreign key' dir.

CREATE TABLE book
( 
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	page_number INTEGER NOT NULL, 
	author_id INTEGER REFERENCES author(id) 	-- yani author tablosundaki id ile eşitleyeceğiz ve kolonun adı author_id olacak
);


SELECT *
FROM book;




-- PRIMARY KEY FOREIGN-KEY

insert into book (title, page_number, author_id) values ('White Banners', 61, 1);

insert into book (title, page_number, author_id) values ('Saving Shiloh', 580, 10);

insert into book (title, page_number, author_id) values ('Abe Lincoln in Illinois', 105, 6);

insert into book (title, page_number, author_id) values ('Apache Territory', 286, 1);

insert into book (title, page_number, author_id) values ('Out 1: Spectre', 402, 9);

insert into book (title, page_number, author_id) values ('Trials of Muhammed Ali, The', 164, 5);

insert into book (title, page_number, author_id) values ('B.U.S.T.E.D (Everybody Loves Sunshine) (Busted)', 84, 10);

insert into book (title, page_number, author_id) values ('Father Sergius (Otets Sergiy)', 265, 9);

insert into book (title, page_number, author_id) values ('It Started in Naples', 838, 8);

insert into book (title, page_number, author_id) values ('Thirty Seconds Over Tokyo', 586, 1);

insert into book (title, page_number, author_id) values ('Return to Homs, The', 580, 9);

insert into book (title, page_number, author_id) values ('Cutie Honey', 788, 8);

insert into book (title, page_number, author_id) values ('Jackass 3.5', 834, 1);

insert into book (title, page_number, author_id) values ('Baby On Board', 339, 7);

insert into book (title, page_number, author_id) values ('Making Plans for Lena (Non ma fille, tu n''iras pas danser)', 375, 7);


ERROR:  insert or update on table "book" violates foreign key constraint "book_author_id_fkey"
DETAIL:  Key (author_id)=(6) is not present in table "author".
SQL state: 23503

-- Bu hatanın sebebi eşleştirme yapılacak tabloda id sütununda 6 numaralı bir satırın olmamasıdır. Bu sebeple 6 yerine başka bir id numarası girilmelidir.
-- Yani bu kod ile book tablosuna veri eklerken aynı zamanda eklediğimiz bu verilerin author tablosunda kime ait olduğunu bulmamıza yardımcı id değerlerini de ekledik.
-- Daha sonra istersek her iki tabloda da bulunan bu id değerlerinden faydalanarak iki tabloyu birleştirebiliriz veya her iki tablodan da veri çekip gruplayabiliriz.
-- Oluşturduğumuz book tablosundaki author_id, author tablosunun satırlarını referans veriyor.
-- book tablosun daki author_id colonu bizim foreign key imizdir.


SELECT *
FROM book
WHERE author_id = 1;


SELECT *
FROM book
JOIN author 
ON author.id = book.author_id;


"id"	"title"							"page_number"	"author_id"	"id-2"	"first_name"		"last_name"			"email"				"birthday"
4	"White Banners"							62	1		1	"Haruki"		"Murakami"			"haruki@murakami.com"		"1948-11-07"
5	"Saving Shiloh"							580	10		10	"Emrah Safa"		"Gürkan"			"emrah@gurkan.com"		"1980-01-01"
6	"Abe Lincoln in Illinois"					105	3		3	"Orhan"	"Pamuk"		"orhan@pamuk.com"		"1950-04-14"
7	"Apache Territory"						286	1		1	"Haruki"		"Murakami"			"haruki@murakami.com"		"1948-11-07"
8	"Out 1: Spectre"						402	9		9	"Carilyn"		"Roblou"			"croblou3@symantec.com"	
9	"Trials of Muhammed Ali, The"					164	5		5	"Zygmunt"		"Bauman"			"zygmunt@bauman.com"		"1911-07-12"
10	"B.U.S.T.E.D (Everybody Loves Sunshine) (Busted)"		84	10		10	"Emrah Safa"		"Gürkan"			"emrah@gurkan.com"		"1980-01-01"
11	"Father Sergius (Otets Sergiy)"					265	9		9	"Carilyn"		"Roblou"			"croblou3@symantec.com"	
12	"It Started in Naples"						838	8		8	"Conni"	"Fidelus"	"cfidelus2@blogspot.com"	"1976-04-09"
13	"Thirty Seconds Over Tokyo"					586	4		4	"Halide Edip"		"Adıvar"			"halide@edip.com"		"1884-07-11"
14	"Return to Homs, The"						580	9		9	"Carilyn"		"Roblou"			"croblou3@symantec.com"	
15	"Cutie Honey"							788	8		8	"Conni"	"Fidelus"	"cfidelus2@blogspot.com"					"1976-04-09"
16	"Jackass 3.5"							834	1		1	"Haruki"		"Murakami"			"haruki@murakami.com"		"1948-11-07"
17	"Baby On Board"							339	7		7	"Wendeline"		"Yakuntsov"			"wyakuntsov1@bbb.org"		"1944-11-29"
18	"Making Plans for Lena (Non ma fille, tu n'iras pas danser)"	375	7		7	"Wendeline"		"Yakuntsov"			"wyakuntsov1@bbb.org"		"1944-11-29"

-- book ve author tabloları, "author_id" ve "id-2" kolonları üzerinden birleştirildi. Bu kolonlara baktığımızda her iki kolonda da aynı id numaralarının olduğunu görürüz. 



			

