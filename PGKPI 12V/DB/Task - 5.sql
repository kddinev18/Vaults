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
  WHERE [DoneOn] IS NOT NULL AND [To] < GETDATE() AND [IsPickedUp] = 'Flase'