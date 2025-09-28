USE [UrunDB]
GO

/****** Object:  Table [dbo].[Urunler]    Script Date: 28.09.2025 19:51:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Urunler](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [nvarchar](100) NOT NULL,
	[BirimFiyat] [decimal](10, 2) NOT NULL,
	[TedarikciID] [int] NULL,
	[KategoriID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategoriler] ([KategoriID])
GO

ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikciler] ([TedarikciID])
GO


