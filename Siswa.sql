/* MENGECEK SERER */
cd xampp\mysql\bin;
> mysql -u root -p;
/* MENAMPILKAN DATABASE */
SHOW DATABASES;
/* MEMBUAT DATABASE */
CREATE DATABASE `11rpl1_db`;
/* MEMBUAT TABLE */
CREATE TABLE `siswa` (
    id_siswa INT(11) PRIMARY KEY AUTO_INCREMENT,
    nis CHAR(10),
    nama_lengkap VARCHAR(255),
    jk CHAR(1),
    tmp_lahir VARCHAR(255),
    tgl_lahir DATE,
    alamat TEXT,
    no_hp CHAR(15),
    tanggal_entri DATETIME
);

SHOW TABLES; 					/* MENAMPILKAN TABLE */

DESCRIBE `siswa`;				/* MENAMPILKAN SPESIFIKASI ATAU STRUKTUR TABLE */

INSERT INTO `siswa` SET 		/* CARA MENAMBAHKAN RECORD KE TABLE */
	id_siswa = NULL,
	nis = '11801532',
	nama_lengkap = 'WINAL MAULIDIN',
	jk = 'L',
	tmp_lahir = 'SUBANG',
	tgl_lahir = '2002-06-10',
	alamat = 'SEMBUNG 2',
	no_hp = '08996334218',
	tanggal_entri = NOW()
;

/* MENAMPILKAN DATA */
SELECT * FROM `siswa`;
/* MENAMPILKAN DATA DENGAN KONDISI TERTENTU */
SELECT * FROM `siswa` WHERE jk='p';
/* CARA MENAMPILKAN BEBERAPA RECORD DATA PADA TABLE*/
SELECT * FROM `siswa` LIMIT 3, 5;
/* CARA MENAMPILKAN DAN MENGURUTKAN RECORD BERDASARKAN FIELD TERTENTU */
SELECT * FROM `siswa` ORDER BY tgl_lahir DESC;
/* CARA MENAMPILKAN FIELD MENGGUNAKAN FUNCTION */
SELECT UPPER('alamat') FROM `siswa`;
/* CARA MENAMPILKAN BEBERAPA FIELD BERDASARKAN KONDISI TERTENTU */
SELECT nama_lengkap,tgl_lahir FROM `siswa` WHERE YEAR(tgl_lahir) = '2002';
/* UPDATE DATA */
UPDATE `siswa` SET tmp_lahir='BANDUNG' WHERE id_siswa='1';
/* CARA MENGHAPUS DATA PADA TABLE */
DELETE FROM `siswa` WHERE id_siswa='1';