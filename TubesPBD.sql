DROP TABLE NILAI;
DROP TABLE ASPRAK;
DROP TABLE PROFILE;
DROP TABLE PRAKTIKAN;
DROP TABLE PRAKTIKUM;

CREATE TABLE PRAKTIKAN
(
	NIMPraktikan	VARCHAR2(15) PRIMARY KEY NOT NULL,
	Nama	        VARCHAR2(30) NOT NULL,
	Kelas	        VARCHAR2(30) NOT NULL
);

CREATE TABLE PRAKTIKUM
(
	idPraktikum 	VARCHAR2(15) PRIMARY KEY NOT NULL,
	MataKuliah		VARCHAR2(100),
	Waktu		    DATE,
	Modul			VARCHAR2(20)		
);

CREATE TABLE PROFILE
(
	NIM			VARCHAR2(15) PRIMARY KEY NOT NULL,
	Nama		VARCHAR2(30) NOT NULL,
	TTL      	DATE,
    Agama		VARCHAR2(10),
	Gender		VARCHAR2(15),
	Alamat 		VARCHAR2(50)
);

CREATE TABLE ASPRAK
(
	idAsprak 	VARCHAR2(15) PRIMARY KEY NOT NULL,
	Nama		VARCHAR2(30) NOT NULL,
	NIM			VARCHAR2(15),
	password	VARCHAR2(30),
    FOREIGN KEY (NIM) REFERENCES PROFILE(NIM)
);

CREATE TABLE NILAI
(
	idNilai			VARCHAR2(15) PRIMARY KEY NOT NULL,
    idPraktikum     VARCHAR2(15),
    idAsprak        VARCHAR2(15),
    nimPraktikan    VARCHAR2(15),
	testAwal		VARCHAR2(20),
	jurnal			VARCHAR2(20),
	testAKhir		VARCHAR2(20),
	skill			VARCHAR2(20),
    FOREIGN KEY(nimPraktikan) REFERENCES PRAKTIKAN(nimPraktikan),
    FOREIGN KEY(idPraktikum) REFERENCES PRAKTIKUM(idPraktikum),
    FOREIGN KEY(idAsprak) REFERENCES Asprak(idAsprak)
);

INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301182801', 'Brian Fauzi', 'IF-42-03');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301183202', 'Inggrid Benita', 'IF-42-03');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301196403', 'Salsabila Putri', 'IF-43-03');   
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301194404', 'Hussain', 'IF-43-10');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301194505', 'Anis Novitasari', 'IF-42-03');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301183506', 'Saskia Putri', 'IF-42-03');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301181234', 'Edgar Vigo', 'IF-42-02');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301194407', 'Putri Ester', 'IF-42-03');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301162308', 'Hafshah Haudli', 'IF-42-02');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('130116209', 'Ridha Novia', 'IF-42-03');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301192110', 'Anisya Hayati', 'IF-42-04');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301172011', 'Indira Halimah', 'IF-42-04');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301192912', 'Indra Wahyudi', 'IF-43-04');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301161813', 'Dwiantara Mahardhika', 'IF-42-02');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301181714', 'Hafidz Lazuardi', 'IF-42-12');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301181615', 'Priyoga Aditya', 'IF-42-10');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301161516', 'Gennal Alfarizi', 'IF-40-10');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301161318', 'Vanesha Alatas', 'IF-40-05');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301181219', 'Monica Arya', 'IF-42-01');
INSERT INTO Praktikan(NIMPraktikan, Nama, Kelas) VALUES('1301181120', 'Citra Bella', 'IF-42-05');

INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171147', 'Shahnaz Nur', '22-AUG-1999', 'Islam', 'Perempuan', 'Pesona Bali Residence Blok C6');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171144', 'Ciara Nurdenara', '14-FEB-1999', 'Islam', 'Perempuan', 'Pesona Bali Residence Blok C6');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171125', 'Nadhia Salsabila', '8-SEP-1999', 'Islam', 'Perempuan', 'Jl. Mengger No.168, Sukapura');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171141', 'Nurul Dian', '2-SEP-1999', 'Islam', 'Perempuan', 'Jl. Mangga Dua No.98, Sukapura,');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301161145', 'Fauzan Firdaus', '17-NOV-1998', 'Islam', 'Laki-Laki', 'Komplek Griya Bandung Asri II');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301161134', 'Ferdian Yulianto', '17-DEC-1998', 'Islam', 'Laki-Laki', 'Jl. Sukabirus No.66, Citeureup');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301161159', 'Hilman Abdan', '23-SEP-1998', 'Islam', 'Laki-Laki', 'Jl. Suhodo No.14');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171158', 'Ilham Rizki', '5-MAY-2000', 'Islam', 'Laki-Laki', 'Jl. Batununggal Mulia No.15');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171121', 'Bimo Satrio', '17-NOV-1998', 'Islam', 'Laki-Laki', 'Jl. Imam Bonjol 276,Pemecutan Klod');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171122', 'Devi Ayu', '17-NOV-2000', 'Islam', 'Perempuan', 'Jl. Timor 25 Wisma Geha');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171123', 'Dimas Prasetyo', '21-DEC-1998', 'Islam', 'Laki-Laki', 'Jl. Raya Bojongsoang 105');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171124', 'Danil Muis', '13-MAY-1999', 'Islam', 'Laki-Laki', 'JL. Asia Afrika No. 116');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171142', 'Nadha Salsabilla', '8-JUL-1999', 'Islam', 'Perempuan', 'JL. Burangrang No. 35 A');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171126', 'Panji Bagaskara', '29-JUL-1998', 'Islam', 'Laki-Laki', 'JL. Pajajaran No. 39');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171127', 'Rayhan Muhammad', '18-AUG-1998', 'Islam', 'Laki-Laki', 'JL. Kh. Hasan Mustofa No. 80');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171128', 'Rista Aryantiwi', '15-MAY-1999', 'Islam', 'Perempuan', 'JL. Buah Batu No.46');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171129', 'Adika Muhammad', '15-DEC-1998', 'Islam', 'Laki-Laki', 'JL. Buah Batu No.45');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171130', 'Adriansyah Dwi', '1-NOV-1998', 'Islam', 'Laki-Laki', 'Jl. Suhodo No.2');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171131', 'Alkea Harry', '1-DEC-1998', 'Islam', 'Laki-Laki', 'Jl. Mengger No.15, Sukapura');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171132', 'Ardhika Nofardiansa', '2-AUG-1998', 'Islam', 'Laki-Laki', 'JL. Karapitan 141');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171133', 'Arya Wahyu', '2-FEB-1999', 'Islam', 'Laki-Laki', 'PBB Blok A-14');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171135', 'Hasna Haifa', '3-FEB-1999', 'Islam', 'Perempuan', 'Jl. Jend A Yani 262');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171136', 'Ikhsan Ramadhan', '13-JUN-1999', 'Islam', 'Laki-Laki', 'Jl. Terusan Buahbatu');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171137', 'Ilham Wahyu', '13-DEC-1999', 'Islam', 'Laki-Laki', 'PBB Blok H-9');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171138', 'Shinta Surya', '27-JAN-1999', 'Islam', 'Perempuan', 'Jl. Pajajaran No. 39');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171139', 'Savira Anggita', '4-NOV-2000', 'Islam', 'Perempuan', 'Jl. Veteran 34B');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171140', 'Rochi Eko', '10-JAN-1999', 'Islam', 'Laki-Laki', 'JL. Cihampelas No. 56 B');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171143', 'Annisa Aisyha', '22-JAN-2000', 'Islam', 'Perempuan', 'PBB Blok A-3');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171146', 'Irawansyah', '2-NOV-1999', 'Islam', 'Laki-Laki', 'JL. Cihampelas No. 12 B');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171148', 'Tri Jaka', '6-DEC-1998', 'Islam', 'Laki-Laki', 'Pesona Bali Residence Blok B7');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171149', 'Yulius Serva', '15-FEB-1999', 'Islam', 'Laki-Laki', 'JL Wastukancana No.7');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301161150', 'Pratama Yoga', '19-NOV-1999', 'Islam', 'Laki-Laki', 'Jl. Jenderal Sudirman 405');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301161151', 'Muhammad Shabri', '24-AUG-2000', 'Islam', 'Laki-Laki', 'PBB Blok D-14');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301161152', 'Muhammad Mukhtiar', '24-SEP-2000', 'Islam', 'Laki-Laki', 'Komplek Griya Bandung Asri II');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301161153', 'Muhammad Diaz', '16-OCT-1998', 'Islam', 'Laki-Laki', 'Jl. Joko No 19');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171154', 'Mochammad Naufal', '13-OCT-1998', 'Islam', 'Laki-Laki', 'Jl. Merdeka No 144');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171155', 'Reza Prawira', '23-SEP-1998', 'Islam', 'Laki-Laki', 'Jl. Ratna No 33');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171156', 'Ivan Mulya', '2-SEP-1998', 'Islam', 'Laki-Laki', 'Jl. Merdeka No 111');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301171157', 'Irfan Nugraha', '18-JUL-1998', 'Islam', 'Laki-Laki', 'PBB Blok C-7');
INSERT INTO Profile(NIM, Nama, TTL, Agama, Gender, Alamat) VALUES('1301161160', 'Ghazi Ahmad', '7-JUN-1998', 'Islam', 'Laki-Laki', 'Pesona Bali Residence Blok A2');

INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('BIM', '1301171121', 'Bimo Satrio', 'satrio123');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('DAP', '1301171122', 'Devi Ayu', 'ayudwi345');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('DPA', '1301171123', 'Dimas Prasetyo', 'dimaspraset');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('DAN', '1301171124', 'Danil Muis', 'danimuis01');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('NSA', '1301171125', 'Nadhia Salsabila', 'nadnad111');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('NJI', '1301171126', 'Panji Bagaskara', 'panji1123');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('RMA', '1301171127', 'Rayhan Muhammad', 'rayhan1345');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('RIS', '1301171128', 'Rista Aryantiwi', 'rista14522');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('ADI', '1301171129', 'Adika Muhammad', 'RMA1233');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('ADR', '1301171130', 'Adriansyah Dwi', '1301171130');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('AHM', '1301171131', 'Alkea Harry', '1301171131');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('NOF', '1301171132', 'Ardhika Nofardiansa', '1301171132');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('AWY', '1301171133', 'Arya Wahyu', '1301171133');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('HHZ', '1301171135', 'Hasna Haifa', '1301171135');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('IRB', '1301171136', 'Ikhsan Ramadhan', '1301171136');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('IWA', '1301171137', 'Ilham Wahyu', '1301171137');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('SSU', '1301171138', 'Shinta Surya', '1301171138');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('SAS', '1301171139', 'Savira Anggita', '1301171139');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('REP', '1301171140', 'Rochi Eko', '1301171140');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('AAM', '1301171143', 'Annisa Aisyha', '1301171143');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('IRA', '1301171146', 'Irawansyah', '1301171146');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('TJP', '1301171148', 'Tri Jaka', '1301171148');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('YSL', '1301171149', 'Yulius Serva', '1301171149');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('PYS', '1301161150', 'Pratama Yoga', 'tamatama');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('MSM', '1301161151', 'Muhammad Shabri', 'shabri12');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('MMP', '1301161152', 'Muhammad Mukhtiar', 'mukhtiar01');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('MDR', '1301161153', 'Muhammad Diaz', 'MDR1234');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('MNR', '1301171154', 'Mochammad Naufal', 'Naufal15');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('RZP', '1301171155', 'Reza Prawira', 'rezaprawira12');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('IMS', '1301171156', 'Ivan Mulya', 'ivan123456789');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('NUG', '1301171157', 'Irfan Nugraha', '123456789');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('GAF', '1301161160', 'Ghazi Ahmad', 'GAF452345');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('CIA', '1301171144', 'Ciara Nurdenara', '1301171144');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('IRJ', '1301171158', 'Ilham Rizki', 'ilhamIRJ17182');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('ABD', '1301161159', 'Hilman Abdan', '1234ABD');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('FRD', '1301161134', 'Ferdian Yulianto', '1301161134');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('FAU', '1301161145', 'Fauzan Firdaus', '1301161145');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('SNA', '1301171147', 'Shahnaz Nur', '1301171147');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('NSS', '1301171142', 'Nadha Salsabilla', '1301171142');
INSERT INTO Asprak(idAsprak, NIM, Nama, Password) VALUES('NDK', '1301171141', 'Nurul Dian', '1301171141');


INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('DAP001', 'Dasar Algoritma dan Pemrograman', '12-NOV-2019', 1);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('DAP002', 'Dasar Algoritma dan Pemrograman', '11-NOV-2019', 2);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('DAP003', 'Dasar Algoritma dan Pemrograman', '03-OCT-2019', 3);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('STD004', 'Struktur Data', '02-SEP-2019', 4);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('STD005', 'Struktur Data', '04-SEP-2019', 5);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('STD006', 'Struktur Data', '09-DEC-2019', 6);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('PBD007', 'Pemodelan Basis Data', '12-DEC-2019', 7);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('PBD008', 'Pemodelan Basis Data', '04-SEP-2019', 8);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('PBD009', 'Pemodelan Basis Data', '28-MAY-2019', 9);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('PBO010', 'Pemrograman Berorientasi Obyek A', '01-DEC-2019', 10);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('PBO001', 'Pemrograman Berorientasi Obyek A', '04-NOV-2019', 1);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('PBO002', 'Pemrograman Berorientasi Obyek A', '11-NOV-2019', 2);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('JRK003', 'Jaringan Komputer', '12-DEC-2019', 3);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('JRK004', 'Jaringan Komputer', '04-SEP-2019', 4);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('JRK005', 'Jaringan Komputer', '11-NOV-2019', 5);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('BSD006', 'Basis Data', '28-MAY-2019', 6);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('BSD007', 'Basis Data', '12-DEC-2019', 7);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('BSD008', 'Basis Data', '11-NOV-2019', 8);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('SOP009', 'Sistem Operasi', '04-SEP-2019', 9);
INSERT INTO Praktikum(idPraktikum, MataKuliah, Waktu, Modul) VALUES('SOP010', 'Sistem Operasi', '28-MAY-2019', 10);

															
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N100', 'BIM', '1301196403', 'DAP001', 20, 60, 20, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N101', 'DAP', '1301196403', 'DAP002', 12, 15, 19, 18);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N102', 'SNA', '1301194505', 'DAP003', 10, 12, 13, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N103', 'DAN', '1301194407', 'DAP003', 16, 10, 20, 13);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N104', 'NSA', '1301183202', 'PBO010', 10, 60, 13, 10);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N105', 'NJI', '1301181120', 'STD006', 19, 12, 13, 10);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N106', 'SNA', '1301181615', 'PBD007', 19, 12, 19, 13);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N107', 'SNA', '1301181615', 'PBD008', 18, 58, 11, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N108', 'ADI', '1301192110', 'PBD009', 13, 12, 20, 13);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N109', 'ADR', '1301183506', 'PBO010', 14, 60, 13, 18);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N110', 'AHM', '1301183506', 'PBO001', 15, 12, 19, 13);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N111', 'NOF', '1301183506', 'PBO002', 16, 48, 20, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N112', 'AWY', '1301172011', 'JRK003', 17, 12, 13, 19);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N113', 'HHZ', '1301194407', 'JRK004', 18, 58, 20, 18);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N114', 'IRB', '1301194505', 'JRK005', 19, 12, 19, 11);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N115', 'IWA', '1301172011', 'BSD006', 20, 60, 13, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N116', 'SSU', '1301172011', 'BSD007', 20, 44, 18, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N117', 'SAS', '1301161516', 'BSD008', 19, 23, 19, 10);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N118', 'REP', '1301161516', 'SOP009', 12, 34, 10, 13);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N119', 'AAM', '1301162308', 'SOP010', 13, 55, 13, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N120', 'IRA', '1301192110', 'DAP001', 14, 12, 11, 13);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N121', 'IWA', '1301192110', 'DAP002', 15, 60, 20, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N122', 'IWA', '1301192912', 'DAP003', 16, 60, 20, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N123', 'PYS', '1301183506', 'STD004', 17, 12, 19, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N124', 'MSM', '1301192912', 'STD005', 18, 60, 13, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N125', 'MMP', '1301181714', 'STD006', 19, 54, 18, 13);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N126', 'MDR', '1301181714', 'PBD007', 20, 60, 19, 14);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N127', 'MNR', '1301181120', 'PBD008', 11, 60, 13, 13);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N128', 'RZP', '1301181615', 'PBD009', 12, 47, 14, 15);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N129', 'IMS', '1301194505', 'PBO010', 13, 57, 15, 16);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N130', 'NUG', '1301181219', 'PBO001', 14, 60, 20, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N131', 'GAF', '1301181219', 'PBO002', 15, 40, 13, 18);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N132', 'CIA', '1301181120', 'STD004', 16, 20, 13, 19);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N133', 'IRJ', '1301161813', 'JRK004', 17, 34, 20, 10);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N134', 'ABD', '1301161516', 'JRK005', 18, 36, 13, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N135', 'FRD', '1301161318', 'BSD006', 19, 39, 13, 14);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N136', 'FAU', '1301161318', 'BSD007', 20, 40, 20, 20);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N137', 'SNA', '1301161813', 'BSD008', 10, 42, 13, 13);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N138', 'IWA', '1301161813', 'SOP009', 11, 46, 20, 14);
INSERT INTO Nilai(idNilai, idAsprak, NIMPraktikan, idPraktikum, testAwal, Jurnal, testAkhir, skill) VALUES('N139', 'NDK', '1301161318', 'SOP010', 12, 48, 20, 15);


