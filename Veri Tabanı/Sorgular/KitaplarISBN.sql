USE KUTUPHANEKOVS
GO
--SET NOCOUNT ON--eğer Prosedure içinde insert delete yada update komutunu kullanırsak hatalı return üretmresin diye SET NOCOUNT ON demeliyiz
DROP PROCEDURE IF EXISTS dbo.sp_KitapAra
GO
CREATE PROCEDURE sp_KitapAra
@ISBN NVARCHAR(200)
AS BEGIN
SELECT *
  FROM TblKITAPLAR
  WHERE ISBN LIKE @ISBN + '%' OR
  KitapAdi LIKE @ISBN + '%' 
  END
  --KASKAT BİRLEŞİM TABLOLARI BİRLEŞTİR