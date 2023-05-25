declare @ograd nchar (10)
select @ograd=min(ograd) from ogrenci
print(@ograd)


declare @metin1 varchar (30)
set @metin1='select * from ogrenci --where ogrno=8'
EXEC(@metin1)


print @@VERSION


declare @tablo1 table (ogrno int,ograd nchar(10),ogrsoyad nchar(20))
insert into @tablo1
select ogrno,ograd,ogrsoyad from ogrenci
select * from @tablo1



declare @sayi int
set @sayi=1
nokta1:
print('sayi='+CAST(@sayi as varchar(2)))
set @sayi=@sayi+1
while @sayi<5
GOTO nokta1
print('sonlandý')



WAITFOR Delay '03:03:02'
select * from ogrenci

begin TRY--
select 2/0
end TRY
Begin CATCH
select ERROR_MESSAGE() as hata_mesaji
end CATCH


PROSEDÜR EKLEME
create proc ograd_getir
as
select ogrno,ograd from ogrenci
end


programmability içinde incelemeye alabilirsin
create PROCEDURE yazar_ekle(@yazarad nchar(20), yazarsoyad nchar(20))
as
begin
insert into yazar
values(@yazarad,@yazarsoyad)
end

