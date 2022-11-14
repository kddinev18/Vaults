/****** Script for SelectTopNRows command from SSMS  ******/
SELECT r.[Id]
      ,t.[Name]
      ,[ServiceId]
      ,[ItemId]
      ,c.[Name]
      ,[From]
      ,[DoneOn]
      ,[To]
      ,[IsPickedUp]
      ,[SatusId]
  FROM [kddinev18].[dbo].[Repairs] r
  JOIN Technicians t
  ON t.Id = r.TechicianId
  JOIN Customers c
  ON c.Id = r.CustomerId