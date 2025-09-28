create PROCEDURE Kayıt_Ekle
    @UrunAdi NVARCHAR(100),
    @BirimFiyat DECIMAL(10,2),
    @TedarikciID INT,
    @KategoriID INT
AS
BEGIN
    INSERT INTO Urunler (UrunAdi, BirimFiyat, TedarikciID, KategoriID)
    VALUES (@UrunAdi, @BirimFiyat, @TedarikciID, @KategoriID)
END


Create procedure Kayıt_Silme
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


CREATE PROCEDURE Kayıt_Guncelle
    @UrunID INT,
    @UrunAdi NVARCHAR(100),
    @BirimFiyat DECIMAL(18,2),
    @TedarikciID INT,
    @KategoriID INT
AS
BEGIN
    UPDATE Urunler
    SET UrunAdi = @UrunAdi,
        BirimFiyat = @BirimFiyat,
        TedarikciID = @TedarikciID,
        KategoriID = @KategoriID
    WHERE UrunID = @UrunID
END



