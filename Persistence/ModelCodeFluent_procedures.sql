/* CodeFluent Generated Saturday, 19 November 2016 13:35. TargetVersion:Default. Culture:en-US. UiCulture:en-US. Encoding:utf-8 (http://www.softfluent.com) */
set quoted_identifier OFF
GO
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Role_Delete]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Role_Delete]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Role_Save]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Role_Save]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[RoleClaim_Delete]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[RoleClaim_Delete]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[RoleClaim_Save]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[RoleClaim_Save]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User_Delete]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[User_Delete]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User_DeleteRoleUsers]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[User_DeleteRoleUsers]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User_Save]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[User_Save]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User_SaveRoleUsers]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[User_SaveRoleUsers]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserClaim_Delete]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserClaim_Delete]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserClaim_Save]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserClaim_Save]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserLogin_Delete]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserLogin_Delete]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserLogin_Save]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserLogin_Save]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Vehicle_Delete]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Vehicle_Delete]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Vehicle_Save]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Vehicle_Save]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Role_Load]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Role_Load]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Role_LoadAll]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Role_LoadAll]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Role_LoadByName]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Role_LoadByName]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Role_LoadRolesUsersByUser]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[Role_LoadRolesUsersByUser]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[RoleClaim_Load]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[RoleClaim_Load]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[RoleClaim_LoadAll]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[RoleClaim_LoadAll]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[RoleClaim_LoadById]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[RoleClaim_LoadById]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[RoleClaim_LoadByRole]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[RoleClaim_LoadByRole]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User_Load]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[User_Load]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User_LoadAll]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[User_LoadAll]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User_LoadByEmail]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[User_LoadByEmail]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User_LoadByUserLoginInfo]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[User_LoadByUserLoginInfo]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User_LoadByUserName]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[User_LoadByUserName]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User_LoadUsersRolesByRole]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[User_LoadUsersRolesByRole]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserClaim_Load]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserClaim_Load]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserClaim_LoadAll]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserClaim_LoadAll]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserClaim_LoadById]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserClaim_LoadById]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserClaim_LoadByUser]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserClaim_LoadByUser]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserLogin_Load]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserLogin_Load]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserLogin_LoadAll]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserLogin_LoadAll]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserLogin_LoadById]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserLogin_LoadById]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserLogin_LoadByUser]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[UserLogin_LoadByUser]
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

