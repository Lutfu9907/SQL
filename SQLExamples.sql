--select  distinct(Dogum_yeri) from Calisanlar

--select * from Calisanlar

--select s.Sehir,COUNT(*) from Calisanlar c, Sehirler s where s.id=Dogum_Yeri group by s.Sehir

--select Calisan_ad,Calisan_Soyad from Calisanlar where Dogum_Yeri=(select id from Sehirler where Sehir='Burdur')

--select c.Calisan_ad,c.Calisan_Soyad,cd.Ayrilis_Tarihi,d.Departman_adi from Calisanlar c, Calisan_Departman cd, Departmanlar d where c.cid=cd.cid and cd.did=d.did

--select c.Calisan_ad,c.Calisan_Soyad,d.Departman_adi,cd.Baslangic_Tarihi from Calisanlar c inner join Calisan_Departman cd on c.cid=cd.did
--inner join Departmanlar d on cd.did=d.did

--select Calisan_ad+''+Calisan_Soyad as ADSOYAD,s.Sehir from Calisanlar c,Sehirler s where c.Dogum_Yeri=s


--select s.Sehir,SUM(m.Maas_Tutar) as [Toplam tutar] from Maaslar m
--inner join Calisan_Departman cd on m.cdid=cd.cdid
--inner join Calisanlar c on cd.cid=c.cid
--inner join Sehirler s on c.Dogum_Yeri=s.id
--group by s.Sehir
--having SUM(m.Maas_Tutar)>200000 