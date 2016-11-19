/* CodeFluent Generated Saturday, 19 November 2016 13:35. TargetVersion:Default. Culture:fr-FR. UiCulture:fr-FR. Encoding:utf-8 (http://www.softfluent.com) */
set quoted_identifier OFF
GO
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vRole' AND TABLE_SCHEMA = 'dbo')
DROP VIEW [dbo].[vRole]
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vRoleClaim' AND TABLE_SCHEMA = 'dbo')
DROP VIEW [dbo].[vRoleClaim]
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vUser' AND TABLE_SCHEMA = 'dbo')
DROP VIEW [dbo].[vUser]
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vUserClaim' AND TABLE_SCHEMA = 'dbo')
DROP VIEW [dbo].[vUserClaim]
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vUserLogin' AND TABLE_SCHEMA = 'dbo')
DROP VIEW [dbo].[vUserLogin]
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vVehicle' AND TABLE_SCHEMA = 'dbo')
DROP VIEW [dbo].[vVehicle]
GO

CREATE VIEW [dbo].[vRole]
AS
SELECT [Role].[Role_Id], [Role].[Role_Name], [Role].[_rowVersion], [Role].[_trackCreationTime], [Role].[_trackLastWriteTime], [Role].[_trackCreationUser], [Role].[_trackLastWriteUser] 
    FROM [Role]
GO

CREATE VIEW [dbo].[vRoleClaim]
AS
SELECT [RoleClaim].[RoleClaim_Id], [RoleClaim].[RoleClaim_Type], [RoleClaim].[RoleClaim_Value], [RoleClaim].[RoleClaim_ValueType], [RoleClaim].[RoleClaim_Role_Id], [RoleClaim].[_rowVersion], [RoleClaim].[_trackCreationTime], [RoleClaim].[_trackLastWriteTime], [RoleClaim].[_trackCreationUser], [RoleClaim].[_trackLastWriteUser] 
    FROM [RoleClaim]
GO

CREATE VIEW [dbo].[vUser]
AS
SELECT [User].[User_Id], [User].[User_UserName], [User].[User_CreationDateUTC], [User].[User_Email], [User].[User_EmailConfirmed], [User].[User_PhoneNumber], [User].[User_PhoneNumberConfirmed], [User].[User_Password], [User].[User_LastPasswordChangeDate], [User].[User_AccessFailedCount], [User].[User_AccessFailedWindowStart], [User].[User_LockoutEnabled], [User].[User_LockoutEndDateUtc], [User].[User_LastProfileUpdateDate], [User].[User_SecurityStamp], [User].[User_TwoFactorEnabled], [User].[_rowVersion], [User].[_trackCreationTime], [User].[_trackLastWriteTime], [User].[_trackCreationUser], [User].[_trackLastWriteUser] 
    FROM [User]
GO

CREATE VIEW [dbo].[vUserClaim]
AS
SELECT [UserClaim].[UserClaim_Id], [UserClaim].[UserClaim_Type], [UserClaim].[UserClaim_Value], [UserClaim].[UserClaim_ValueType], [UserClaim].[UserClaim_Issuer], [UserClaim].[UserClaim_OriginalIssuer], [UserClaim].[UserClaim_User_Id], [UserClaim].[_rowVersion], [UserClaim].[_trackCreationTime], [UserClaim].[_trackLastWriteTime], [UserClaim].[_trackCreationUser], [UserClaim].[_trackLastWriteUser] 
    FROM [UserClaim]
GO

CREATE VIEW [dbo].[vUserLogin]
AS
SELECT [UserLogin].[UserLogin_Id], [UserLogin].[UserLogin_ProviderName], [UserLogin].[UserLogin_ProviderKey], [UserLogin].[UserLogin_ProviderDisplayName], [UserLogin].[UserLogin_User_Id], [UserLogin].[_rowVersion], [UserLogin].[_trackCreationTime], [UserLogin].[_trackLastWriteTime], [UserLogin].[_trackCreationUser], [UserLogin].[_trackLastWriteUser] 
    FROM [UserLogin]
GO

CREATE VIEW [dbo].[vVehicle]
AS
SELECT [Vehicle].[Vehicle_VehicleId], [Vehicle].[Vehicle_Brand], [Vehicle].[_rowVersion], [Vehicle].[_trackCreationTime], [Vehicle].[_trackLastWriteTime], [Vehicle].[_trackCreationUser], [Vehicle].[_trackLastWriteUser] 
    FROM [Vehicle]
GO