CREATE PROCEDURE [dbo].[Role_Delete]
(
 @Role_Id [uniqueidentifier],
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
DELETE FROM [Role_Users_User_Roles]
    WHERE ([Role_Users_User_Roles].[Role_Id] = @Role_Id)
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
DELETE [RoleClaim] FROM [RoleClaim]
    INNER JOIN [Role] ON ([RoleClaim].[RoleClaim_Role_Id] = [Role].[Role_Id])
            LEFT OUTER JOIN [RoleClaim] [RoleClaim$1] ON ([Role].[Role_Id] = [RoleClaim$1].[RoleClaim_Role_Id])
    WHERE ([Role].[Role_Id] = @Role_Id)
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
DELETE FROM [Role]
    WHERE (([Role].[Role_Id] = @Role_Id) AND ([Role].[_rowVersion] = @_rowVersion))
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
IF(@rowcount = 0)
BEGIN
    IF @tran = 1 ROLLBACK TRANSACTION
    RAISERROR (50001, 16, 1, 'Role_Delete')
    RETURN
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[Role_Save]
(
 @Role_Id [uniqueidentifier],
 @Role_Name [nvarchar] (256),
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
    UPDATE [Role] SET
     [Role].[Role_Name] = @Role_Name,
     [Role].[_trackLastWriteUser] = @_trackLastWriteUser,
     [Role].[_trackLastWriteTime] = GETDATE()
        WHERE (([Role].[Role_Id] = @Role_Id) AND ([Role].[_rowVersion] = @_rowVersion))
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    IF(@rowcount = 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RAISERROR (50001, 16, 1, 'Role_Save')
        RETURN
    END
    SELECT DISTINCT [Role].[_rowVersion] 
        FROM [Role]
        WHERE ([Role].[Role_Id] = @Role_Id)
END
ELSE
BEGIN
    INSERT INTO [Role] (
        [Role].[Role_Id],
        [Role].[Role_Name],
        [Role].[_trackCreationUser],
        [Role].[_trackLastWriteUser])
    VALUES (
        @Role_Id,
        @Role_Name,
        @_trackLastWriteUser,
        @_trackLastWriteUser)
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    SELECT DISTINCT [Role].[_rowVersion] 
        FROM [Role]
        WHERE ([Role].[Role_Id] = @Role_Id)
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[RoleClaim_Delete]
(
 @RoleClaim_Id [uniqueidentifier],
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
DELETE FROM [RoleClaim]
    WHERE (([RoleClaim].[RoleClaim_Id] = @RoleClaim_Id) AND ([RoleClaim].[_rowVersion] = @_rowVersion))
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
IF(@rowcount = 0)
BEGIN
    IF @tran = 1 ROLLBACK TRANSACTION
    RAISERROR (50001, 16, 1, 'RoleClaim_Delete')
    RETURN
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[RoleClaim_Save]
(
 @RoleClaim_Id [uniqueidentifier],
 @RoleClaim_Type [nvarchar] (256),
 @RoleClaim_Value [nvarchar] (256) = NULL,
 @RoleClaim_ValueType [nvarchar] (256) = NULL,
 @RoleClaim_Role_Id [uniqueidentifier],
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
    UPDATE [RoleClaim] SET
     [RoleClaim].[RoleClaim_Type] = @RoleClaim_Type,
     [RoleClaim].[RoleClaim_Value] = @RoleClaim_Value,
     [RoleClaim].[RoleClaim_ValueType] = @RoleClaim_ValueType,
     [RoleClaim].[RoleClaim_Role_Id] = @RoleClaim_Role_Id,
     [RoleClaim].[_trackLastWriteUser] = @_trackLastWriteUser,
     [RoleClaim].[_trackLastWriteTime] = GETDATE()
        WHERE (([RoleClaim].[RoleClaim_Id] = @RoleClaim_Id) AND ([RoleClaim].[_rowVersion] = @_rowVersion))
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    IF(@rowcount = 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RAISERROR (50001, 16, 1, 'RoleClaim_Save')
        RETURN
    END
    SELECT DISTINCT [RoleClaim].[_rowVersion] 
        FROM [RoleClaim]
        WHERE ([RoleClaim].[RoleClaim_Id] = @RoleClaim_Id)
END
ELSE
BEGIN
    INSERT INTO [RoleClaim] (
        [RoleClaim].[RoleClaim_Id],
        [RoleClaim].[RoleClaim_Type],
        [RoleClaim].[RoleClaim_Value],
        [RoleClaim].[RoleClaim_ValueType],
        [RoleClaim].[RoleClaim_Role_Id],
        [RoleClaim].[_trackCreationUser],
        [RoleClaim].[_trackLastWriteUser])
    VALUES (
        @RoleClaim_Id,
        @RoleClaim_Type,
        @RoleClaim_Value,
        @RoleClaim_ValueType,
        @RoleClaim_Role_Id,
        @_trackLastWriteUser,
        @_trackLastWriteUser)
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    SELECT DISTINCT [RoleClaim].[_rowVersion] 
        FROM [RoleClaim]
        WHERE ([RoleClaim].[RoleClaim_Id] = @RoleClaim_Id)
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[User_Delete]
(
 @User_Id [uniqueidentifier],
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
DELETE FROM [Role_Users_User_Roles]
    WHERE ([Role_Users_User_Roles].[User_Id] = @User_Id)
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
DELETE [UserClaim] FROM [UserClaim]
    INNER JOIN [User] ON ([UserClaim].[UserClaim_User_Id] = [User].[User_Id])
            LEFT OUTER JOIN [UserClaim] [UserClaim$1] ON ([User].[User_Id] = [UserClaim$1].[UserClaim_User_Id])
    WHERE ([User].[User_Id] = @User_Id)
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
DELETE [UserLogin] FROM [UserLogin]
    INNER JOIN [User] ON ([UserLogin].[UserLogin_User_Id] = [User].[User_Id])
    WHERE ([User].[User_Id] = @User_Id)
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
DELETE FROM [User]
    WHERE (([User].[User_Id] = @User_Id) AND ([User].[_rowVersion] = @_rowVersion))
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
IF(@rowcount = 0)
BEGIN
    IF @tran = 1 ROLLBACK TRANSACTION
    RAISERROR (50001, 16, 1, 'User_Delete')
    RETURN
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[User_DeleteRoleUsers]
(
 @Role_Id [uniqueidentifier] = NULL,
 @User_Id [uniqueidentifier]
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
DELETE FROM [Role_Users_User_Roles]
    WHERE (([Role_Users_User_Roles].[User_Id] = @User_Id) AND ([Role_Users_User_Roles].[Role_Id] = @Role_Id))
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[User_Save]
(
 @User_Id [uniqueidentifier],
 @User_UserName [nvarchar] (256),
 @User_CreationDateUTC [datetime],
 @User_Email [nvarchar] (256) = NULL,
 @User_EmailConfirmed [bit],
 @User_PhoneNumber [nvarchar] (256) = NULL,
 @User_PhoneNumberConfirmed [bit],
 @User_Password [nvarchar] (256) = NULL,
 @User_LastPasswordChangeDate [datetime] = NULL,
 @User_AccessFailedCount [int],
 @User_AccessFailedWindowStart [datetime] = NULL,
 @User_LockoutEnabled [bit],
 @User_LockoutEndDateUtc [datetime] = NULL,
 @User_LastProfileUpdateDate [datetime] = NULL,
 @User_SecurityStamp [nvarchar] (256),
 @User_TwoFactorEnabled [bit],
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
    UPDATE [User] SET
     [User].[User_UserName] = @User_UserName,
     [User].[User_CreationDateUTC] = @User_CreationDateUTC,
     [User].[User_Email] = @User_Email,
     [User].[User_EmailConfirmed] = @User_EmailConfirmed,
     [User].[User_PhoneNumber] = @User_PhoneNumber,
     [User].[User_PhoneNumberConfirmed] = @User_PhoneNumberConfirmed,
     [User].[User_Password] = @User_Password,
     [User].[User_LastPasswordChangeDate] = @User_LastPasswordChangeDate,
     [User].[User_AccessFailedCount] = @User_AccessFailedCount,
     [User].[User_AccessFailedWindowStart] = @User_AccessFailedWindowStart,
     [User].[User_LockoutEnabled] = @User_LockoutEnabled,
     [User].[User_LockoutEndDateUtc] = @User_LockoutEndDateUtc,
     [User].[User_LastProfileUpdateDate] = @User_LastProfileUpdateDate,
     [User].[User_SecurityStamp] = @User_SecurityStamp,
     [User].[User_TwoFactorEnabled] = @User_TwoFactorEnabled,
     [User].[_trackLastWriteUser] = @_trackLastWriteUser,
     [User].[_trackLastWriteTime] = GETDATE()
        WHERE (([User].[User_Id] = @User_Id) AND ([User].[_rowVersion] = @_rowVersion))
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    IF(@rowcount = 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RAISERROR (50001, 16, 1, 'User_Save')
        RETURN
    END
    SELECT DISTINCT [User].[_rowVersion] 
        FROM [User]
        WHERE ([User].[User_Id] = @User_Id)
END
ELSE
BEGIN
    INSERT INTO [User] (
        [User].[User_Id],
        [User].[User_UserName],
        [User].[User_CreationDateUTC],
        [User].[User_Email],
        [User].[User_EmailConfirmed],
        [User].[User_PhoneNumber],
        [User].[User_PhoneNumberConfirmed],
        [User].[User_Password],
        [User].[User_LastPasswordChangeDate],
        [User].[User_AccessFailedCount],
        [User].[User_AccessFailedWindowStart],
        [User].[User_LockoutEnabled],
        [User].[User_LockoutEndDateUtc],
        [User].[User_LastProfileUpdateDate],
        [User].[User_SecurityStamp],
        [User].[User_TwoFactorEnabled],
        [User].[_trackCreationUser],
        [User].[_trackLastWriteUser])
    VALUES (
        @User_Id,
        @User_UserName,
        @User_CreationDateUTC,
        @User_Email,
        @User_EmailConfirmed,
        @User_PhoneNumber,
        @User_PhoneNumberConfirmed,
        @User_Password,
        @User_LastPasswordChangeDate,
        @User_AccessFailedCount,
        @User_AccessFailedWindowStart,
        @User_LockoutEnabled,
        @User_LockoutEndDateUtc,
        @User_LastProfileUpdateDate,
        @User_SecurityStamp,
        @User_TwoFactorEnabled,
        @_trackLastWriteUser,
        @_trackLastWriteUser)
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    SELECT DISTINCT [User].[_rowVersion] 
        FROM [User]
        WHERE ([User].[User_Id] = @User_Id)
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[User_SaveRoleUsers]
(
 @Role_Id [uniqueidentifier],
 @User_Id [uniqueidentifier]
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
SELECT DISTINCT TOP 1 [Role_Users_User_Roles].[Role_Id] 
    FROM [Role_Users_User_Roles]
    WHERE (([Role_Users_User_Roles].[User_Id] = @User_Id) AND ([Role_Users_User_Roles].[Role_Id] = @Role_Id))
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
IF(@error != 0)
BEGIN
    IF @tran = 1 ROLLBACK TRANSACTION
    RETURN
END
IF(@rowcount = 0)
BEGIN
    INSERT INTO [Role_Users_User_Roles] (
        [Role_Users_User_Roles].[Role_Id],
        [Role_Users_User_Roles].[User_Id])
    VALUES (
        @Role_Id,
        @User_Id)
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[UserClaim_Delete]
(
 @UserClaim_Id [uniqueidentifier],
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
DELETE FROM [UserClaim]
    WHERE (([UserClaim].[UserClaim_Id] = @UserClaim_Id) AND ([UserClaim].[_rowVersion] = @_rowVersion))
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
IF(@rowcount = 0)
BEGIN
    IF @tran = 1 ROLLBACK TRANSACTION
    RAISERROR (50001, 16, 1, 'UserClaim_Delete')
    RETURN
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[UserClaim_Save]
(
 @UserClaim_Id [uniqueidentifier],
 @UserClaim_Type [nvarchar] (256),
 @UserClaim_Value [nvarchar] (256) = NULL,
 @UserClaim_ValueType [nvarchar] (256) = NULL,
 @UserClaim_Issuer [nvarchar] (256) = NULL,
 @UserClaim_OriginalIssuer [nvarchar] (256) = NULL,
 @UserClaim_User_Id [uniqueidentifier],
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
    UPDATE [UserClaim] SET
     [UserClaim].[UserClaim_Type] = @UserClaim_Type,
     [UserClaim].[UserClaim_Value] = @UserClaim_Value,
     [UserClaim].[UserClaim_ValueType] = @UserClaim_ValueType,
     [UserClaim].[UserClaim_Issuer] = @UserClaim_Issuer,
     [UserClaim].[UserClaim_OriginalIssuer] = @UserClaim_OriginalIssuer,
     [UserClaim].[UserClaim_User_Id] = @UserClaim_User_Id,
     [UserClaim].[_trackLastWriteUser] = @_trackLastWriteUser,
     [UserClaim].[_trackLastWriteTime] = GETDATE()
        WHERE (([UserClaim].[UserClaim_Id] = @UserClaim_Id) AND ([UserClaim].[_rowVersion] = @_rowVersion))
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    IF(@rowcount = 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RAISERROR (50001, 16, 1, 'UserClaim_Save')
        RETURN
    END
    SELECT DISTINCT [UserClaim].[_rowVersion] 
        FROM [UserClaim]
        WHERE ([UserClaim].[UserClaim_Id] = @UserClaim_Id)
END
ELSE
BEGIN
    INSERT INTO [UserClaim] (
        [UserClaim].[UserClaim_Id],
        [UserClaim].[UserClaim_Type],
        [UserClaim].[UserClaim_Value],
        [UserClaim].[UserClaim_ValueType],
        [UserClaim].[UserClaim_Issuer],
        [UserClaim].[UserClaim_OriginalIssuer],
        [UserClaim].[UserClaim_User_Id],
        [UserClaim].[_trackCreationUser],
        [UserClaim].[_trackLastWriteUser])
    VALUES (
        @UserClaim_Id,
        @UserClaim_Type,
        @UserClaim_Value,
        @UserClaim_ValueType,
        @UserClaim_Issuer,
        @UserClaim_OriginalIssuer,
        @UserClaim_User_Id,
        @_trackLastWriteUser,
        @_trackLastWriteUser)
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    SELECT DISTINCT [UserClaim].[_rowVersion] 
        FROM [UserClaim]
        WHERE ([UserClaim].[UserClaim_Id] = @UserClaim_Id)
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[UserLogin_Delete]
(
 @UserLogin_Id [uniqueidentifier],
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
DELETE FROM [UserLogin]
    WHERE (([UserLogin].[UserLogin_Id] = @UserLogin_Id) AND ([UserLogin].[_rowVersion] = @_rowVersion))
SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
IF(@rowcount = 0)
BEGIN
    IF @tran = 1 ROLLBACK TRANSACTION
    RAISERROR (50001, 16, 1, 'UserLogin_Delete')
    RETURN
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
GO

CREATE PROCEDURE [dbo].[UserLogin_Save]
(
 @UserLogin_Id [uniqueidentifier],
 @UserLogin_ProviderName [nvarchar] (256),
 @UserLogin_ProviderKey [nvarchar] (256),
 @UserLogin_ProviderDisplayName [nvarchar] (256),
 @UserLogin_User_Id [uniqueidentifier],
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
    UPDATE [UserLogin] SET
     [UserLogin].[UserLogin_ProviderName] = @UserLogin_ProviderName,
     [UserLogin].[UserLogin_ProviderKey] = @UserLogin_ProviderKey,
     [UserLogin].[UserLogin_ProviderDisplayName] = @UserLogin_ProviderDisplayName,
     [UserLogin].[UserLogin_User_Id] = @UserLogin_User_Id,
     [UserLogin].[_trackLastWriteUser] = @_trackLastWriteUser,
     [UserLogin].[_trackLastWriteTime] = GETDATE()
        WHERE (([UserLogin].[UserLogin_Id] = @UserLogin_Id) AND ([UserLogin].[_rowVersion] = @_rowVersion))
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    IF(@rowcount = 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RAISERROR (50001, 16, 1, 'UserLogin_Save')
        RETURN
    END
    SELECT DISTINCT [UserLogin].[_rowVersion] 
        FROM [UserLogin]
        WHERE ([UserLogin].[UserLogin_Id] = @UserLogin_Id)
END
ELSE
BEGIN
    INSERT INTO [UserLogin] (
        [UserLogin].[UserLogin_Id],
        [UserLogin].[UserLogin_ProviderName],
        [UserLogin].[UserLogin_ProviderKey],
        [UserLogin].[UserLogin_ProviderDisplayName],
        [UserLogin].[UserLogin_User_Id],
        [UserLogin].[_trackCreationUser],
        [UserLogin].[_trackLastWriteUser])
    VALUES (
        @UserLogin_Id,
        @UserLogin_ProviderName,
        @UserLogin_ProviderKey,
        @UserLogin_ProviderDisplayName,
        @UserLogin_User_Id,
        @_trackLastWriteUser,
        @_trackLastWriteUser)
    SELECT @error = @@ERROR, @rowcount = @@ROWCOUNT
    IF(@error != 0)
    BEGIN
        IF @tran = 1 ROLLBACK TRANSACTION
        RETURN
    END
    SELECT DISTINCT [UserLogin].[_rowVersion] 
        FROM [UserLogin]
        WHERE ([UserLogin].[UserLogin_Id] = @UserLogin_Id)
END
IF @tran = 1 COMMIT TRANSACTION

RETURN
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

CREATE PROCEDURE [dbo].[Role_Load]
(
 @Id [uniqueidentifier]
)
AS
SET NOCOUNT ON
SELECT DISTINCT [Role].[Role_Id], [Role].[Role_Name], [Role].[_trackLastWriteTime], [Role].[_trackCreationTime], [Role].[_trackLastWriteUser], [Role].[_trackCreationUser], [Role].[_rowVersion] 
    FROM [Role]
    WHERE ([Role].[Role_Id] = @Id)

RETURN
GO

CREATE PROCEDURE [dbo].[Role_LoadAll]
(
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [Role].[Role_Id], [Role].[Role_Name], [Role].[_trackLastWriteTime], [Role].[_trackCreationTime], [Role].[_trackLastWriteUser], [Role].[_trackCreationUser], [Role].[_rowVersion] 
    FROM [Role]

RETURN
GO

CREATE PROCEDURE [dbo].[Role_LoadByName]
(
 @Name [nvarchar] (256)
)
AS
SET NOCOUNT ON
SELECT DISTINCT [Role].[Role_Id], [Role].[Role_Name], [Role].[_trackLastWriteTime], [Role].[_trackCreationTime], [Role].[_trackLastWriteUser], [Role].[_trackCreationUser], [Role].[_rowVersion] 
    FROM [Role]
    WHERE ([Role].[Role_Name] = @Name)

RETURN
GO

CREATE PROCEDURE [dbo].[Role_LoadRolesUsersByUser]
(
 @UserId [uniqueidentifier],
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [Role].[Role_Id], [Role].[Role_Name], [Role].[_trackLastWriteTime], [Role].[_trackCreationTime], [Role].[_trackLastWriteUser], [Role].[_trackCreationUser], [Role].[_rowVersion] 
    FROM [Role]
        LEFT OUTER JOIN [Role_Users_User_Roles] ON ([Role].[Role_Id] = [Role_Users_User_Roles].[Role_Id])
                LEFT OUTER JOIN [User] ON ([Role_Users_User_Roles].[User_Id] = [User].[User_Id])
    WHERE ([Role_Users_User_Roles].[User_Id] = @UserId)

RETURN
GO

CREATE PROCEDURE [dbo].[RoleClaim_Load]
(
 @Id [uniqueidentifier]
)
AS
SET NOCOUNT ON
SELECT DISTINCT [RoleClaim].[RoleClaim_Id], [RoleClaim].[RoleClaim_Type], [RoleClaim].[RoleClaim_Value], [RoleClaim].[RoleClaim_ValueType], [RoleClaim].[RoleClaim_Role_Id], [RoleClaim].[_trackLastWriteTime], [RoleClaim].[_trackCreationTime], [RoleClaim].[_trackLastWriteUser], [RoleClaim].[_trackCreationUser], [RoleClaim].[_rowVersion] 
    FROM [RoleClaim]
    WHERE ([RoleClaim].[RoleClaim_Id] = @Id)

RETURN
GO

CREATE PROCEDURE [dbo].[RoleClaim_LoadAll]
(
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [RoleClaim].[RoleClaim_Id], [RoleClaim].[RoleClaim_Type], [RoleClaim].[RoleClaim_Value], [RoleClaim].[RoleClaim_ValueType], [RoleClaim].[RoleClaim_Role_Id], [RoleClaim].[_trackLastWriteTime], [RoleClaim].[_trackCreationTime], [RoleClaim].[_trackLastWriteUser], [RoleClaim].[_trackCreationUser], [RoleClaim].[_rowVersion] 
    FROM [RoleClaim]

RETURN
GO

CREATE PROCEDURE [dbo].[RoleClaim_LoadById]
(
 @Id [uniqueidentifier]
)
AS
SET NOCOUNT ON
SELECT DISTINCT [RoleClaim].[RoleClaim_Id], [RoleClaim].[RoleClaim_Type], [RoleClaim].[RoleClaim_Value], [RoleClaim].[RoleClaim_ValueType], [RoleClaim].[RoleClaim_Role_Id], [RoleClaim].[_trackLastWriteTime], [RoleClaim].[_trackCreationTime], [RoleClaim].[_trackLastWriteUser], [RoleClaim].[_trackCreationUser], [RoleClaim].[_rowVersion] 
    FROM [RoleClaim]
    WHERE ([RoleClaim].[RoleClaim_Id] = @Id)

RETURN
GO

CREATE PROCEDURE [dbo].[RoleClaim_LoadByRole]
(
 @RoleId [uniqueidentifier],
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [RoleClaim].[RoleClaim_Id], [RoleClaim].[RoleClaim_Type], [RoleClaim].[RoleClaim_Value], [RoleClaim].[RoleClaim_ValueType], [RoleClaim].[RoleClaim_Role_Id], [RoleClaim].[_trackLastWriteTime], [RoleClaim].[_trackCreationTime], [RoleClaim].[_trackLastWriteUser], [RoleClaim].[_trackCreationUser], [RoleClaim].[_rowVersion] 
    FROM [RoleClaim]
    WHERE ([RoleClaim].[RoleClaim_Role_Id] = @RoleId)

RETURN
GO

CREATE PROCEDURE [dbo].[User_Load]
(
 @Id [uniqueidentifier]
)
AS
SET NOCOUNT ON
SELECT DISTINCT [User].[User_Id], [User].[User_UserName], [User].[User_CreationDateUTC], [User].[User_Email], [User].[User_EmailConfirmed], [User].[User_PhoneNumber], [User].[User_PhoneNumberConfirmed], [User].[User_Password], [User].[User_LastPasswordChangeDate], [User].[User_AccessFailedCount], [User].[User_AccessFailedWindowStart], [User].[User_LockoutEnabled], [User].[User_LockoutEndDateUtc], [User].[User_LastProfileUpdateDate], [User].[User_SecurityStamp], [User].[User_TwoFactorEnabled], [User].[_trackLastWriteTime], [User].[_trackCreationTime], [User].[_trackLastWriteUser], [User].[_trackCreationUser], [User].[_rowVersion] 
    FROM [User]
    WHERE ([User].[User_Id] = @Id)

RETURN
GO

CREATE PROCEDURE [dbo].[User_LoadAll]
(
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [User].[User_Id], [User].[User_UserName], [User].[User_CreationDateUTC], [User].[User_Email], [User].[User_EmailConfirmed], [User].[User_PhoneNumber], [User].[User_PhoneNumberConfirmed], [User].[User_Password], [User].[User_LastPasswordChangeDate], [User].[User_AccessFailedCount], [User].[User_AccessFailedWindowStart], [User].[User_LockoutEnabled], [User].[User_LockoutEndDateUtc], [User].[User_LastProfileUpdateDate], [User].[User_SecurityStamp], [User].[User_TwoFactorEnabled], [User].[_trackLastWriteTime], [User].[_trackCreationTime], [User].[_trackLastWriteUser], [User].[_trackCreationUser], [User].[_rowVersion] 
    FROM [User]

RETURN
GO

CREATE PROCEDURE [dbo].[User_LoadByEmail]
(
 @Email [nvarchar] (256)
)
AS
SET NOCOUNT ON
SELECT DISTINCT [User].[User_Id], [User].[User_UserName], [User].[User_CreationDateUTC], [User].[User_Email], [User].[User_EmailConfirmed], [User].[User_PhoneNumber], [User].[User_PhoneNumberConfirmed], [User].[User_Password], [User].[User_LastPasswordChangeDate], [User].[User_AccessFailedCount], [User].[User_AccessFailedWindowStart], [User].[User_LockoutEnabled], [User].[User_LockoutEndDateUtc], [User].[User_LastProfileUpdateDate], [User].[User_SecurityStamp], [User].[User_TwoFactorEnabled], [User].[_trackLastWriteTime], [User].[_trackCreationTime], [User].[_trackLastWriteUser], [User].[_trackCreationUser], [User].[_rowVersion] 
    FROM [User]
    WHERE ([User].[User_Email] = @Email)

RETURN
GO

CREATE PROCEDURE [dbo].[User_LoadByUserLoginInfo]
(
 @providerKey [nvarchar] (256),
 @providerName [nvarchar] (256)
)
AS
SET NOCOUNT ON
SELECT DISTINCT [User].[User_Id], [User].[User_UserName], [User].[User_CreationDateUTC], [User].[User_Email], [User].[User_EmailConfirmed], [User].[User_PhoneNumber], [User].[User_PhoneNumberConfirmed], [User].[User_Password], [User].[User_LastPasswordChangeDate], [User].[User_AccessFailedCount], [User].[User_AccessFailedWindowStart], [User].[User_LockoutEnabled], [User].[User_LockoutEndDateUtc], [User].[User_LastProfileUpdateDate], [User].[User_SecurityStamp], [User].[User_TwoFactorEnabled], [User].[_trackLastWriteTime], [User].[_trackCreationTime], [User].[_trackLastWriteUser], [User].[_trackCreationUser], [User].[_rowVersion] 
    FROM [User]
        LEFT OUTER JOIN [UserLogin] ON ([User].[User_Id] = [UserLogin].[UserLogin_User_Id])
    WHERE (([UserLogin].[UserLogin_ProviderKey] = @providerKey) AND ([UserLogin].[UserLogin_ProviderName] = @providerName))

RETURN
GO

CREATE PROCEDURE [dbo].[User_LoadByUserName]
(
 @UserName [nvarchar] (256)
)
AS
SET NOCOUNT ON
SELECT DISTINCT [User].[User_Id], [User].[User_UserName], [User].[User_CreationDateUTC], [User].[User_Email], [User].[User_EmailConfirmed], [User].[User_PhoneNumber], [User].[User_PhoneNumberConfirmed], [User].[User_Password], [User].[User_LastPasswordChangeDate], [User].[User_AccessFailedCount], [User].[User_AccessFailedWindowStart], [User].[User_LockoutEnabled], [User].[User_LockoutEndDateUtc], [User].[User_LastProfileUpdateDate], [User].[User_SecurityStamp], [User].[User_TwoFactorEnabled], [User].[_trackLastWriteTime], [User].[_trackCreationTime], [User].[_trackLastWriteUser], [User].[_trackCreationUser], [User].[_rowVersion] 
    FROM [User]
    WHERE ([User].[User_UserName] = @UserName)

RETURN
GO

CREATE PROCEDURE [dbo].[User_LoadUsersRolesByRole]
(
 @RoleId [uniqueidentifier],
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [User].[User_Id], [User].[User_UserName], [User].[User_CreationDateUTC], [User].[User_Email], [User].[User_EmailConfirmed], [User].[User_PhoneNumber], [User].[User_PhoneNumberConfirmed], [User].[User_Password], [User].[User_LastPasswordChangeDate], [User].[User_AccessFailedCount], [User].[User_AccessFailedWindowStart], [User].[User_LockoutEnabled], [User].[User_LockoutEndDateUtc], [User].[User_LastProfileUpdateDate], [User].[User_SecurityStamp], [User].[User_TwoFactorEnabled], [User].[_trackLastWriteTime], [User].[_trackCreationTime], [User].[_trackLastWriteUser], [User].[_trackCreationUser], [User].[_rowVersion] 
    FROM [User]
        LEFT OUTER JOIN [Role_Users_User_Roles] ON ([User].[User_Id] = [Role_Users_User_Roles].[User_Id])
                LEFT OUTER JOIN [Role] ON ([Role_Users_User_Roles].[Role_Id] = [Role].[Role_Id])
    WHERE ([Role_Users_User_Roles].[Role_Id] = @RoleId)

RETURN
GO

CREATE PROCEDURE [dbo].[UserClaim_Load]
(
 @Id [uniqueidentifier]
)
AS
SET NOCOUNT ON
SELECT DISTINCT [UserClaim].[UserClaim_Id], [UserClaim].[UserClaim_Type], [UserClaim].[UserClaim_Value], [UserClaim].[UserClaim_ValueType], [UserClaim].[UserClaim_Issuer], [UserClaim].[UserClaim_OriginalIssuer], [UserClaim].[UserClaim_User_Id], [UserClaim].[_trackLastWriteTime], [UserClaim].[_trackCreationTime], [UserClaim].[_trackLastWriteUser], [UserClaim].[_trackCreationUser], [UserClaim].[_rowVersion] 
    FROM [UserClaim]
    WHERE ([UserClaim].[UserClaim_Id] = @Id)

RETURN
GO

CREATE PROCEDURE [dbo].[UserClaim_LoadAll]
(
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [UserClaim].[UserClaim_Id], [UserClaim].[UserClaim_Type], [UserClaim].[UserClaim_Value], [UserClaim].[UserClaim_ValueType], [UserClaim].[UserClaim_Issuer], [UserClaim].[UserClaim_OriginalIssuer], [UserClaim].[UserClaim_User_Id], [UserClaim].[_trackLastWriteTime], [UserClaim].[_trackCreationTime], [UserClaim].[_trackLastWriteUser], [UserClaim].[_trackCreationUser], [UserClaim].[_rowVersion] 
    FROM [UserClaim]

RETURN
GO

CREATE PROCEDURE [dbo].[UserClaim_LoadById]
(
 @Id [uniqueidentifier]
)
AS
SET NOCOUNT ON
SELECT DISTINCT [UserClaim].[UserClaim_Id], [UserClaim].[UserClaim_Type], [UserClaim].[UserClaim_Value], [UserClaim].[UserClaim_ValueType], [UserClaim].[UserClaim_Issuer], [UserClaim].[UserClaim_OriginalIssuer], [UserClaim].[UserClaim_User_Id], [UserClaim].[_trackLastWriteTime], [UserClaim].[_trackCreationTime], [UserClaim].[_trackLastWriteUser], [UserClaim].[_trackCreationUser], [UserClaim].[_rowVersion] 
    FROM [UserClaim]
    WHERE ([UserClaim].[UserClaim_Id] = @Id)

RETURN
GO

CREATE PROCEDURE [dbo].[UserClaim_LoadByUser]
(
 @UserId [uniqueidentifier],
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [UserClaim].[UserClaim_Id], [UserClaim].[UserClaim_Type], [UserClaim].[UserClaim_Value], [UserClaim].[UserClaim_ValueType], [UserClaim].[UserClaim_Issuer], [UserClaim].[UserClaim_OriginalIssuer], [UserClaim].[UserClaim_User_Id], [UserClaim].[_trackLastWriteTime], [UserClaim].[_trackCreationTime], [UserClaim].[_trackLastWriteUser], [UserClaim].[_trackCreationUser], [UserClaim].[_rowVersion] 
    FROM [UserClaim]
    WHERE ([UserClaim].[UserClaim_User_Id] = @UserId)

RETURN
GO

CREATE PROCEDURE [dbo].[UserLogin_Load]
(
 @Id [uniqueidentifier]
)
AS
SET NOCOUNT ON
SELECT DISTINCT [UserLogin].[UserLogin_Id], [UserLogin].[UserLogin_ProviderName], [UserLogin].[UserLogin_ProviderKey], [UserLogin].[UserLogin_ProviderDisplayName], [UserLogin].[UserLogin_User_Id], [UserLogin].[_trackLastWriteTime], [UserLogin].[_trackCreationTime], [UserLogin].[_trackLastWriteUser], [UserLogin].[_trackCreationUser], [UserLogin].[_rowVersion] 
    FROM [UserLogin]
    WHERE ([UserLogin].[UserLogin_Id] = @Id)

RETURN
GO

CREATE PROCEDURE [dbo].[UserLogin_LoadAll]
(
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [UserLogin].[UserLogin_Id], [UserLogin].[UserLogin_ProviderName], [UserLogin].[UserLogin_ProviderKey], [UserLogin].[UserLogin_ProviderDisplayName], [UserLogin].[UserLogin_User_Id], [UserLogin].[_trackLastWriteTime], [UserLogin].[_trackCreationTime], [UserLogin].[_trackLastWriteUser], [UserLogin].[_trackCreationUser], [UserLogin].[_rowVersion] 
    FROM [UserLogin]

RETURN
GO

CREATE PROCEDURE [dbo].[UserLogin_LoadById]
(
 @Id [uniqueidentifier]
)
AS
SET NOCOUNT ON
SELECT DISTINCT [UserLogin].[UserLogin_Id], [UserLogin].[UserLogin_ProviderName], [UserLogin].[UserLogin_ProviderKey], [UserLogin].[UserLogin_ProviderDisplayName], [UserLogin].[UserLogin_User_Id], [UserLogin].[_trackLastWriteTime], [UserLogin].[_trackCreationTime], [UserLogin].[_trackLastWriteUser], [UserLogin].[_trackCreationUser], [UserLogin].[_rowVersion] 
    FROM [UserLogin]
    WHERE ([UserLogin].[UserLogin_Id] = @Id)

RETURN
GO

CREATE PROCEDURE [dbo].[UserLogin_LoadByUser]
(
 @UserId [uniqueidentifier],
 @_orderBy0 [nvarchar] (64) = NULL,
 @_orderByDirection0 [bit] = 0
)
AS
SET NOCOUNT ON
SELECT DISTINCT [UserLogin].[UserLogin_Id], [UserLogin].[UserLogin_ProviderName], [UserLogin].[UserLogin_ProviderKey], [UserLogin].[UserLogin_ProviderDisplayName], [UserLogin].[UserLogin_User_Id], [UserLogin].[_trackLastWriteTime], [UserLogin].[_trackCreationTime], [UserLogin].[_trackLastWriteUser], [UserLogin].[_trackCreationUser], [UserLogin].[_rowVersion] 
    FROM [UserLogin]
    WHERE ([UserLogin].[UserLogin_User_Id] = @UserId)

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

