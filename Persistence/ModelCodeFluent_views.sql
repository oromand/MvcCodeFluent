/* CodeFluent Generated Friday, 18 November 2016 16:19. TargetVersion:Default. Culture:fr-FR. UiCulture:en-US. Encoding:utf-8 (http://www.softfluent.com) */
set quoted_identifier OFF
GO
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vVehicle' AND TABLE_SCHEMA = 'dbo')
DROP VIEW [dbo].[vVehicle]
GO

CREATE VIEW [dbo].[vVehicle]
AS
SELECT [Vehicle].[Vehicle_VehicleId], [Vehicle].[Vehicle_Brand], [Vehicle].[_rowVersion], [Vehicle].[_trackCreationTime], [Vehicle].[_trackLastWriteTime], [Vehicle].[_trackCreationUser], [Vehicle].[_trackLastWriteUser] 
    FROM [Vehicle]
GO

