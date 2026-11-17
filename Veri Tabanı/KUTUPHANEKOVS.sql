/* KUTUPHANEKOVS veritabanı - SQL Server'dan dışa aktarıldı (2026-11-15)
   SSMS ile açıp Execute (F5) ile çalıştırın. */
IF DB_ID(N'KUTUPHANEKOVS') IS NULL CREATE DATABASE [KUTUPHANEKOVS];
GO
USE [KUTUPHANEKOVS];
GO

CREATE TABLE [dbo].[ARAC] (
    [Arac_Id] int IDENTITY(1,1) NOT NULL,
    [Marka] nvarchar(max) NOT NULL,
    [Model] nchar(4) NOT NULL,
    [Plaka] nvarchar(8) NOT NULL,
    [Fiyat] money NULL,
    CONSTRAINT [PK__ARAC__0B8D7A37EA60903E] PRIMARY KEY ([Arac_Id])
);
GO

CREATE TABLE [dbo].[KIRA] (
    [Kira_Id] int IDENTITY(1,1) NOT NULL,
    [Mus_Id] int NOT NULL,
    [Araba_Id] int NOT NULL,
    [Tarih] date NOT NULL,
    [Saat] time NOT NULL,
    [TeslimTarih] date NULL,
    [TeslimSaat] time NULL,
    CONSTRAINT [PK__KIRA__13E6F3E37EEC3EA2] PRIMARY KEY ([Kira_Id])
);
GO

CREATE TABLE [dbo].[MUSTERI] (
    [Musteri_Id] int IDENTITY(1,1) NOT NULL,
    [MAd] nvarchar(max) NOT NULL,
    [MSoyad] nvarchar(max) NOT NULL,
    [MAdres] ntext NOT NULL,
    [MTel] nchar(11) NOT NULL,
    CONSTRAINT [PK__MUSTERI__1E6CEE6AEA458320] PRIMARY KEY ([Musteri_Id])
);
GO

CREATE TABLE [dbo].[TblKasa] (
    [KasaId] int IDENTITY(1,1) NOT NULL,
    [UyeID] int NULL,
    [OTId] int NULL,
    [OTarih] datetime NULL,
    [Miktar] smallmoney NULL,
    [Gun] int NULL,
    CONSTRAINT [PK__TblKasa__1595E43196C710A2] PRIMARY KEY ([KasaId])
);
GO

CREATE TABLE [dbo].[TblKITAPLAR] (
    [KitapId] int IDENTITY(1,1) NOT NULL,
    [ISBN] nchar(13) NOT NULL,
    [KitapAdi] nvarchar(250) NOT NULL,
    [Sayafa] int NOT NULL,
    [Adet] int NOT NULL,
    [YazarId] int NULL,
    CONSTRAINT [PK__TblKITAP__89491B0C4E8E596D] PRIMARY KEY ([KitapId]),
    CONSTRAINT [UQ__TblKITAP__447D36EA6866415B] UNIQUE ([ISBN])
);
GO

CREATE TABLE [dbo].[TblOdemeTuru] (
    [OTId] int IDENTITY(1,1) NOT NULL,
    [OTAciklama] nvarchar(1) NULL,
    CONSTRAINT [PK__TblOdeme__A934AEC46E9C550A] PRIMARY KEY ([OTId])
);
GO

CREATE TABLE [dbo].[TblUYEKITAP] (
    [IKID] int IDENTITY(1,1) NOT NULL,
    [KitapId] int NULL,
    [UyeId] int NULL,
    [OVTarihi] datetime NOT NULL,
    [GATarihi] datetime NULL,
    CONSTRAINT [PK__TblUYEKI__8D7765F0E0B410A6] PRIMARY KEY ([IKID])
);
GO

