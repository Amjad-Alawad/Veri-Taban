CREATE DATABASE UrunDB;
GO

USE UrunDB;
GO

-- Tedarikçiler tablosu
CREATE TABLE Tedarikciler (
    TedarikciID INT PRIMARY KEY IDENTITY(1,1),
    TedarikciAdi NVARCHAR(100) NOT NULL
);

-- Kategoriler tablosu
CREATE TABLE Kategoriler (
    KategoriID INT PRIMARY KEY IDENTITY(1,1),
    KategoriAdi NVARCHAR(100) NOT NULL
);

-- Ürünler tablosu
CREATE TABLE Urunler (
    UrunID INT PRIMARY KEY IDENTITY(1,1),
    UrunAdi NVARCHAR(100) NOT NULL,
    BirimFiyat DECIMAL(10,2) NOT NULL,
    TedarikciID INT FOREIGN KEY REFERENCES Tedarikciler(TedarikciID),
    KategoriID INT FOREIGN KEY REFERENCES Kategoriler(KategoriID)
);

-- Örnek veriler
INSERT INTO Tedarikciler (TedarikciAdi) VALUES ('ABC Tedarik'), ('XYZ Lojistik');
INSERT INTO Kategoriler (KategoriAdi) VALUES ('Elektronik'), ('Mobilya');

INSERT INTO Urunler (UrunAdi, BirimFiyat, TedarikciID, KategoriID)
VALUES ('Laptop', 25000, 1, 1),
       ('Masa', 1500, 2, 2);


//------------

-- Tedarikçiler tablosuna ek veriler
INSERT INTO Tedarikciler (TedarikciAdi)
VALUES ('Delta Tedarik'), 
       ('Mega Lojistik'),
       ('Tekno Market');

-- Kategoriler tablosuna ek veriler
INSERT INTO Kategoriler (KategoriAdi)
VALUES ('Giyim'), 
       ('Kitap'), 
       ('Yiyecek');

-- Ürünler tablosuna ek veriler
INSERT INTO Urunler (UrunAdi, BirimFiyat, TedarikciID, KategoriID)
VALUES 
    ('Telefon', 15000, 1, 1),   -- Elektronik / ABC Tedarik
    ('Kulaklýk', 1200, 3, 1),   -- Elektronik / Tekno Market
    ('Sandalye', 800, 2, 2),    -- Mobilya / XYZ Lojistik
    ('Tiþört', 250, 4, 3),      -- Giyim / Delta Tedarik
    ('Roman Kitabý', 120, 5, 4),-- Kitap / Mega Lojistik
    ('Pizza', 90, 5, 5);        -- Yiyecek / Mega Lojistik


    select *from Tedarikciler