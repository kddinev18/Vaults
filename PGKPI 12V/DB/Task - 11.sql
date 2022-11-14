CREATE PROCEDURE InsertCustomer
(
    @Name VARCHAR(50),
    @Address VARCHAR(50),
    @Email VARCHAR(50)
)
AS
BEGIN
    INSERT INTO [Customers] VALUES (@Name, @Address, @Email)
	PRINT 'New Customer Data Inserted'
END

