USE [KUTUPHANEKOVS]
GO

/****** Object:  StoredProcedure [dbo].[UyeIslem]    Script Date: 8.12.2025 10:39:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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


