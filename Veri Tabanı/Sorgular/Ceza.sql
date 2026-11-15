USE [KUTUPHANEKOVS]
GO
/****** Object:  StoredProcedure [dbo].[KitapGeriAl]    Script Date: 8.12.2025 11:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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

INSERT INTO TblKasa
VALUES(@uyeid,1,GETDATE(),@ceza)
END
