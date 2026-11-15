USE KUTUPHANEKOVS
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