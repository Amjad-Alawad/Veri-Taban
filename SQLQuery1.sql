CREATE DATABASE UrunDB;
GO

USE UrunDB;
GO

-- Tedarik�iler tablosu
CREATE TABLE Tedarikciler (
    TedarikciID INT PRIMARY KEY IDENTITY(1,1),
    TedarikciAdi NVARCHAR(100) NOT NULL
);

-- Kategoriler tablosu
CREATE TABLE Kategoriler (
    KategoriID INT PRIMARY KEY IDENTITY(1,1),
    KategoriAdi NVARCHAR(100) NOT NULL
);

-- �r�nler tablosu
CREATE TABLE Urunler (
    UrunID INT PRIMARY KEY IDENTITY(1,1),
    UrunAdi NVARCHAR(100) NOT NULL,
    BirimFiyat DECIMAL(10,2) NOT NULL,
    TedarikciID INT FOREIGN KEY REFERENCES Tedarikciler(TedarikciID),
    KategoriID INT FOREIGN KEY REFERENCES Kategoriler(KategoriID)
);

-- �rnek veriler
INSERT INTO Tedarikciler (TedarikciAdi) VALUES ('ABC Tedarik'), ('XYZ Lojistik');
INSERT INTO Kategoriler (KategoriAdi) VALUES ('Elektronik'), ('Mobilya');

INSERT INTO Urunler (UrunAdi, BirimFiyat, TedarikciID, KategoriID)
VALUES ('Laptop', 25000, 1, 1),
       ('Masa', 1500, 2, 2);


//------------

-- Tedarik�iler tablosuna ek veriler
INSERT INTO Tedarikciler (TedarikciAdi)
VALUES ('Delta Tedarik'), 
       ('Mega Lojistik'),
       ('Tekno Market');

-- Kategoriler tablosuna ek veriler
INSERT INTO Kategoriler (KategoriAdi)
VALUES ('Giyim'), 
       ('Kitap'), 
       ('Yiyecek');

-- �r�nler tablosuna ek veriler
INSERT INTO Urunler (UrunAdi, BirimFiyat, TedarikciID, KategoriID)
VALUES 
    ('Telefon', 15000, 1, 1),   -- Elektronik / ABC Tedarik
    ('Kulakl�k', 1200, 3, 1),   -- Elektronik / Tekno Market
    ('Sandalye', 800, 2, 2),    -- Mobilya / XYZ Lojistik
    ('Ti��rt', 250, 4, 3),      -- Giyim / Delta Tedarik
    ('Roman Kitab�', 120, 5, 4),-- Kitap / Mega Lojistik
    ('Pizza', 90, 5, 5);        -- Yiyecek / Mega Lojistik


    select *from Tedarikciler