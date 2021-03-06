﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré par un outil.
//     Version du runtime :4.0.30319.42000
//
//     Les modifications apportées à ce fichier peuvent provoquer un comportement incorrect et seront perdues si
//     le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ModelCodeFluent.Web.Security
{
    
    
    // CodeFluent Entities generated (http://www.softfluent.com). Date: Saturday, 19 November 2016 13:35.
    // Build:1.0.61214.0842
    [System.CodeDom.Compiler.GeneratedCodeAttribute("CodeFluent Entities", "1.0.61214.0842")]
    public partial class RoleStore : Microsoft.AspNet.Identity.IRoleStore<ModelCodeFluent.Identity.Role>, Microsoft.AspNet.Identity.IRoleStore<ModelCodeFluent.Identity.Role, System.Guid>, Microsoft.AspNet.Identity.IQueryableRoleStore<ModelCodeFluent.Identity.Role>, Microsoft.AspNet.Identity.IQueryableRoleStore<ModelCodeFluent.Identity.Role, System.Guid>, System.IDisposable
    {
        
        private bool _disposed = false;
        
        public virtual System.Linq.IQueryable<ModelCodeFluent.Identity.Role> Roles
        {
            get
            {
                return System.Linq.Queryable.AsQueryable(ModelCodeFluent.Identity.RoleCollection.LoadAll());
            }
        }
        
        public virtual System.Threading.Tasks.Task CreateAsync(ModelCodeFluent.Identity.Role role)
        {
            return this.CreateAsync(role, System.Threading.CancellationToken.None);
        }
        
        public virtual System.Threading.Tasks.Task CreateAsync(ModelCodeFluent.Identity.Role role, System.Threading.CancellationToken cancellationToken)
        {
            cancellationToken.ThrowIfCancellationRequested();
            this.ThrowIfDisposed();
            if ((role == null))
            {
                throw new System.ArgumentNullException("role");
            }
            role.Save();
            return System.Threading.Tasks.Task.FromResult(0);
        }
        
        public virtual System.Threading.Tasks.Task UpdateAsync(ModelCodeFluent.Identity.Role role)
        {
            return this.UpdateAsync(role, System.Threading.CancellationToken.None);
        }
        
        public virtual System.Threading.Tasks.Task UpdateAsync(ModelCodeFluent.Identity.Role role, System.Threading.CancellationToken cancellationToken)
        {
            cancellationToken.ThrowIfCancellationRequested();
            this.ThrowIfDisposed();
            if ((role == null))
            {
                throw new System.ArgumentNullException("role");
            }
            role.Save();
            return System.Threading.Tasks.Task.FromResult(0);
        }
        
        public virtual System.Threading.Tasks.Task DeleteAsync(ModelCodeFluent.Identity.Role role)
        {
            return this.DeleteAsync(role, System.Threading.CancellationToken.None);
        }
        
        public virtual System.Threading.Tasks.Task DeleteAsync(ModelCodeFluent.Identity.Role role, System.Threading.CancellationToken cancellationToken)
        {
            cancellationToken.ThrowIfCancellationRequested();
            this.ThrowIfDisposed();
            if ((role == null))
            {
                throw new System.ArgumentNullException("role");
            }
            role.Delete();
            return System.Threading.Tasks.Task.FromResult(0);
        }
        
        public virtual System.Threading.Tasks.Task<ModelCodeFluent.Identity.Role> FindByIdAsync(string roleId)
        {
            return this.FindByIdAsync(roleId, System.Threading.CancellationToken.None);
        }
        
        public virtual System.Threading.Tasks.Task<ModelCodeFluent.Identity.Role> FindByIdAsync(string roleId, System.Threading.CancellationToken cancellationToken)
        {
            cancellationToken.ThrowIfCancellationRequested();
            this.ThrowIfDisposed();
            return System.Threading.Tasks.Task.FromResult(ModelCodeFluent.Identity.Role.LoadByEntityKey(roleId));
        }
        
        public virtual System.Threading.Tasks.Task<ModelCodeFluent.Identity.Role> FindByIdAsync(System.Guid roleId)
        {
            return this.FindByIdAsync(roleId, System.Threading.CancellationToken.None);
        }
        
        public virtual System.Threading.Tasks.Task<ModelCodeFluent.Identity.Role> FindByIdAsync(System.Guid roleId, System.Threading.CancellationToken cancellationToken)
        {
            cancellationToken.ThrowIfCancellationRequested();
            this.ThrowIfDisposed();
            return System.Threading.Tasks.Task.FromResult(ModelCodeFluent.Identity.Role.Load(roleId));
        }
        
        public virtual System.Threading.Tasks.Task<ModelCodeFluent.Identity.Role> FindByNameAsync(string roleName)
        {
            return this.FindByNameAsync(roleName, System.Threading.CancellationToken.None);
        }
        
        public virtual System.Threading.Tasks.Task<ModelCodeFluent.Identity.Role> FindByNameAsync(string roleName, System.Threading.CancellationToken cancellationToken)
        {
            cancellationToken.ThrowIfCancellationRequested();
            this.ThrowIfDisposed();
            return System.Threading.Tasks.Task.FromResult(ModelCodeFluent.Identity.Role.LoadByName(roleName));
        }
        
        public virtual void Dispose()
        {
            this._disposed = true;
        }
        
        protected virtual void ThrowIfDisposed()
        {
            if ((this._disposed == true))
            {
                throw new System.ObjectDisposedException(this.GetType().Name);
            }
        }
    }
}
