create procedure Kayýt_Ekle
@UrunAdi varchar(100),
@BirimFiyat decimal(10,2)
as
begin 
insert into Urunler(UrunAdi,BirimFiyat)values(@UrunAdi,@BirimFiyat)
end


Create procedure Kayýt_Guncelle
@UrunAdi varchar(100),
@UrunID int,
@BirimFiyat decimal(10,2)
as 
begin
Update Urunler 
set UrunAdi = @UrunAdi,BirimFiyat=@BirimFiyat
where UrunID=@UrunID;
end


Create procedure Kayýt_Silme
@UrunID int
as 
begin
Delete Urunler where UrunID = @UrunID
end


Create procedure Urun_Arama
@UrunID int
as 
begin
Select * from Urunler where UrunID = @UrunID
end



