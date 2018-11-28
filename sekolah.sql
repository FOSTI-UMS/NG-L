-- Database

-- DDL = DATA DEFINITION LANGUAGE
-- DML = DATA MANIPULATION LANGUAGE
-- DCL = DATA CONTROL LANGUAGE	

-- dbms = database management system

-- Structure:

-- dbms(
-- 	Database(
-- 		table1(
-- 			column1(
-- 				data1
-- 				data2
-- 				data3
-- 			)
-- 			column2(
-- 				data1
-- 				data2
-- 				data3
-- 			)
-- 		)
-- 		table2(
-- 			column1(
-- 				data1
-- 				data2
-- 			)
-- 			column2(
-- 				data1
-- 				data2
-- 			)
-- 		)
-- 	)
-- )

-- Data type:

-- varchar = string
-- integer = int


-- DDL:

create database sekolah; -- create database
use sekolah; -- enter database 'sekolah'
drop database sekolah -- delete database 'sekolah'

create table siswa(
	no int(10) primary key auto_increment,
	nama varchar(255),
	tempat varchar(255),
	kelas char(1)
);

--		create table like below named 'siswa'
--		-----------------------------------
--		| no |  nama  |  tempat  | kelas  |
--		-----------------------------------
--		|	 |		  |			 |		  |
--		|	 |		  |			 |		  |
--		|	 |		  |			 |		  |
--		|	 |		  |			 |		  |
--		|	 |		  |			 |		  |
--		|	 |		  |			 |		  |
--		------------------------------------



create table blog(
	no int(10) primary key auto_increment,
	judul varchar(255),
	isi text
);

--		create table like below named 'blog'
--		--------------------------
--		| no |  judul |   isi    | 
--		--------------------------
--		|	 |		  |			 |
--		|	 |		  |			 |
--		|	 |		  |			 |
--		|	 |		  |			 |
--		|	 |		  |			 |
--		|	 |		  |			 |
--		--------------------------



alter table blog change column isi konten text; -- rename column name
alter table blog modify no int(100); 			-- modify column structure
alter table blog drop konten;					-- delete column
alter table blog add konten text;				-- add new column

drop table blog;								-- delete column





-- DML:

-- 'insert' use for insert data into table
insert
	masukan kedalam nama tempat kelas -> kukuh kuvukiland x
	insert into siswa(nama, tempat, kelas)
	values('kukuh', 'kuvukilnad', 'x');
	insert into siswa(nama, tempat, kelas)
	values
	('bintang', 'pluto', 'b'),
	('heppi', 'solo', 'a'),
	('uceng', 'karanglawas', 'b'),
	('ketum', 'heea', 'a');

-- 'select' use for show data of the table
select
	tampilkan isi siswa 
	select * from siswa;
	tampilkan isi siswa semua column yang kelasnya b
	select * from siswa where kelas='b';
	tampilkan isi siswa semua column yang namanya uceng
	select * from siswa where no=4;

	select * from siswa where nama like '%ng%';

	select * from siswa where tempat != 'karanglawas';

	-- Pengurutan
	select * from siswa order by no desc;

-- 'update' use for edit data on the table
update
	ganti data dari siswa dimana nama = uceng menjadi luthfi
	update siswa set nama="Lutfi", kelas='p'
	where no=4; -- edit more than one column

	-- Edit data from table siswa which has kelas a
	update siswa set kelas='x' where kelas ='a';

-- 'delete' use for delete data from table
delete
	hapus dari siswa yang no nya 5
	delete from siswa where no=5;