/*Query*/
/*1. Query Menampilkan Nama,NIMPraktikan dan Total Nilai beserta IDPraktikum Yang Dinilai oleh ASPRAK dengan Kode SNA */
SELECT NAMA, Nilai.NIMPraktikan, idPraktikum, idAsprak, SUM(testAwal+Jurnal+testAkhir+skill) AS TOTAL_NILAI
FROM Nilai
JOIN PRAKTIKAN ON Nilai.NIMPraktikan = Praktikan.NIMPraktikan
WHERE idAsprak = 'SNA'
GROUP BY NAMA, Nilai.NIMPraktikan, idPraktikum, idAsprak;

/*2. Query Menampilkan idPraktikum, idAsprak dan Nama Praktikan yang Memiliki Total Nilai Lebih dari 100*/
SELECT NAMA, idPraktikum, idAsprak, SUM(testAwal+Jurnal+testAkhir+skill) AS TOTAL_NILAI
FROM Nilai
JOIN PRAKTIKAN ON Nilai.NIMPraktikan = Praktikan.NIMPraktikan
GROUP BY NAMA, idPraktikum, idAsprak
HAVING SUM(testAwal+Jurnal+testAkhir+skill) > 100;

/*3. Query Menampilkan Data Asprak yang mempunyai password sama dengan NIMnya */
SELECT NAMA, NIM, IdAsprak, Gender 
FROM ASPRAK
NATURAL JOIN PROFILE
WHERE Password = NIM;

/*4. Query Menampilkan Nama Praktikan, Kode Asprak, dan ID Praktikum yang mempunyai nilai pada mata kuliah Struktur Data*/
SELECT NAMA, idAsprak, idPraktikum, SUM(testAwal+Jurnal+testAkhir+skill) AS TOTAL_NILAI
FROM NILAI
JOIN PRAKTIKAN USING (NIMPraktikan)
JOIN PRAKTIKUM USING (idPraktikum)
WHERE idPraktikum in (SELECT idPraktikum FROM PRAKTIKUM
                      WHERE MataKuliah = 'Struktur Data')
GROUP BY NAMA, idAsprak, idPraktikum;

