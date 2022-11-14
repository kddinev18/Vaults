/****** Script for SelectTopNRows command from SSMS  ******/
SELECT i.Id
	  ,i.[Name]
	  ,i.[Type]
  FROM [kddinev18].[dbo].[Repairs] r
  Join Items i
  ON i.Id = r.ItemId
  WHERE [From] = '2022-12-21' AND DoneOn = '2022-12-22'