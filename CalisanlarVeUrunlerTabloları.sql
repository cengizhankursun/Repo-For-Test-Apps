create table Calisanlar(

CalisanID Int Identity(1,1) Primary Key,
Ad varchar(50),
Soyad varchar(50),
Departman varchar(50),
Maas int);



create table Urunler (
UrunID Int Identity(1,1) Primary Key,
UrunAd varchar(100),
Fiyat decimal(10,2),
Kategori varchar(50),
StokMiktari int);


Insert Into Calisanlar (Ad,Soyad,Departman,Maas)
	values ('Ahmet','Demir','Muhasebe',12000),
		   ('Ayþe','Yýlmaz','Ýnsan Kaynaklarý',15000),
		   ('Mehmet','Kaya','IT',18000),
		   ('Fatma','Çelik','IT',16000),
		   ('Emre','Yýldýz','Muhasebe',14000),
		   ('Merve','Aksoy','Ýnsan Kaynaklarý',17000)

		   select * from Calisanlar

		  


select * from Calisanlar
where Maas >=15000



Insert Into Urunler(UrunAd,Fiyat,Kategori,StokMiktari)
	values ('Bilgisayar',5000.00,'Elektronik',50),
		   ('Telefon', 3000.00,'Elektronik',100),
		   ('Masa',1500.00,'Mobilya',20),
		   ('Sandalye',500.00,'Mobilya',100),
		   ('Kalem',10.00,'Kýrtasiye',500),
		   ('Defter',15.00,'Kýrtasiye',300)

		   select * from Urunler


delete from Urunler
where StokMiktari < 50



update Calisanlar
set Maas = Maas * 1.10
where Departman = 'IT'



Insert Into Calisanlar (Ad,Soyad,Departman,Maas)
	values ('Mustafa','Þahin','Satýþ',12000)


Insert Into Urunler(UrunAd,Fiyat,Kategori,StokMiktari)
	values ('Tablet',2500.00,'Elektronik',60)

select * from Calisanlar

select * from Calisanlar

order by Maas DESC

select * from Calisanlar
where Departman in ('Muhasebe')

select * from Calisanlar
where Soyad in ('Yýlmaz')

select UrunAd,Fiyat
from Urunler
order by Fiyat DESC

select * from Urunler
where Kategori in ('Elektronik')

select * from Urunler
where StokMiktari >100

select Departman,AVG(Maas) as OrtalamaMaas
from Calisanlar
group by Departman

select Kategori,SUM(StokMiktari) as ToplamStok
from Urunler
group by Kategori

select UrunAd,Fiyat
from Urunler
where Fiyat > 1000

select SUM(Fiyat) as ToplamFiyat
from Urunler
where Fiyat >1000

select Kategori, COUNT(UrunAd) as ToplamUrun,AVG(Fiyat) as OrtalamaFiyat
from Urunler
where StokMiktari > 50
group by Kategori

select Departman,AVG(Maas) as OrtalamaMaas
from Calisanlar
group by Departman
having AVG(Maas) > 16000

select Departman,SUM(Maas) as ToplamMaas
from Calisanlar
group by Departman
having SUM(Maas) > 30000

select * from Calisanlar
where Ad like 'A%'

select * from Urunler
where Kategori in ('Elektronik','Mobilya')

select * from Urunler
where UrunAd like '%M'

select * from Urunler
where Fiyat in (1000.00,1500.00,2500.00)