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


create PROCEDURE Urun_Arama
    @UrunID INT
AS
BEGIN
    SELECT u.UrunID, u.UrunAdi, u.BirimFiyat, t.TedarikciAdi, k.KategoriAdi
    FROM Urunler u
    JOIN Tedarikciler t ON u.TedarikciID = t.TedarikciID
    JOIN Kategoriler k ON u.KategoriID = k.KategoriID
    WHERE u.UrunID = @UrunID
END


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



