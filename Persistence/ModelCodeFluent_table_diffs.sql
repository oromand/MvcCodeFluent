/* CodeFluent Generated Friday, 18 November 2016 16:19. TargetVersion:Default. Culture:fr-FR. UiCulture:en-US. Encoding:utf-8 (http://www.softfluent.com) */
set quoted_identifier OFF
GO
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
