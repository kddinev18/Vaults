/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id]
      ,[TechicianId]
      ,[ServiceId]
      ,[ItemId]
      ,[CustomerId]
      ,[From]
      ,[DoneOn]
      ,[To]
      ,[IsPickedUp]
      ,[SatusId]
  FROM [kddinev18].[dbo].[Repairs]
  WHERE DAY(DoneOn) = DAY(GETDATE())

  SELECT COUNT(*) AS 'Count', SUM(s.Price)
  FROM [kddinev18].[dbo].[Repairs] r
  JOIN [Services] s
  ON s.Id = r.ServiceId
  WHERE DAY(DoneOn) = DAY(GETDATE())