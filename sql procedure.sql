USE [register_db]
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertDb]    Script Date: 9/3/2024 12:14:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[usp_InsertDb] 
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Email VARCHAR(50),
    @Password VARCHAR(50)
AS   
BEGIN
    INSERT INTO user_info (FirstName, LastName, Email, Password)
    VALUES (@FirstName, @LastName, @Email, @Password)
END;



/****** Object:  StoredProcedure [dbo].[usp_UserData]    Script Date: 9/3/2024 12:15:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[usp_UserData]
	
	AS
	BEGIN

	SELECT * FROM user_info

	END