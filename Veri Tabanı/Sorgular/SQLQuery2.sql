USE KUTUPHANEKOVS
GO
DROP PROCEDURE IF EXISTS dbo.spUyeAra
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