CREATE PROCEDURE KitapListele
AS BEGIN
SELECT[KitapId]
      ,[ISBN]
      ,[KitapAdi]
      ,[Sayafa]
      ,[Adet]
      ,[YazarId]
  FROM [KUTUPHANEKOVS].[dbo].[TblKITAPLAR]
END