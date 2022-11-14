/****** Script for SelectTopNRows command from SSMS  ******/
SELECT r.[Id]
      ,[TechicianId]
      ,[ServiceId]
      ,[ItemId]
      ,[CustomerId]
      ,[From]
      ,[DoneOn]
      ,[To]
      ,[IsPickedUp]
      ,[SatusId]
  FROM [kddinev18].[dbo].[Repairs] r
  JOIN Statuses s
  ON r.SatusId = s.Id
  WHERE s.[Status] = 'изчакване доставка на част'