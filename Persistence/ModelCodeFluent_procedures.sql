/* CodeFluent Generated Friday, 18 November 2016 16:19. TargetVersion:Default. Culture:en-US. UiCulture:en-US. Encoding:utf-8 (http://www.softfluent.com) */
set quoted_identifier OFF
GO
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Vehicle_Delete]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Vehicle_Delete]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Vehicle_Save]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Vehicle_Save]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Vehicle_Load]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Vehicle_Load]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Vehicle_LoadAll]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Vehicle_LoadAll]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Vehicle_LoadByVehicleId]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Vehicle_LoadByVehicleId]
GO

CREATE PROCEDURE [dbo].[Vehicle_Delete]
(
 @Vehicle_VehicleId [uniqueidentifier],
 @_rowVersion [rowversion]
)
AS
SET NOCOUNT ON
DECLARE @error int, @rowcount int
DECLARE @tran bit; SELECT @tran = 0
IF @@TRANCOUNT = 0
BEGIN
 SELECT @tran = 1
 BEGIN TRANSACTION
END
DELETE FROM [Vehicle]
    WHERE (([Vehicle].[Vehicle_VehicleId] = @Vehicle_VehicleId) AND ([Vehicle].[_rowVersion] = @_rowVersion))
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
IF(@rowcount = 0)
BEGIN
    IF @tran = 1 ROLLBACK TRANSACTION
    RAISERROR (50001, 16, 1, 'Vehicle_Delete')
    RETURN
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[Vehicle_Save]
(
 @Vehicle_VehicleId [uniqueidentifier],
 @Vehicle_Brand [nvarchar] (256) = NULL,
 @_trackLastWriteUser [nvarchar] (64) = NULL,
 @_rowVersion [rowversion] = NULL
)
AS
SET NOCOUNT ON
DECLARE @error int, @rowcount int
DECLARE @tran bit; SELECT @tran = 0
IF @@TRANCOUNT = 0
BEGIN
 SELECT @tran = 1
 BEGIN TRANSACTION
END
IF(@_trackLastWriteUser IS NULL)
BEGIN
    SELECT DISTINCT @_trackLastWriteUser = SYSTEM_USER 
END
IF(@_rowVersion IS NOT NULL)
BEGIN
    UPDATE [Vehicle] SET
     [Vehicle].[Vehicle_Brand] = @Vehicle_Brand,
     [Vehicle].[_trackLastWriteUser] = @_trackLastWriteUser,
     [Vehicle].[_trackLastWriteTime] = GETDATE()
        WHERE (([Vehicle].[Vehicle_VehicleId] = @Vehicle_VehicleId) AND ([Vehicle].[_rowVersion] = @_rowVersion))
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    IF(@rowcount = 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RAISERROR (50001, 16, 1, 'Vehicle_Save')
        RETURN
    END
    SELECT DISTINCT [Vehicle].[_rowVersion] 
        FROM [Vehicle]
        WHERE ([Vehicle].[Vehicle_VehicleId] = @Vehicle_VehicleId)
END
ELSE
BEGIN
    INSERT INTO [Vehicle] (
        [Vehicle].[Vehicle_VehicleId],
        [Vehicle].[Vehicle_Brand],
        [Vehicle].[_trackCreationUser],
        [Vehicle].[_trackLastWriteUser])
    VALUES (
        @Vehicle_VehicleId,
        @Vehicle_Brand,
        @_trackLastWriteUser,
        @_trackLastWriteUser)
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    SELECT DISTINCT [Vehicle].[_rowVersion] 
        FROM [Vehicle]
        WHERE ([Vehicle].[Vehicle_VehicleId] = @Vehicle_VehicleId)
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[Vehicle_Load]
(
 @VehicleId [uniqueidentifier]
)
AS
SET NOCOUNT ON
SELECT DISTINCT [Vehicle].[Vehicle_VehicleId], [Vehicle].[Vehicle_Brand], [Vehicle].[_trackLastWriteTime], [Vehicle].[_trackCreationTime], [Vehicle].[_trackLastWriteUser], [Vehicle].[_trackCreationUser], [Vehicle].[_rowVersion] 
    FROM [Vehicle]
    WHERE ([Vehicle].[Vehicle_VehicleId] = @VehicleId)

RETURN
GO

CREATE PROCEDURE [dbo].[Vehicle_LoadAll]
(
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [Vehicle].[Vehicle_VehicleId], [Vehicle].[Vehicle_Brand], [Vehicle].[_trackLastWriteTime], [Vehicle].[_trackCreationTime], [Vehicle].[_trackLastWriteUser], [Vehicle].[_trackCreationUser], [Vehicle].[_rowVersion] 
    FROM [Vehicle]

RETURN
GO

CREATE PROCEDURE [dbo].[Vehicle_LoadByVehicleId]
(
 @VehicleId [uniqueidentifier]
)
AS
SET NOCOUNT ON
SELECT DISTINCT [Vehicle].[Vehicle_VehicleId], [Vehicle].[Vehicle_Brand], [Vehicle].[_trackLastWriteTime], [Vehicle].[_trackCreationTime], [Vehicle].[_trackLastWriteUser], [Vehicle].[_trackCreationUser], [Vehicle].[_rowVersion] 
    FROM [Vehicle]
    WHERE ([Vehicle].[Vehicle_VehicleId] = @VehicleId)

RETURN
GO

