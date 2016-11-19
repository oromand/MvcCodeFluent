/* CodeFluent Generated Saturday, 19 November 2016 13:35. TargetVersion:Default. Culture:fr-FR. UiCulture:fr-FR. Encoding:utf-8 (http://www.softfluent.com) */
set quoted_identifier OFF
GO
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Role]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[Role]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[RoleClaim]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[RoleClaim]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[User]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[User]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserClaim]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[UserClaim]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[UserLogin]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[UserLogin]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Vehicle]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[Vehicle]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Role_Users_User_Roles]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[Role_Users_User_Roles]
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Roe_Roi_Rol_Rol]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [FK_Roe_Roi_Rol_Rol]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Ro__Rol_Rol_Rol]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [FK_Ro__Rol_Rol_Rol]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Rol_Rol_Rol]') AND parent_obj = object_id(N'[dbo].[Role]'))
 ALTER TABLE [dbo].[Role] DROP CONSTRAINT [PK_Rol_Rol_Rol]
GO
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Roe_Roi_Rol_Rol]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [FK_Roe_Roi_Rol_Rol]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Ro__Rol_Rol_Rol]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [FK_Ro__Rol_Rol_Rol]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Rol__tc]') AND parent_obj = object_id(N'[dbo].[Role]'))
 ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF_Rol__tc]
GO
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Roe_Roi_Rol_Rol]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [FK_Roe_Roi_Rol_Rol]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Ro__Rol_Rol_Rol]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [FK_Ro__Rol_Rol_Rol]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Rol__tk]') AND parent_obj = object_id(N'[dbo].[Role]'))
 ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF_Rol__tk]
GO
CREATE TABLE [dbo].[Role] (
 [Role_Id] [uniqueidentifier] NOT NULL,
 [Role_Name] [nvarchar] (256) NOT NULL,
 [_trackLastWriteTime] [datetime] NOT NULL CONSTRAINT [DF_Rol__tc] DEFAULT (GETDATE()),
 [_trackCreationTime] [datetime] NOT NULL CONSTRAINT [DF_Rol__tk] DEFAULT (GETDATE()),
 [_trackLastWriteUser] [nvarchar] (64) NOT NULL,
 [_trackCreationUser] [nvarchar] (64) NOT NULL,
 [_rowVersion] [rowversion] NOT NULL,
 CONSTRAINT [PK_Rol_Rol_Rol] PRIMARY KEY NONCLUSTERED
 (

  [Role_Id]
 ) ON [PRIMARY],
 CONSTRAINT [IX_Rol_Roe_Rol] UNIQUE
 (

  [Role_Name] ) ON [PRIMARY]
)
GO

