/* CodeFluent Generated Saturday, 19 November 2016 13:35. TargetVersion:Default. Culture:fr-FR. UiCulture:fr-FR. Encoding:utf-8 (http://www.softfluent.com) */
set quoted_identifier OFF
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
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Rol_Rol_Rol]') AND parent_obj = object_id(N'[dbo].[Role]'))
 ALTER TABLE [dbo].[Role] DROP CONSTRAINT [PK_Rol_Rol_Rol]
GO
ALTER TABLE [dbo].[Role] ADD CONSTRAINT [PK_Rol_Rol_Rol] PRIMARY KEY NONCLUSTERED
(

 [Role_Id]
 ) ON [PRIMARY]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Roe_Roi_Rol_Rol]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [FK_Roe_Roi_Rol_Rol]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Ro__Rol_Rol_Rol]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [FK_Ro__Rol_Rol_Rol]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[IX_Rol_Roe_Rol]') AND parent_obj = object_id(N'[dbo].[Role]'))
 ALTER TABLE [dbo].[Role] DROP CONSTRAINT [IX_Rol_Roe_Rol]
GO
ALTER TABLE [dbo].[Role] ADD CONSTRAINT [IX_Rol_Roe_Rol] UNIQUE
(

  [Role_Name] ) ON [PRIMARY]
/* no fk for 'PK_Roe_Rol_Roe', tableName='RoleClaim' table='RoleClaim' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Roe_Rol_Roe]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [PK_Roe_Rol_Roe]
GO
/* no fk for 'PK_Roe_Rol_Roe', tableName='RoleClaim' table='RoleClaim' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Roe_Rol_Roe]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [PK_Roe_Rol_Roe]
GO
ALTER TABLE [dbo].[RoleClaim] ADD CONSTRAINT [PK_Roe_Rol_Roe] PRIMARY KEY NONCLUSTERED
(

 [RoleClaim_Id]
 ) ON [PRIMARY]
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
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Use_Use_Use]') AND parent_obj = object_id(N'[dbo].[User]'))
 ALTER TABLE [dbo].[User] DROP CONSTRAINT [PK_Use_Use_Use]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK_Use_Use_Use] PRIMARY KEY NONCLUSTERED
(

 [User_Id]
 ) ON [PRIMARY]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Usr_Usm_Use_Use]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [FK_Usr_Usm_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_UsL_Usg_Use_Use]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [FK_UsL_Usg_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Ro__Use_Use_Use]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [FK_Ro__Use_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[IX_Use_Usm_Use]') AND parent_obj = object_id(N'[dbo].[User]'))
 ALTER TABLE [dbo].[User] DROP CONSTRAINT [IX_Use_Usm_Use]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [IX_Use_Usm_Use] UNIQUE
(

  [User_Email] ) ON [PRIMARY]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Usr_Usm_Use_Use]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [FK_Usr_Usm_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_UsL_Usg_Use_Use]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [FK_UsL_Usg_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[FK_Ro__Use_Use_Use]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [FK_Ro__Use_Use_Use]
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[IX_Use_Usr_Use]') AND parent_obj = object_id(N'[dbo].[User]'))
 ALTER TABLE [dbo].[User] DROP CONSTRAINT [IX_Use_Usr_Use]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [IX_Use_Usr_Use] UNIQUE
(

  [User_UserName] ) ON [PRIMARY]
/* no fk for 'PK_Usr_Use_Usr', tableName='UserClaim' table='UserClaim' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Usr_Use_Usr]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [PK_Usr_Use_Usr]
GO
/* no fk for 'PK_Usr_Use_Usr', tableName='UserClaim' table='UserClaim' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Usr_Use_Usr]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [PK_Usr_Use_Usr]
GO
ALTER TABLE [dbo].[UserClaim] ADD CONSTRAINT [PK_Usr_Use_Usr] PRIMARY KEY NONCLUSTERED
(

 [UserClaim_Id]
 ) ON [PRIMARY]
/* no fk for 'PK_UsL_Use_UsL', tableName='UserLogin' table='UserLogin' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_UsL_Use_UsL]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [PK_UsL_Use_UsL]
GO
/* no fk for 'PK_UsL_Use_UsL', tableName='UserLogin' table='UserLogin' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_UsL_Use_UsL]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [PK_UsL_Use_UsL]
GO
ALTER TABLE [dbo].[UserLogin] ADD CONSTRAINT [PK_UsL_Use_UsL] PRIMARY KEY NONCLUSTERED
(

 [UserLogin_Id]
 ) ON [PRIMARY]
/* no fk for 'PK_Veh_Veh_Veh', tableName='Vehicle' table='Vehicle' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Veh_Veh_Veh]') AND parent_obj = object_id(N'[dbo].[Vehicle]'))
 ALTER TABLE [dbo].[Vehicle] DROP CONSTRAINT [PK_Veh_Veh_Veh]
GO
/* no fk for 'PK_Veh_Veh_Veh', tableName='Vehicle' table='Vehicle' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Veh_Veh_Veh]') AND parent_obj = object_id(N'[dbo].[Vehicle]'))
 ALTER TABLE [dbo].[Vehicle] DROP CONSTRAINT [PK_Veh_Veh_Veh]
GO
ALTER TABLE [dbo].[Vehicle] ADD CONSTRAINT [PK_Veh_Veh_Veh] PRIMARY KEY NONCLUSTERED
(

 [Vehicle_VehicleId]
 ) ON [PRIMARY]
/* no fk for 'PK_Ro__Rol_Use_Ro_', tableName='Role_Users_User_Roles' table='Role_Users_User_Roles' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Ro__Rol_Use_Ro_]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [PK_Ro__Rol_Use_Ro_]
GO
/* no fk for 'PK_Ro__Rol_Use_Ro_', tableName='Role_Users_User_Roles' table='Role_Users_User_Roles' */
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[PK_Ro__Rol_Use_Ro_]') AND parent_obj = object_id(N'[dbo].[Role_Users_User_Roles]'))
 ALTER TABLE [dbo].[Role_Users_User_Roles] DROP CONSTRAINT [PK_Ro__Rol_Use_Ro_]