CREATE TABLE [dbo].[TblUYELER] (
    [UyeId] int IDENTITY(1,1) NOT NULL,
    [UyeAd] nvarchar(250) NOT NULL,
    [UyeSoyad] nvarchar(250) NOT NULL,
    [UyeTCKimlik] nchar(11) NOT NULL,
    [UyeAdres] nvarchar(250) NOT NULL,
    [UyeTel] nchar(10) NOT NULL,
    CONSTRAINT [PK__TblUYELE__76F7D98F648D5222] PRIMARY KEY ([UyeId]),
    CONSTRAINT [UQ__TblUYELE__D7C412E08DF745E0] UNIQUE ([UyeTCKimlik])
);
GO

CREATE TABLE [dbo].[TblYAZARLAR] (
    [YazarId] int IDENTITY(1,1) NOT NULL,
    [YazarAdsoyad] nvarchar(250) NULL,
    CONSTRAINT [PK__TblYAZAR__CF636CE1294F112D] PRIMARY KEY ([YazarId])
);
GO

SET IDENTITY_INSERT [dbo].[TblKasa] ON;
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (1, 8, 1, '2025-12-15 09:44:31.647', 30.0000, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (2, 8, 1, '2025-12-15 09:44:38.497', 105.0000, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (3, 3, 2, '2025-12-15 11:39:59.443', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (4, 3, 1, '2025-12-15 11:39:59.453', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (5, 6, 2, '2025-12-15 11:48:23.533', 0.0000, 0);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (6, 6, 1, '2025-12-15 11:48:23.537', 0.0000, 0);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (7, 2, 2, '2025-12-15 11:53:22.810', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (8, 2, 1, '2025-12-15 11:53:22.810', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (9, 2, 2, '2025-12-15 11:53:27.923', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (10, 2, 1, '2025-12-15 11:53:27.923', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (11, 1, 2, '2025-12-22 09:12:48.497', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (12, 1, 1, '2025-12-22 09:12:48.503', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (13, 4, 2, '2025-12-22 09:13:23.670', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (14, 4, 1, '2025-12-22 09:13:23.670', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (15, 3, 2, '2025-12-22 09:14:31.370', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (16, 3, 1, '2025-12-22 09:14:31.370', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (17, 1, 2, '2026-04-01 13:51:06.390', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (18, 1, 1, '2026-04-01 13:51:06.403', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (19, 1, 2, '2026-04-01 13:51:27.740', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (20, 1, 1, '2026-04-01 13:51:27.743', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (21, 2, 2, '2026-04-01 13:52:42.810', NULL, NULL);
INSERT INTO [dbo].[TblKasa] ([KasaId], [UyeID], [OTId], [OTarih], [Miktar], [Gun]) VALUES (22, 2, 1, '2026-04-01 13:52:42.810', NULL, NULL);
SET IDENTITY_INSERT [dbo].[TblKasa] OFF;
GO

SET IDENTITY_INSERT [dbo].[TblKITAPLAR] ON;
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (1, N'9874563214568', N'Kaşağı', 75, 8, 1);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (2, N'9874563214567', N'Topuz', 80, 24, 1);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (3, N'9874563214566', N'Falaka', 80, 17, 1);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (4, N'9874563214565', N'Kendi Gök Kubbemiz', 120, 8, 2);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (5, N'9874563214564', N'Eski Şiirin Rüzgariyle', 88, 9, 2);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (6, N'9874563214563', N'İntibah', 191, 20, 3);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (7, N'9874563214562', N'Vatan Yahut Silistre', 88, 10, 3);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (8, N'9874563214561', N'Masumiyet Müzesi', 592, 25, 4);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (9, N'9874563214591', N'Kar', 436, 23, 4);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (10, N'9874563214592', N'Aşkı Memnu', 215, 19, 5);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (11, N'9874563214593', N'Mavi Ve Siyah', 356, 11, 5);
INSERT INTO [dbo].[TblKITAPLAR] ([KitapId], [ISBN], [KitapAdi], [Sayafa], [Adet], [YazarId]) VALUES (12, N'9874563214594', N'Ferdi Ve Şürekası', 185, 13, 5);
SET IDENTITY_INSERT [dbo].[TblKITAPLAR] OFF;
GO

SET IDENTITY_INSERT [dbo].[TblOdemeTuru] ON;
INSERT INTO [dbo].[TblOdemeTuru] ([OTId], [OTAciklama]) VALUES (1, N'B');
INSERT INTO [dbo].[TblOdemeTuru] ([OTId], [OTAciklama]) VALUES (2, N'A');
SET IDENTITY_INSERT [dbo].[TblOdemeTuru] OFF;
GO

SET IDENTITY_INSERT [dbo].[TblUYEKITAP] ON;
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (1, 3, 3, '2025-11-01 12:46:00.400', '2025-12-22 09:14:31.367');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (2, 4, 4, '2025-11-01 12:48:09.510', '2025-12-22 09:13:23.667');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (3, 2, 2, '2025-11-01 12:48:43.977', '2026-04-01 13:52:42.807');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (4, 1, 1, '2025-11-05 11:47:19.560', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (5, 1, 1, '2025-11-05 11:47:24.973', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (6, 1, 1, '2025-11-05 11:47:26.177', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (7, 1, 1, '2025-11-05 11:48:48.060', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (8, 1, 1, '2025-11-05 11:49:11.163', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (9, 1, 1, '2025-11-05 11:52:27.920', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (10, 8, 8, '2025-11-09 18:21:37.163', '2025-12-15 09:44:38.490');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (11, 4, 4, '2025-11-09 18:21:44.730', '2025-12-22 09:13:23.667');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (12, 1, 1, '2025-11-09 18:22:15.340', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (13, 1, 1, '2025-11-09 19:25:42.077', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (14, 1, 1, '2025-11-09 19:25:45.943', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (15, 1, 1, '2025-11-09 19:25:48.523', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (16, 1, 1, '2025-11-09 19:33:23.457', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (17, 1, 1, '2025-11-09 19:33:25.093', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (18, 1, 1, '2025-11-09 19:33:26.733', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (19, 1, 1, '2025-11-09 19:33:28.147', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (20, 1, 1, '2025-11-09 19:36:39.417', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (21, 1, 1, '2025-11-09 19:36:42.117', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (22, 1, 1, '2025-11-09 19:36:43.070', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (23, 1, 1, '2025-11-09 19:41:21.290', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (24, 1, 1, '2025-11-09 19:41:23.420', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (25, 1, 1, '2025-11-09 19:41:26.647', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (26, 1, 1, '2025-11-09 19:41:28.397', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (27, 3, 3, '2025-11-09 19:41:44.653', '2025-12-22 09:14:31.367');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (28, 1, 1, '2025-11-09 19:41:46.240', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (29, 1, 1, '2025-11-09 19:41:47.247', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (30, 1, 1, '2025-11-09 19:41:54.247', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (31, 1, 1, '2025-11-09 19:41:59.640', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (32, 1, 1, '2025-11-09 19:42:00.063', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (33, 1, 1, '2025-11-09 19:42:01.750', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (34, 1, 1, '2025-11-09 19:42:03.293', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (35, 2, 2, '2025-11-09 19:52:23.460', '2026-04-01 13:52:42.807');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (36, 1, 1, '2025-11-09 19:52:24.863', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (37, 1, 1, '2025-11-09 19:52:25.977', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (38, 1, 1, '2025-11-09 19:52:27.090', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (39, 5, 5, '2025-11-09 20:00:11.280', '2025-12-08 11:23:00.117');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (40, 1, 1, '2025-11-09 20:00:11.303', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (41, 1, 1, '2025-11-09 20:00:13.487', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (42, 1, 1, '2025-11-09 20:00:13.507', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (43, 1, 1, '2025-11-09 20:00:19.623', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (44, 1, 1, '2025-11-09 20:00:19.650', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (45, 1, 1, '2025-11-09 20:00:21.007', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (46, 1, 1, '2025-11-09 20:00:21.033', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (47, 1, 1, '2025-11-24 08:59:04.043', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (48, 1, 1, '2025-11-24 09:49:43.363', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (49, 9, 9, '2025-12-08 11:01:50.233', '2025-12-08 11:22:43.690');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (50, 2, 2, '2025-12-15 11:41:03.127', '2026-04-01 13:52:42.807');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (51, 5, 5, '2025-12-15 11:41:10.950', NULL);
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (52, 6, 6, '2025-12-15 11:41:23.220', '2025-12-15 11:48:23.530');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (53, 3, 3, '2025-12-15 11:41:40.417', '2025-12-22 09:14:31.367');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (54, 9, 9, '2025-12-15 11:41:49.300', NULL);
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (55, 3, 3, '2025-12-15 11:42:02.710', '2025-12-22 09:14:31.367');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (56, 2, 2, '2025-11-22 09:07:22.850', '2026-04-01 13:52:42.807');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (57, 4, 4, '2025-12-01 09:07:45.217', '2025-12-22 09:13:23.667');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (58, 1, 1, '2025-10-22 09:07:47.487', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (59, 1, 1, '2025-11-22 09:07:49.207', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (60, 1, 1, '2026-04-01 13:51:03.800', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (61, 1, 1, '2026-04-01 13:51:18.867', '2026-04-01 13:51:27.737');
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (62, 4, 1, '2026-04-01 13:51:22.417', NULL);
INSERT INTO [dbo].[TblUYEKITAP] ([IKID], [KitapId], [UyeId], [OVTarihi], [GATarihi]) VALUES (63, 6, 1, '2026-04-01 13:51:25.423', NULL);
SET IDENTITY_INSERT [dbo].[TblUYEKITAP] OFF;
GO

SET IDENTITY_INSERT [dbo].[TblUYELER] ON;
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (1, N'Yunus Emre', N'Gunay', N'10000000001', N'Tekirdağ', N'5554567892');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (2, N'Emrah', N'Çapkan', N'10000000002', N'Niğde', N'5512561242');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (3, N'sdglhlafgkl', N'Çalışkan', N'10000000003', N'Manisa', N'5457541525');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (4, N'Menşure', N'Çapraz', N'10000000004', N'Çorum', N'5197851524');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (5, N'Habibe', N'Kaya', N'10000000005', N'Kütahya', N'5435354820');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (6, N'Hasan', N'Çifçier', N'10000000006', N'Yozgat', N'5217851512');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (7, N'Aynur Sude', N'Kandemir', N'10000000007', N'Tokat', N'535467850 ');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (8, N'Gülay', N'Demircan', N'10000000008', N'Ankara', N'5354855545');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (9, N'Gencay', N'Çeliker', N'10000000009', N'Bartın', N'5358465575');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (10, N'Kerem', N'Çetin', N'10000000010', N'İstanbul', N'5234567891');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (11, N'Muhammet', N'Aydın', N'10000000011', N'İstanbul', N'5345678912');
INSERT INTO [dbo].[TblUYELER] ([UyeId], [UyeAd], [UyeSoyad], [UyeTCKimlik], [UyeAdres], [UyeTel]) VALUES (12, N'Ahmet', N'Gültekin', N'10000000012', N'qweqweqw', N'5358645580');
SET IDENTITY_INSERT [dbo].[TblUYELER] OFF;
GO

SET IDENTITY_INSERT [dbo].[TblYAZARLAR] ON;
INSERT INTO [dbo].[TblYAZARLAR] ([YazarId], [YazarAdsoyad]) VALUES (1, N'Ömer Seyfettin');
INSERT INTO [dbo].[TblYAZARLAR] ([YazarId], [YazarAdsoyad]) VALUES (2, N'Yahya Kemal');
INSERT INTO [dbo].[TblYAZARLAR] ([YazarId], [YazarAdsoyad]) VALUES (3, N'Namık Kemal ');
INSERT INTO [dbo].[TblYAZARLAR] ([YazarId], [YazarAdsoyad]) VALUES (4, N'Orhan Pamuk');
INSERT INTO [dbo].[TblYAZARLAR] ([YazarId], [YazarAdsoyad]) VALUES (5, N'Halit Ziya Uşaklıgil');
INSERT INTO [dbo].[TblYAZARLAR] ([YazarId], [YazarAdsoyad]) VALUES (6, N'Gülten Dayıoğlu');
SET IDENTITY_INSERT [dbo].[TblYAZARLAR] OFF;
GO

ALTER TABLE [dbo].[TblKasa] ADD CONSTRAINT [FK__TblKasa__OTId__2FCF1A8A] FOREIGN KEY ([OTId]) REFERENCES [dbo].[TblOdemeTuru] ([OTId]);
GO
ALTER TABLE [dbo].[TblKasa] ADD CONSTRAINT [FK__TblKasa__UyeID__2EDAF651] FOREIGN KEY ([UyeID]) REFERENCES [dbo].[TblUYELER] ([UyeId]);
GO
ALTER TABLE [dbo].[TblKITAPLAR] ADD CONSTRAINT [FK__TblKITAPL__Yazar__5165187F] FOREIGN KEY ([YazarId]) REFERENCES [dbo].[TblYAZARLAR] ([YazarId]);
GO
ALTER TABLE [dbo].[TblUYEKITAP] ADD CONSTRAINT [FK__TblUYEKIT__Kitap__5441852A] FOREIGN KEY ([KitapId]) REFERENCES [dbo].[TblKITAPLAR] ([KitapId]);
GO
ALTER TABLE [dbo].[TblUYEKITAP] ADD CONSTRAINT [FK__TblUYEKIT__UyeId__5535A963] FOREIGN KEY ([UyeId]) REFERENCES [dbo].[TblUYELER] ([UyeId]);
GO
ALTER TABLE [dbo].[KIRA] ADD CONSTRAINT [FK_Arac] FOREIGN KEY ([Araba_Id]) REFERENCES [dbo].[ARAC] ([Arac_Id]);
GO
ALTER TABLE [dbo].[KIRA] ADD CONSTRAINT [FK_Musteri] FOREIGN KEY ([Mus_Id]) REFERENCES [dbo].[MUSTERI] ([Musteri_Id]);
GO

CREATE PROCEDURE DenemeUpdateProcedure


AS BEGIN

UPDATE TblUYELER SET UyeAd='sdglhlafgkl'
WHERE TblUYELER.UyeAd='Semih'

END
GO

CREATE PROCEDURE IslemKaydet

@UyeId INT,--UYE IDNİN BİLGİSİ BURAYA AKTARILDI
@KitapId INT--KİTAP BİLGİSİ BURAYA AKTARILDI
AS BEGIN
INSERT INTO TblUYEKITAP(UyeId,KitapId,OVTarihi)
VALUES(@UyeId,@UyeId,GETDATE())

UPDATE TblKITAPLAR SET Adet=Adet-1
WHERE KitapId=@KitapId
END
GO

CREATE PROCEDURE KitapEkle
@ISBN NCHAR(13),
@KitapAdi NVARCHAR(250),
@Sayafa INT,
@Adet INT,
@YazarId INT
AS 
BEGIN

INSERT INTO TblKITAPLAR(
      [ISBN]
      ,[KitapAdi]
      ,[Sayafa]
      ,[Adet]
      ,[YazarId])
VALUES(@ISBN,@KitapAdi,@Sayafa,@Adet,@YazarId)
 END
GO

CREATE PROCEDURE KitapGeri
@uyeid INT,
@okitapid INT
AS
BEGIN
    -- Sadece iade edilmemiş tek kitabı güncelle
    UPDATE TOP (1) TblUYEKITAP 
    SET GATarihi = GETDATE()
    WHERE UyeId = @uyeid 
      AND KitapId = @okitapid 
      AND GATarihi IS NULL

    -- Kitap stoğunu artır
    UPDATE TblKITAPLAR 
    SET Adet = Adet + 1
    WHERE KitapId = @okitapid
END
GO

CREATE PROCEDURE [dbo].[KitapGeriAl]
@uyeid INT,
@okitapid INT

AS BEGIN

UPDATE TblUYEKITAP SET GATarihi=GETDATE()
WHERE UyeId=@uyeid AND KitapId=@okitapid 

UPDATE TblKITAPLAR SET Adet=Adet+1
WHERE KitapId=@okitapid

END
GO

CREATE PROCEDURE KitapGeriAl2
@uyeid INT,
@okitapid INT,
@ceza INT
AS BEGIN
SET NOCOUNT ON

UPDATE TblUYEKITAP SET GATarihi=GETDATE()
WHERE UyeId=@uyeid AND KitapId=@okitapid 

UPDATE TblKITAPLAR SET Adet=Adet+1
WHERE KitapId=@okitapid

INSERT INTO TblKasa (UyeID, OTId, OTarih, Miktar)
VALUES(@uyeid,1,GETDATE(),@ceza)
END
GO

CREATE PROCEDURE [dbo].[KitapGeriAl3]
@uyeid INT,
@okitapid INT

AS BEGIN
SET NOCOUNT ON
DECLARE @OVTarihi DATETIME=(SELECT OVTarihi FROM TblUYEKITAP 
							WHERE UyeId=@uyeid AND KitapId=@okitapid )
							
UPDATE TblUYEKITAP SET GATarihi=GETDATE()
WHERE UyeId=@uyeid AND KitapId=@okitapid 

UPDATE TblKITAPLAR SET Adet=Adet+1
WHERE KitapId=@okitapid

Declare @Gun INT =DATEDIFF(DAY,GETDATE(),@OVTarihi)
INSERT INTO TblKasa(UyeID,OTId,OTarih,Gun) 
			VALUES(@uyeid,2,GETDATE(),@Gun)

INSERT INTO TblKasa(UyeID,OTId,OTarih,Gun) 
			VALUES(@uyeid,1,GETDATE(),@Gun)
END
GO

CREATE PROCEDURE [dbo].[KitapGeriAl4]
@uyeid INT,
@okitapid INT

AS BEGIN
SET NOCOUNT ON
-- Üye aynı kitabı daha önce de almış olabilir: yalnızca henüz iade edilmemiş (açık) ödünç kaydı alınır
DECLARE @OVTarihi DATETIME=(SELECT TOP 1 OVTarihi FROM TblUYEKITAP 
							WHERE UyeId=@uyeid AND KitapId=@okitapid AND GATarihi IS NULL
							ORDER BY OVTarihi)
IF @OVTarihi IS NULL RETURN -- iade edilecek açık ödünç yok

UPDATE TblUYEKITAP SET GATarihi=GETDATE()
WHERE UyeId=@uyeid AND KitapId=@okitapid AND GATarihi IS NULL AND OVTarihi=@OVTarihi

UPDATE TblKITAPLAR SET Adet=Adet+1
WHERE KitapId=@okitapid

Declare @Gun INT =DATEDIFF(DAY,@OVTarihi,GETDATE())
-- Kitap iade edilene kadar ceza her gün artar (UyeIslem2 canlı hesaplar).
-- İadede, 15 günlük süre aşıldıysa kasaya TEK ceza kaydı düşer; tutarı trgCezaYaz hesaplar (gün × 5 TL).
IF @Gun > 15
BEGIN
INSERT INTO TblKasa(UyeID,OTId,OTarih,Gun) 
			VALUES(@uyeid,1,GETDATE(),@Gun-15)
END
END
GO

CREATE PROCEDURE KitapGeriAll
@uyeid INT,
@okitapid INT
AS
BEGIN
    UPDATE TblUYEKITAP 
    SET GATarihi=GETDATE()
    WHERE UyeId=@uyeid AND KitapId=@okitapid

    UPDATE TblKITAPLAR 
    SET Adet=Adet+1
    WHERE KitapId=@okitapid
END
GO

CREATE PROCEDURE KitapGuncelle
@KitapId INT,
@ISBN NCHAR(13),
@KitapAdi NVARCHAR(250),
@Sayafa INT,
@Adet INT,
@YazarId INT
AS 
BEGIN
UPDATE TblKITAPLAR SET
ISBN=@ISBN,
KitapAdi=@KitapAdi,
Sayafa=@Sayafa,
Adet= @Adet,
YazarId=@YazarId
WHERE KitapId=@KitapId
 END
GO

CREATE PROCEDURE [dbo].[KitapListele]
AS BEGIN
SELECT 
TblKITAPLAR.KitapId,
TblKITAPLAR.ISBN,
TblKITAPLAR.KitapAdi,
TblKITAPLAR.Sayafa, 
TblKITAPLAR.Adet,
TblYAZARLAR.YazarAdsoyad,
TblKITAPLAR.YazarId
FROM     TblKITAPLAR INNER JOIN
                  TblYAZARLAR ON TblKITAPLAR.YazarId = TblYAZARLAR.YazarId
  WHERE TblKITAPLAR.Adet>0
END
GO

CREATE PROCEDURE sp_KitapAra
@ISBN NVARCHAR(200)
AS BEGIN
SELECT *
  FROM TblKITAPLAR
  WHERE ISBN LIKE @ISBN + '%' OR
  KitapAdi LIKE @ISBN + '%' 
  END
GO

CREATE PROCEDURE sp_TCAra
@Ara NVARCHAR(500)
AS BEGIN
SELECT *
  FROM TblUYELER
  WHERE UyeTCKimlik LIKE @Ara+'%'
  OR UyeAd LIKE @Ara+'%'
  OR UyeSoyad LIKE @Ara+'%'
  OR UyeAdres LIKE @Ara+'%'
  OR UyeTel LIKE @Ara+'%'
  --OR yada demek 
  --Başındaki değere bak sonu önemli değil
  END
GO

CREATE PROCEDURE spKitapVer
@UyeId INT,
@KitapId INT
AS BEGIN
INSERT INTO TblUYEKITAP(UyeId,KitapId,OVTarihi)
VALUES (@UyeId,@KitapId,GETDATE())

UPDATE TblKITAPLAR
SET Adet=Adet-1
WHERE KitapId=@KitapId
END
GO

CREATE PROCEDURE spUyeAra
@Ara NVARCHAR(500)
AS BEGIN
SELECT *
  FROM TblUYELER
  WHERE UyeTCKimlik LIKE @Ara+'%'
  OR UyeAd LIKE @Ara+'%'
  OR UyeSoyad LIKE @Ara+'%'
  OR UyeAdres LIKE @Ara+'%'
  OR UyeTel LIKE @Ara+'%'
  --OR yada demek 
  --Başındaki değere bak sonu önemli değil
  END
GO

CREATE PROCEDURE spUyeKaydet
@UyeAd NVARCHAR(250),
@UyeSoyad NVARCHAR(250),
@UyeTCKimlik NCHAR(11), 
@UyeAdres NVARCHAR(250),
@UyeTel NCHAR(10)
AS BEGIN
INSERT INTO TblUYELER(UyeAd,UyeSoyad,UyeTCKimlik,UyeAdres,UyeTel)
VALUES (@UyeAd,@UyeSoyad,@UyeTCKimlik,@UyeAdres,@UyeTel)
END
GO

CREATE PROCEDURE spYazarKaydet
@YazarAdsoyad NVARCHAR(250)
AS BEGIN
IF NOT EXISTS (SELECT YazarAdsoyad FROM TblYAZARLAR -- Eğer bu isimde bir yazar YOKSA
			   WHERE UPPER (YazarAdsoyad)=UPPER(@YazarAdsoyad))

INSERT INTO TblYAZARLAR --Yazar ekle
VALUES (@YazarAdsoyad)
ELSE SELECT -1
END
GO

CREATE PROCEDURE spYazarListele
AS BEGIN
SET NOCOUNT ON
SELECT * FROM TblYAZARLAR
END
GO

CREATE PROCEDURE spYazarListele2
AS BEGIN
SET NOCOUNT ON
SELECT * FROM TblYAZARLAR
END
GO

--DROP PROCEDURE IF EXISTS dbo.UyeIslem
CREATE PROCEDURE [dbo].[UyeIslem]
@UyeId INT --C# TAN GELEN ÜYEID BİLGİSİNİ BURAYA AKTAR
AS BEGIN
SELECT 
TblUYELER.UyeId,
TblUYELER.UyeAd,
TblUYELER.UyeSoyad, 
TblUYELER.UyeTCKimlik, 
TblKITAPLAR.KitapId,
TblKITAPLAR.KitapAdi, 
TblYAZARLAR.YazarAdsoyad,
TblUYEKITAP.OVTarihi,
DATEDIFF(DAY,TblUYEKITAP.OVTarihi,GETDATE()) AS Sure,
CASE WHEN DATEDIFF(DAY,TblUYEKITAP.OVTarihi,GETDATE())>15 -- fark 15den büyükse o zaman bu farktan 
THEN (DATEDIFF(DAY,TblUYEKITAP.OVTarihi,GETDATE())-15)*5--15 gün çıkart gün başına 5 tl ile çarp
ELSE 0 END AS Ceza--eğer 15ten büyük değilse 0 ver
FROM     TblKITAPLAR INNER JOIN TblUYEKITAP ON TblKITAPLAR.KitapId = TblUYEKITAP.KitapId
                    INNER JOIN TblUYELER ON TblUYEKITAP.UyeId = TblUYELER.UyeId
                   INNER JOIN   TblYAZARLAR ON TblKITAPLAR.YazarId = TblYAZARLAR.YazarId

WHERE TblUYELER.UyeId=@UyeId AND GATarihi IS NULL --Önemli kısım
END
GO

--DROP PROCEDURE IF EXISTS dbo.UyeIslem
CREATE PROCEDURE [dbo].[UyeIslem2]
@UyeId INT --C# TAN GELEN ÜYEID BİLGİSİNİ BURAYA AKTAR
AS BEGIN
SELECT 
TblUYELER.UyeId,
TblUYELER.UyeAd,
TblUYELER.UyeSoyad, 
TblUYELER.UyeTCKimlik, 
TblKITAPLAR.KitapId,
TblKITAPLAR.KitapAdi, 
TblYAZARLAR.YazarAdsoyad,
TblUYEKITAP.OVTarihi,
DATEDIFF(DAY,TblUYEKITAP.OVTarihi,GETDATE()) AS Sure,
CASE WHEN DATEDIFF(DAY,TblUYEKITAP.OVTarihi,GETDATE())>15 -- fark 15den büyükse o zaman bu farktan 
THEN (DATEDIFF(DAY,TblUYEKITAP.OVTarihi,GETDATE())-15)*5--15 gün çıkart gün başına 5 tl ile çarp
ELSE 0 END AS Ceza--eğer 15ten büyük değilse 0 ver
FROM     TblKITAPLAR INNER JOIN TblUYEKITAP ON TblKITAPLAR.KitapId = TblUYEKITAP.KitapId
                    INNER JOIN TblUYELER ON TblUYEKITAP.UyeId = TblUYELER.UyeId
                   INNER JOIN   TblYAZARLAR ON TblKITAPLAR.YazarId = TblYAZARLAR.YazarId

WHERE TblUYELER.UyeId=@UyeId AND GATarihi IS NULL --Önemli kısım
END
GO

CREATE PROCEDURE UyeListe
AS BEGIN

SELECT[UyeId]
      ,[UyeAd]
      ,[UyeSoyad]
      ,[UyeTCKimlik]
      ,[UyeAdres]
      ,[UyeTel]
  FROM [KUTUPHANEKOVS].[dbo].[TblUYELER]

END
GO

CREATE TRIGGER [dbo].[trgCezaYaz]
ON [dbo].[TblKasa]
FOR INSERT
AS BEGIN
DECLARE @Gun INT = (SELECT Gun FROM inserted)
DECLARE @Miktar SMALLMONEY = @Gun * 5
DECLARE @KasaId INT =(SELECT KasaId FROM inserted)

UPDATE TblKasa SET Miktar=@Miktar
WHERE KasaId=@KasaId
END
GO
