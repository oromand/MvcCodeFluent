/* CodeFluent Generated Saturday, 19 November 2016 13:35. TargetVersion:Default. Culture:fr-FR. UiCulture:fr-FR. Encoding:utf-8 (http://www.softfluent.com) */
set quoted_identifier OFF
GO
ALTER TABLE [dbo].[RoleClaim] WITH NOCHECK ADD CONSTRAINT [FK_Roe_Roi_Rol_Rol] FOREIGN KEY (
 [RoleClaim_Role_Id]
) REFERENCES [dbo].[Role](

 [Role_Id]
)
ALTER TABLE [dbo].[RoleClaim] NOCHECK CONSTRAINT [FK_Roe_Roi_Rol_Rol]
ALTER TABLE [dbo].[UserClaim] WITH NOCHECK ADD CONSTRAINT [FK_Usr_Usm_Use_Use] FOREIGN KEY (
 [UserClaim_User_Id]
) REFERENCES [dbo].[User](

 [User_Id]
)
ALTER TABLE [dbo].[UserClaim] NOCHECK CONSTRAINT [FK_Usr_Usm_Use_Use]
ALTER TABLE [dbo].[UserLogin] WITH NOCHECK ADD CONSTRAINT [FK_UsL_Usg_Use_Use] FOREIGN KEY (
 [UserLogin_User_Id]
) REFERENCES [dbo].[User](

 [User_Id]
)
ALTER TABLE [dbo].[UserLogin] NOCHECK CONSTRAINT [FK_UsL_Usg_Use_Use]
ALTER TABLE [dbo].[Role_Users_User_Roles] WITH NOCHECK ADD CONSTRAINT [FK_Ro__Rol_Rol_Rol] FOREIGN KEY (
 [Role_Id]
) REFERENCES [dbo].[Role](

 [Role_Id]
)
ALTER TABLE [dbo].[Role_Users_User_Roles] NOCHECK CONSTRAINT [FK_Ro__Rol_Rol_Rol]
ALTER TABLE [dbo].[Role_Users_User_Roles] WITH NOCHECK ADD CONSTRAINT [FK_Ro__Use_Use_Use] FOREIGN KEY (
 [User_Id]
) REFERENCES [dbo].[User](

 [User_Id]
)
ALTER TABLE [dbo].[Role_Users_User_Roles] NOCHECK CONSTRAINT [FK_Ro__Use_Use_Use]
