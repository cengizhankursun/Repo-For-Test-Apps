Select 
UrunAd,
Fiyat,
case 
	when Fiyat Between 0 and 50 then 'Uygun'
	when Fiyat Between 51 and 150 then 'Orta'
	when Fiyat >= 151 then 'Pahalý'
	else 'Geçersiz Fiyatlandýrma'
end as FiyatEtiketi
from Urunler

select * from Urunler

Select 
UrunAd,
StokMiktari,
case 
	when StokMiktari  = 0 then 'Stokta Yok'
	when StokMiktari between 1 and 20 then 'Az Stok'
	when StokMiktari between 21 and 100 then 'Yeterli'
	when StokMiktari >= 101 then 'Fazla Stok'
	else 'Geçersiz Stok Miktarý'
end as StokDurumu
from Urunler


Select
UrunAd,
Kategori,
case 
	when Kategori in ('Elektronik','Bilgisayar','Telefon') then 'Teknoloji'
	else 'Diðer'
end as KategoriGrubu
from Urunler

Select UrunAd,Fiyat 
from Urunler 
where Fiyat > (Select AVG(Fiyat) from Urunler)

Select UrunAd,Fiyat 
from Urunler
where Fiyat = (Select Max(Fiyat) from Urunler)


Select UrunAd,StokMiktari
from Urunler 
where StokMiktari = (Select Max(StokMiktari) from Urunler)

Select *
from Urunler
where Fiyat > (Select AVG(Fiyat) from Urunler)


select * from Urunler