/* no fk for 'PK_Roe_Rol_Roe', tableName='RoleClaim' table='RoleClaim' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Roe_Rol_Roe]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [PK_Roe_Rol_Roe]
GO
/* no fk for 'DF_Roe__tc', tableName='RoleClaim' table='RoleClaim' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Roe__tc]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [DF_Roe__tc]
GO
/* no fk for 'DF_Roe__tk', tableName='RoleClaim' table='RoleClaim' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Roe__tk]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [DF_Roe__tk]
GO
CREATE TABLE [dbo].[RoleClaim] (
 [RoleClaim_Id] [uniqueidentifier] NOT NULL,
 [RoleClaim_Type] [nvarchar] (256) NOT NULL,
 [RoleClaim_Value] [nvarchar] (256) NULL,
 [RoleClaim_ValueType] [nvarchar] (256) NULL,
 [RoleClaim_Role_Id] [uniqueidentifier] NOT NULL,
 [_trackLastWriteTime] [datetime] NOT NULL CONSTRAINT [DF_Roe__tc] DEFAULT (GETDATE()),
 [_trackCreationTime] [datetime] NOT NULL CONSTRAINT [DF_Roe__tk] DEFAULT (GETDATE()),
 [_trackLastWriteUser] [nvarchar] (64) NOT NULL,
 [_trackCreationUser] [nvarchar] (64) NOT NULL,
 [_rowVersion] [rowversion] NOT NULL,
 CONSTRAINT [PK_Roe_Rol_Roe] PRIMARY KEY NONCLUSTERED
 (

  [RoleClaim_Id]
 ) ON [PRIMARY]
)
GO

IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Usr_Usm_Use_Use]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [FK_Usr_Usm_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_UsL_Usg_Use_Use]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [FK_UsL_Usg_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Ro__Use_Use_Use]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [FK_Ro__Use_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Use_Use_Use]') AND parent_obj = object_id(N'[dbo].[User]'))
 ALTER TABLE [dbo].[User] DROP CONSTRAINT [PK_Use_Use_Use]
GO
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Usr_Usm_Use_Use]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [FK_Usr_Usm_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_UsL_Usg_Use_Use]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [FK_UsL_Usg_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Ro__Use_Use_Use]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [FK_Ro__Use_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Use__tc]') AND parent_obj = object_id(N'[dbo].[User]'))
 ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF_Use__tc]
GO
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Usr_Usm_Use_Use]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [FK_Usr_Usm_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_UsL_Usg_Use_Use]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [FK_UsL_Usg_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Ro__Use_Use_Use]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [FK_Ro__Use_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Use__tk]') AND parent_obj = object_id(N'[dbo].[User]'))
 ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF_Use__tk]
GO
CREATE TABLE [dbo].[User] (
 [User_Id] [uniqueidentifier] NOT NULL,
 [User_UserName] [nvarchar] (256) NOT NULL,
 [User_CreationDateUTC] [datetime] NOT NULL,
 [User_Email] [nvarchar] (256) NULL,
 [User_EmailConfirmed] [bit] NOT NULL,
 [User_PhoneNumber] [nvarchar] (256) NULL,
 [User_PhoneNumberConfirmed] [bit] NOT NULL,
 [User_Password] [nvarchar] (256) NULL,
 [User_LastPasswordChangeDate] [datetime] NULL,
 [User_AccessFailedCount] [int] NOT NULL,
 [User_AccessFailedWindowStart] [datetime] NULL,
 [User_LockoutEnabled] [bit] NOT NULL,
 [User_LockoutEndDateUtc] [datetime] NULL,
 [User_LastProfileUpdateDate] [datetime] NULL,
 [User_SecurityStamp] [nvarchar] (256) NOT NULL,
 [User_TwoFactorEnabled] [bit] NOT NULL,
 [_trackLastWriteTime] [datetime] NOT NULL CONSTRAINT [DF_Use__tc] DEFAULT (GETDATE()),
 [_trackCreationTime] [datetime] NOT NULL CONSTRAINT [DF_Use__tk] DEFAULT (GETDATE()),
 [_trackLastWriteUser] [nvarchar] (64) NOT NULL,
 [_trackCreationUser] [nvarchar] (64) NOT NULL,
 [_rowVersion] [rowversion] NOT NULL,
 CONSTRAINT [PK_Use_Use_Use] PRIMARY KEY NONCLUSTERED
 (

  [User_Id]
 ) ON [PRIMARY],
 CONSTRAINT [IX_Use_Usm_Use] UNIQUE
 (

  [User_Email] ) ON [PRIMARY],
 CONSTRAINT [IX_Use_Usr_Use] UNIQUE
 (

  [User_UserName] ) ON [PRIMARY]
)
GO

/* no fk for 'PK_Usr_Use_Usr', tableName='UserClaim' table='UserClaim' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Usr_Use_Usr]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [PK_Usr_Use_Usr]
GO
/* no fk for 'DF_Usr__tc', tableName='UserClaim' table='UserClaim' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Usr__tc]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [DF_Usr__tc]
GO
/* no fk for 'DF_Usr__tk', tableName='UserClaim' table='UserClaim' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Usr__tk]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [DF_Usr__tk]
GO
CREATE TABLE [dbo].[UserClaim] (
 [UserClaim_Id] [uniqueidentifier] NOT NULL,
 [UserClaim_Type] [nvarchar] (256) NOT NULL,
 [UserClaim_Value] [nvarchar] (256) NULL,
 [UserClaim_ValueType] [nvarchar] (256) NULL,
 [UserClaim_Issuer] [nvarchar] (256) NULL,
 [UserClaim_OriginalIssuer] [nvarchar] (256) NULL,
 [UserClaim_User_Id] [uniqueidentifier] NOT NULL,
 [_trackLastWriteTime] [datetime] NOT NULL CONSTRAINT [DF_Usr__tc] DEFAULT (GETDATE()),
 [_trackCreationTime] [datetime] NOT NULL CONSTRAINT [DF_Usr__tk] DEFAULT (GETDATE()),
 [_trackLastWriteUser] [nvarchar] (64) NOT NULL,
 [_trackCreationUser] [nvarchar] (64) NOT NULL,
 [_rowVersion] [rowversion] NOT NULL,
 CONSTRAINT [PK_Usr_Use_Usr] PRIMARY KEY NONCLUSTERED
 (

  [UserClaim_Id]
 ) ON [PRIMARY]
)
GO

/* no fk for 'PK_UsL_Use_UsL', tableName='UserLogin' table='UserLogin' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_UsL_Use_UsL]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [PK_UsL_Use_UsL]
GO
/* no fk for 'DF_UsL__tc', tableName='UserLogin' table='UserLogin' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_UsL__tc]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [DF_UsL__tc]
GO
/* no fk for 'DF_UsL__tk', tableName='UserLogin' table='UserLogin' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_UsL__tk]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [DF_UsL__tk]
GO
CREATE TABLE [dbo].[UserLogin] (
 [UserLogin_Id] [uniqueidentifier] NOT NULL,
 [UserLogin_ProviderName] [nvarchar] (256) NOT NULL,
 [UserLogin_ProviderKey] [nvarchar] (256) NOT NULL,
 [UserLogin_ProviderDisplayName] [nvarchar] (256) NOT NULL,
 [UserLogin_User_Id] [uniqueidentifier] NOT NULL,
 [_trackLastWriteTime] [datetime] NOT NULL CONSTRAINT [DF_UsL__tc] DEFAULT (GETDATE()),
 [_trackCreationTime] [datetime] NOT NULL CONSTRAINT [DF_UsL__tk] DEFAULT (GETDATE()),
 [_trackLastWriteUser] [nvarchar] (64) NOT NULL,
 [_trackCreationUser] [nvarchar] (64) NOT NULL,
 [_rowVersion] [rowversion] NOT NULL,
 CONSTRAINT [PK_UsL_Use_UsL] PRIMARY KEY NONCLUSTERED
 (

  [UserLogin_Id]
 ) ON [PRIMARY]
)
GO

/* no fk for 'PK_Veh_Veh_Veh', tableName='Vehicle' table='Vehicle' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Veh_Veh_Veh]') AND parent_obj = object_id(N'[dbo].[Vehicle]'))
 ALTER TABLE [dbo].[Vehicle] DROP CONSTRAINT [PK_Veh_Veh_Veh]
GO
/* no fk for 'DF_Veh__tc', tableName='Vehicle' table='Vehicle' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Veh__tc]') AND parent_obj = object_id(N'[dbo].[Vehicle]'))
 ALTER TABLE [dbo].[Vehicle] DROP CONSTRAINT [DF_Veh__tc]
GO
/* no fk for 'DF_Veh__tk', tableName='Vehicle' table='Vehicle' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Veh__tk]') AND parent_obj = object_id(N'[dbo].[Vehicle]'))
 ALTER TABLE [dbo].[Vehicle] DROP CONSTRAINT [DF_Veh__tk]
GO
CREATE TABLE [dbo].[Vehicle] (
 [Vehicle_VehicleId] [uniqueidentifier] NOT NULL,
 [Vehicle_Brand] [nvarchar] (256) NULL,
 [_trackLastWriteTime] [datetime] NOT NULL CONSTRAINT [DF_Veh__tc] DEFAULT (GETDATE()),
 [_trackCreationTime] [datetime] NOT NULL CONSTRAINT [DF_Veh__tk] DEFAULT (GETDATE()),
 [_trackLastWriteUser] [nvarchar] (64) NOT NULL,
 [_trackCreationUser] [nvarchar] (64) NOT NULL,
 [_rowVersion] [rowversion] NOT NULL,
 CONSTRAINT [PK_Veh_Veh_Veh] PRIMARY KEY NONCLUSTERED
 (

  [Vehicle_VehicleId]
 ) ON [PRIMARY]
)
GO

/* no fk for 'PK_Ro__Rol_Use_Ro_', tableName='Role_Users_User_Roles' table='Role_Users_User_Roles' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Ro__Rol_Use_Ro_]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [PK_Ro__Rol_Use_Ro_]
GO
CREATE TABLE [dbo].[Role_Users_User_Roles] (
 [Role_Id] [uniqueidentifier] NOT NULL,
 [User_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Ro__Rol_Use_Ro_] PRIMARY KEY NONCLUSTERED
 (

  [Role_Id],
  [User_Id]
 ) ON [PRIMARY]
)
GO

