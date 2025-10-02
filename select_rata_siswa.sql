INSERT INTO "select siswa.nama, AVG(nilai.nilai) as rata_nilai
from siswa
join nilai on siswa.id = nilai.siswa_id
group by siswa.nama" (nama,rata_nilai) VALUES
	 ('Andi',87.5000000000000000),
	 ('Putra',81.5000000000000000),
	 ('Rika',88.0000000000000000),
	 ('Budi',85.0000000000000000),
	 ('Nadia',87.5000000000000000);