/*5. Query Menampilkan Nilai TesAkhir dan Asprak Dari Praktikan Modul 5 atau Modul 10 Seluruh Mata Kuliah */
SELECT PRAKTIKAN.NAMA "Nama Praktikan", idPraktikum ,ASPRAK.NAMA "NAMA ASPRAK", TestAkhir
FROM NILAI
JOIN PRAKTIKAN USING (NIMPraktikan)
JOIN ASPRAK USING (idAsprak)
JOIN PRAKTIKUM USING (idPraktikum)
WHERE modul = 5 or modul = 10;

/*6. Query Menampilkan Asprak yang sudah menilai praktikan lebih dari 2 kali*/
SELECT NAMA , idAsprak, COUNT(idAsprak)
FROM NILAI
JOIN ASPRAK USING (idAsprak)
GROUP BY NAMA, idAsprak
HAVING COUNT(idAsprak) > 2;

/*7. Query Menampilkan Praktikan yang dinilai oleh Asprak Perempuan */
SELECT PRAKTIKAN.NAMA "Nama Praktikan", idPraktikum ,ASPRAK.NAMA "NAMA ASPRAK"
FROM NILAI
JOIN PRAKTIKAN USING (NIMPraktikan)
JOIN ASPRAK USING (idAsprak)
JOIN PRAKTIKUM USING (idPraktikum)
JOIN PROFILE USING (NIM)
WHERE Gender = 'Perempuan';

/*8. Query Menampilkan Semua Praktikum yang diadakan antara 1 November 2019 sampai 30 Desember 2019*/
SELECT idPraktikum, MataKuliah, Waktu
FROM PRAKTIKUM
WHERE Waktu BETWEEN TO_DATE('1-NOV-2019') AND TO_DATE('30-DEC-2019');

/*9. Query Menampilkan Semua Praktikan Angkatan 2016 (NIM berawalan '130116') Sistem Operasi atau Jaringan Komputer */
SELECT PRAKTIKAN.NAMA, idPraktikum, idAsprak
FROM NILAI
JOIN PRAKTIKAN USING (NIMPraktikan)
JOIN ASPRAK USING (idASprak)
WHERE substr(NIMPraktikan,1,6) = '130116' AND 
      idPraktikum in (SELECT idPraktikum FROM PRAKTIKUM
                      WHERE MataKuliah = 'Sistem Operasi' or MataKuliah = 'Jaringan Komputer');
               
/*10. Query Menampilkan nilai junal dap tebesar dan terkecil*/
SELECT 'Nilai JURNAL DAP Terbesar : ' || MAX(JURNAL) || ' dan Nilai JURNAL DAP Terkecil ' || MIN(JURNAL)
FROM NILAI
JOIN ASPRAK USING (idAsprak)
JOIN PRAKTIKUM USING (idPraktikum)
WHERE MataKuliah = 'Dasar Algoritma dan Pemrograman';



/* COTS */

INSERT INTO PRAKTIKAN(NIMPraktikan, NAMA, KELAS) VALUES ('130120001', 'M. Aldy Saputra','IF-44-03');
SELECT * FROM PRAKTIKAN;

SELECT ASPRAK.NAMA "Nama Asprak", PRAKTIKAN.NAMA "Nama Praktikan", MATAKULIAH, TestAwal, Jurnal, TestAkhir, Skill
FROM NILAI
JOIN ASPRAK USING (IdAsprak)
JOIN PRAKTIKUM USING (idPraktikum)
JOIN PRAKTIKAN USING (NIMPraktikan);

SELECT ASPRAK.NAMA "Nama Asprak", PRAKTIKAN.NAMA "Nama Praktikan", Waktu "Tanggal Praktikum"
FROM NILAI
JOIN ASPRAK USING (idAsprak)
JOIN PRAKTIKUM USING (idPraktikum)
JOIN PRAKTIKAN USING (NIMPraktikan)
WHERE Waktu = '12-DEC-2019';

SELECT MATAKULIAH, COUNT(MATAKULIAH) "JUMLAH"
FROM NILAI
JOIN PRAKTIKUM USING (idPraktikum)
WHERE TestAwal > 10
GROUP BY MATAKULIAH;