GO
ALTER TABLE [dbo].[Role_Users_User_Roles] ADD CONSTRAINT [PK_Ro__Rol_Use_Ro_] PRIMARY KEY NONCLUSTERED
(

 [Role_Id],
 [User_Id]
 ) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Rol__tc]') AND parent_obj = object_id(N'[dbo].[Role]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Rol__tc]') AND parent_obj = object_id(N'[dbo].[Role]'))
 ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF_Rol__tc]

 ALTER TABLE [dbo].[Role] ADD CONSTRAINT [DF_Rol__tc] DEFAULT (GETDATE()) FOR [_trackLastWriteTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Rol__tk]') AND parent_obj = object_id(N'[dbo].[Role]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Rol__tk]') AND parent_obj = object_id(N'[dbo].[Role]'))
 ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF_Rol__tk]

 ALTER TABLE [dbo].[Role] ADD CONSTRAINT [DF_Rol__tk] DEFAULT (GETDATE()) FOR [_trackCreationTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Roe__tc]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Roe__tc]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [DF_Roe__tc]

 ALTER TABLE [dbo].[RoleClaim] ADD CONSTRAINT [DF_Roe__tc] DEFAULT (GETDATE()) FOR [_trackLastWriteTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Roe__tk]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Roe__tk]') AND parent_obj = object_id(N'[dbo].[RoleClaim]'))
 ALTER TABLE [dbo].[RoleClaim] DROP CONSTRAINT [DF_Roe__tk]

 ALTER TABLE [dbo].[RoleClaim] ADD CONSTRAINT [DF_Roe__tk] DEFAULT (GETDATE()) FOR [_trackCreationTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Use__tc]') AND parent_obj = object_id(N'[dbo].[User]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Use__tc]') AND parent_obj = object_id(N'[dbo].[User]'))
 ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF_Use__tc]

 ALTER TABLE [dbo].[User] ADD CONSTRAINT [DF_Use__tc] DEFAULT (GETDATE()) FOR [_trackLastWriteTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Use__tk]') AND parent_obj = object_id(N'[dbo].[User]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Use__tk]') AND parent_obj = object_id(N'[dbo].[User]'))
 ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF_Use__tk]

 ALTER TABLE [dbo].[User] ADD CONSTRAINT [DF_Use__tk] DEFAULT (GETDATE()) FOR [_trackCreationTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Usr__tc]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Usr__tc]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [DF_Usr__tc]

 ALTER TABLE [dbo].[UserClaim] ADD CONSTRAINT [DF_Usr__tc] DEFAULT (GETDATE()) FOR [_trackLastWriteTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Usr__tk]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Usr__tk]') AND parent_obj = object_id(N'[dbo].[UserClaim]'))
 ALTER TABLE [dbo].[UserClaim] DROP CONSTRAINT [DF_Usr__tk]

 ALTER TABLE [dbo].[UserClaim] ADD CONSTRAINT [DF_Usr__tk] DEFAULT (GETDATE()) FOR [_trackCreationTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_UsL__tc]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_UsL__tc]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [DF_UsL__tc]

 ALTER TABLE [dbo].[UserLogin] ADD CONSTRAINT [DF_UsL__tc] DEFAULT (GETDATE()) FOR [_trackLastWriteTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_UsL__tk]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_UsL__tk]') AND parent_obj = object_id(N'[dbo].[UserLogin]'))
 ALTER TABLE [dbo].[UserLogin] DROP CONSTRAINT [DF_UsL__tk]

 ALTER TABLE [dbo].[UserLogin] ADD CONSTRAINT [DF_UsL__tk] DEFAULT (GETDATE()) FOR [_trackCreationTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Veh__tc]') AND parent_obj = object_id(N'[dbo].[Vehicle]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Veh__tc]') AND parent_obj = object_id(N'[dbo].[Vehicle]'))
 ALTER TABLE [dbo].[Vehicle] DROP CONSTRAINT [DF_Veh__tc]

 ALTER TABLE [dbo].[Vehicle] ADD CONSTRAINT [DF_Veh__tc] DEFAULT (GETDATE()) FOR [_trackLastWriteTime]
END
GO
IF NOT EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Veh__tk]') AND parent_obj = object_id(N'[dbo].[Vehicle]'))
BEGIN
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[DF_Veh__tk]') AND parent_obj = object_id(N'[dbo].[Vehicle]'))
 ALTER TABLE [dbo].[Vehicle] DROP CONSTRAINT [DF_Veh__tk]

 ALTER TABLE [dbo].[Vehicle] ADD CONSTRAINT [DF_Veh__tk] DEFAULT (GETDATE()) FOR [_trackCreationTime]
END
GO
