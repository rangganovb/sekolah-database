CREATE DATABASE sekolah;
USE sekolah;

-- public.siswa definition

-- Drop table

-- DROP TABLE siswa;

CREATE TABLE siswa (
	id serial4 NOT NULL,
	nama varchar(100) NOT NULL,
	umur int4 NULL,
	jurusan varchar(50) NULL,
	CONSTRAINT siswa_pkey PRIMARY KEY (id)
);

-- public.nilai definition

-- Drop table

-- DROP TABLE nilai;

CREATE TABLE nilai (
	id serial4 NOT NULL,
	siswa_id int4 NOT NULL,
	mata_pelajaran varchar(50) NULL,
	nilai int4 NULL,
	CONSTRAINT nilai_pkey PRIMARY KEY (id)
);

-- public.nilai foreign keys

ALTER TABLE public.nilai ADD CONSTRAINT fk_siswa FOREIGN KEY (siswa_id) REFERENCES siswa(id);

INSERT INTO public.siswa (nama,umur,jurusan) VALUES
	 ('Andi',16,'IPA'),
	 ('Budi',17,'IPS'),
	 ('Rika',16,'IPA'),
	 ('Nadia',16,'IPS'),
	 ('Putra',17,'IPA');

INSERT INTO public.nilai (siswa_id,mata_pelajaran,nilai) VALUES
	 (1,'Matematika',85),
	 (1,'Fisika',90),
	 (2,'Ekonomi',88),
	 (2,'Geografi',82),
	 (3,'Biologi',95),
	 (3,'Matematika',89),
	 (3,'Fisika',80),
	 (4,'Ekonomi',90),
	 (4,'Sosiologi',85),
	 (5,'Biologi',75);
	 (5,'Kimia',88);

     INSERT INTO siswa (nama) VALUES
	 ('Andi'),
	 ('Budi'),
	 ('Rika'),
	 ('Nadia'),
	 ('Putra');

    INSERT INTO siswa (nama) VALUES
	 ('Andi'),
	 ('Rika'),
	 ('Putra');

    INSERT INTO "select siswa.nama, AVG(nilai.nilai) as rata_nilai
    from siswa
    join nilai on siswa.id = nilai.siswa_id
    group by siswa.nama" (nama,rata_nilai) VALUES
	 ('Andi',87.5000000000000000),
	 ('Putra',81.5000000000000000),
	 ('Rika',88.0000000000000000),
	 ('Budi',85.0000000000000000),
	 ('Nadia',87.5000000000000000);

     INSERT INTO public.siswa (nama,umur,jurusan) VALUES
	 ('Andi',16,'IPA'),
	 ('Rika',16,'IPA'),
	 ('Nadia',16,'IPS'),
	 ('Putra',17,'IPA'),
	 ('Budi',17,'IPA');

     INSERT INTO public.nilai (siswa_id,mata_pelajaran,nilai) VALUES
	 (1,'Matematika',85),
	 (1,'Fisika',90),
	 (2,'Ekonomi',88),
	 (2,'Geografi',82),
	 (3,'Biologi',95),
	 (3,'Fisika',80),
	 (4,'Ekonomi',90),
	 (4,'Sosiologi',85),
	 (5,'Biologi',75),
	 (5,'Kimia',88);
