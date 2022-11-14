/****** TASK - 4  ******/
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
  WHERE DAY([TO])-2 = DAY(GETDATE()) AND MONTH([TO]) = MONTH(GETDATE()) AND DoneOn IS NULL 