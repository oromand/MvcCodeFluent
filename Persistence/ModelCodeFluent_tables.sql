/* CodeFluent Generated Friday, 18 November 2016 16:19. TargetVersion:Default. Culture:fr-FR. UiCulture:en-US. Encoding:utf-8 (http://www.softfluent.com) */
set quoted_identifier OFF
GO
IF EXISTS (SELECT * FROM [dbo].[sysobjects] WHERE id = object_id(N'[dbo].[Vehicle]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[Vehicle]
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

