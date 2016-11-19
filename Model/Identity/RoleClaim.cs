﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré par un outil.
//     Version du runtime :4.0.30319.42000
//
//     Les modifications apportées à ce fichier peuvent provoquer un comportement incorrect et seront perdues si
//     le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ModelCodeFluent.Identity
{
    using CodeFluent.Runtime;
    using CodeFluent.Runtime.Utilities;
    
    
    // CodeFluent Entities generated (http://www.softfluent.com). Date: Saturday, 19 November 2016 13:35.
    // Build:1.0.61214.0842
    [System.CodeDom.Compiler.GeneratedCodeAttribute("CodeFluent Entities", "1.0.61214.0842")]
    [System.SerializableAttribute()]
    [System.ComponentModel.DataObjectAttribute()]
    [System.Diagnostics.DebuggerDisplayAttribute("EK={EntityKey}, Type={Type}, Id={Id}")]
    [System.ComponentModel.TypeConverterAttribute(typeof(CodeFluent.Runtime.Design.NameTypeConverter))]
    public partial class RoleClaim : System.ICloneable, System.IComparable, System.IComparable<ModelCodeFluent.Identity.RoleClaim>, CodeFluent.Runtime.ICodeFluentCollectionEntity<System.Guid>, System.ComponentModel.IDataErrorInfo, CodeFluent.Runtime.ICodeFluentMemberValidator, CodeFluent.Runtime.ICodeFluentSummaryValidator, System.IEquatable<ModelCodeFluent.Identity.RoleClaim>
    {
        
        private bool _raisePropertyChangedEvents = true;
        
        private CodeFluent.Runtime.CodeFluentEntityState _entityState;
        
        private byte[] _rowVersion;
        
        private System.Guid _id = CodeFluentPersistence.DefaultGuidValue;
        
        private string _type = default(string);
        
        private string _value = default(string);
        
        private string _valueType = default(string);
        
        private System.Guid _roleId = CodeFluentPersistence.DefaultGuidValue;
        
        [System.NonSerializedAttribute()]
        private ModelCodeFluent.Identity.Role _role = null;
        
        public RoleClaim()
        {
            this._id = System.Guid.NewGuid();
            this._entityState = CodeFluent.Runtime.CodeFluentEntityState.Created;
        }
        
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool RaisePropertyChangedEvents
        {
            get
            {
                return this._raisePropertyChangedEvents;
            }
            set
            {
                this._raisePropertyChangedEvents = value;
            }
        }
        
        public virtual string EntityKey
        {
            get
            {
                return this.Id.ToString();
            }
            set
            {
                this.Id = ((System.Guid)(ConvertUtilities.ChangeType(value, typeof(System.Guid), CodeFluentPersistence.DefaultGuidValue)));
            }
        }
        
        public virtual string EntityDisplayName
        {
            get
            {
                return this.Type;
            }
        }
        
        [System.Xml.Serialization.XmlElementAttribute(IsNullable=true)]
        [System.ComponentModel.DataObjectFieldAttribute(false, true)]
        [System.ComponentModel.TypeConverterAttribute(typeof(CodeFluent.Runtime.Design.ByteArrayConverter))]
        public byte[] RowVersion
        {
            get
            {
                return this._rowVersion;
            }
            set
            {
                if (((value != null) 
                            && (value.Length == 0)))
                {
                    value = null;
                }
                this._rowVersion = value;
                this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("RowVersion"));
            }
        }
        
        [System.Xml.Serialization.XmlElementAttribute(IsNullable=false, Type=typeof(System.Guid))]
        [System.ComponentModel.DataObjectFieldAttribute(true)]
        public System.Guid Id
        {
            get
            {
                return this._id;
            }
            set
            {
                if ((System.Collections.Generic.EqualityComparer<System.Guid>.Default.Equals(value, this._id) == true))
                {
                    return;
                }
                System.Guid oldKey = this._id;
                if ((value.Equals(CodeFluentPersistence.DefaultGuidValue) == true))
                {
                    this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Created;
                    this._id = System.Guid.NewGuid();
                }
                else
                {
                    this._id = value;
                }
                try
                {
                    this.OnCollectionKeyChanged(oldKey);
                }
                catch (System.ArgumentException )
                {
                    this._id = oldKey;
                    return;
                }
                this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Modified;
                this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("Id"));
            }
        }
        
        [System.ComponentModel.DefaultValueAttribute(default(string))]
        [System.Xml.Serialization.XmlElementAttribute(IsNullable=true, Type=typeof(string))]
        public string Type
        {
            get
            {
                return this._type;
            }
            set
            {
                this._type = value;
                this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Modified;
                this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("Type"));
            }
        }
        
        [System.ComponentModel.DefaultValueAttribute(default(string))]
        [System.Xml.Serialization.XmlElementAttribute(IsNullable=true, Type=typeof(string))]
        public string Value
        {
            get
            {
                return this._value;
            }
            set
            {
                this._value = value;
                this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Modified;
                this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("Value"));
            }
        }
        
        [System.ComponentModel.DefaultValueAttribute(default(string))]
        [System.Xml.Serialization.XmlElementAttribute(IsNullable=true, Type=typeof(string))]
        public string ValueType
        {
            get
            {
                return this._valueType;
            }
            set
            {
                this._valueType = value;
                this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Modified;
                this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("ValueType"));
            }
        }
        
        [System.Xml.Serialization.XmlElementAttribute(IsNullable=false)]
        [System.ComponentModel.DataObjectFieldAttribute(true)]
        public System.Guid RoleId
        {
            get
            {
                if (((this._roleId.Equals(CodeFluentPersistence.DefaultGuidValue) == true) 
                            && (this._role != null)))
                {
                    this._roleId = this._role.Id;
                }
                return this._roleId;
            }
            set
            {
                if ((System.Collections.Generic.EqualityComparer<System.Guid>.Default.Equals(value, this.RoleId) == true))
                {
                    return;
                }
                this._role = null;
                this._roleId = value;
                this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Modified;
                this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("Role"));
                this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("RoleId"));
            }
        }
        
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public ModelCodeFluent.Identity.Role Role
        {
            get
            {
                if ((this._role == null))
                {
                    this._role = ModelCodeFluent.Identity.Role.Load(this._roleId);
                }
                return this._role;
            }
            set
            {
                this._roleId = CodeFluentPersistence.DefaultGuidValue;
                this._role = value;
                this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Modified;
                this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("Role"));
                this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("RoleId"));
            }
        }
        
        string System.ComponentModel.IDataErrorInfo.Error
        {
            get
            {
                return this.Validate(System.Globalization.CultureInfo.CurrentCulture);
            }
        }
        
        string System.ComponentModel.IDataErrorInfo.this[string columnName]
        {
            get
            {
                return CodeFluentPersistence.ValidateMember(System.Globalization.CultureInfo.CurrentCulture, this, columnName, null);
            }
        }
        
        System.Guid CodeFluent.Runtime.Utilities.IKeyable<System.Guid>.Key
        {
            get
            {
                return this.Id;
            }
        }
        
        public virtual CodeFluent.Runtime.CodeFluentEntityState EntityState
        {
            get
            {
                return this._entityState;
            }
            set
            {
                if ((System.Collections.Generic.EqualityComparer<CodeFluent.Runtime.CodeFluentEntityState>.Default.Equals(value, this.EntityState) == true))
                {
                    return;
                }
                if (((this._entityState == CodeFluent.Runtime.CodeFluentEntityState.ToBeDeleted) 
                            && (value == CodeFluent.Runtime.CodeFluentEntityState.Modified)))
                {
                    return;
                }
                if (((this._entityState == CodeFluent.Runtime.CodeFluentEntityState.Created) 
                            && (value == CodeFluent.Runtime.CodeFluentEntityState.Modified)))
                {
                    return;
                }
                this._entityState = value;
                this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("EntityState"));
            }
        }
        
        [field:System.NonSerializedAttribute()]
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        [field:System.NonSerializedAttribute()]
        public event CodeFluent.Runtime.CodeFluentEntityActionEventHandler EntityAction;
        
        [field:System.NonSerializedAttribute()]
        public event System.EventHandler<CodeFluent.Runtime.Utilities.KeyChangedEventArgs<System.Guid>> KeyChanged;
        
        protected virtual void OnPropertyChanged(System.ComponentModel.PropertyChangedEventArgs e)
        {
            if ((this.RaisePropertyChangedEvents == false))
            {
                return;
            }
            if ((this.PropertyChanged != null))
            {
                this.PropertyChanged(this, e);
            }
        }
        
        protected virtual void OnEntityAction(CodeFluent.Runtime.CodeFluentEntityActionEventArgs e)
        {
            if ((this.EntityAction != null))
            {
                this.EntityAction(this, e);
            }
        }
        
        public virtual bool Equals(ModelCodeFluent.Identity.RoleClaim roleClaim)
        {
            if ((roleClaim == null))
            {
                return false;
            }
            if ((this.Id.Equals(CodeFluentPersistence.DefaultGuidValue) == true))
            {
                return base.Equals(roleClaim);
            }
            return (this.Id.Equals(roleClaim.Id) == true);
        }
        
        public override int GetHashCode()
        {
            return this.Id.GetHashCode();
        }
        
        public override bool Equals(object obj)
        {
            ModelCodeFluent.Identity.RoleClaim roleClaim = null;
			roleClaim = obj as ModelCodeFluent.Identity.RoleClaim;
            return this.Equals(roleClaim);
        }
        
        int System.IComparable.CompareTo(object value)
        {
            ModelCodeFluent.Identity.RoleClaim roleClaim = null;
roleClaim = value as ModelCodeFluent.Identity.RoleClaim;
            if ((roleClaim == null))
            {
                throw new System.ArgumentException("value");
            }
            int localCompareTo = this.CompareTo(roleClaim);
            return localCompareTo;
        }
        
        public virtual int CompareTo(ModelCodeFluent.Identity.RoleClaim roleClaim)
        {
            if ((roleClaim == null))
            {
                throw new System.ArgumentNullException("roleClaim");
            }
            int localCompareTo = this.Id.CompareTo(roleClaim.Id);
            return localCompareTo;
        }
        
        public virtual string Validate(System.Globalization.CultureInfo culture)
        {
            return CodeFluentPersistence.Validate(culture, this, null);
        }
        
        public virtual void Validate(System.Globalization.CultureInfo culture, System.Collections.Generic.IList<CodeFluent.Runtime.CodeFluentValidationException> results)
        {
            CodeFluent.Runtime.CodeFluentEntityActionEventArgs evt = new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.Validating, true, results);
            evt.Culture = culture;
            this.OnEntityAction(evt);
            if ((evt.Cancel == true))
            {
                string externalValidate;
                if ((evt.Argument != null))
                {
                    externalValidate = evt.Argument.ToString();
                }
                else
                {
                    externalValidate = ModelCodeFluent.Resources.Manager.GetStringWithDefault(culture, "ModelCodeFluent.Identity.RoleClaim.ExternalValidate", "Type \'ModelCodeFluent.Identity.RoleClaim\' cannot be validated.", null);
                }
                CodeFluentPersistence.AddValidationError(results, externalValidate);
            }
            CodeFluentPersistence.ValidateMember(culture, results, this, null);
            if ((this.Id.Equals(CodeFluentPersistence.DefaultGuidValue) == true))
            {
                string localValidate = ModelCodeFluent.Resources.Manager.GetStringWithDefault(culture, "ModelCodeFluent.Identity.RoleClaim.Id.NullException", "\'Id\' property cannot be set to \'00000000-0000-0000-0000-000000000000\' for type \'M" +
                        "odelCodeFluent.Identity.RoleClaim\'", null);
                CodeFluentPersistence.AddValidationError(results, localValidate);
            }
            if ((this.Type == default(string)))
            {
                string localValidate1 = ModelCodeFluent.Resources.Manager.GetStringWithDefault(culture, "ModelCodeFluent.Identity.RoleClaim.Type.NullException", "\'Type\' property cannot be set to \'\' for type \'ModelCodeFluent.Identity.RoleClaim\'" +
                        "", null);
                CodeFluentPersistence.AddValidationError(results, localValidate1);
            }
            if ((this.Role == null))
            {
                string localValidate2 = ModelCodeFluent.Resources.Manager.GetStringWithDefault(culture, "ModelCodeFluent.Identity.RoleClaim.Role.NullException", "\'Role\' property cannot be set to \'\' for type \'ModelCodeFluent.Identity.RoleClaim\'" +
                        "", null);
                CodeFluentPersistence.AddValidationError(results, localValidate2);
            }
            this.OnEntityAction(new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.Validated, false, results));
        }
        
        public void Validate()
        {
            string var = this.Validate(System.Globalization.CultureInfo.CurrentCulture);
            if ((var != null))
            {
                throw new CodeFluent.Runtime.CodeFluentValidationException(var);
            }
        }
        
        string CodeFluent.Runtime.ICodeFluentValidator.Validate(System.Globalization.CultureInfo culture)
        {
            string localValidate = this.Validate(culture);
            return localValidate;
        }
        
        void CodeFluent.Runtime.ICodeFluentMemberValidator.Validate(System.Globalization.CultureInfo culture, string memberName, System.Collections.Generic.IList<CodeFluent.Runtime.CodeFluentValidationException> results)
        {
            this.ValidateMember(culture, memberName, results);
        }
        
        public virtual bool Delete()
        {
            bool ret = false;
            CodeFluent.Runtime.CodeFluentEntityActionEventArgs evt = new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.Deleting, true);
            this.OnEntityAction(evt);
            if ((evt.Cancel == true))
            {
                return ret;
            }
            if ((this.EntityState == CodeFluent.Runtime.CodeFluentEntityState.Deleted))
            {
                return ret;
            }
            if ((this.RowVersion == null))
            {
                return ret;
            }
            CodeFluent.Runtime.CodeFluentPersistence persistence = CodeFluentContext.Get(ModelCodeFluent.Constants.ModelCodeFluentStoreName).Persistence;
            persistence.CreateStoredProcedureCommand(null, "RoleClaim", "Delete");
            persistence.AddParameter("@RoleClaim_Id", this.Id, CodeFluentPersistence.DefaultGuidValue);
            persistence.AddParameter("@_rowVersion", this.RowVersion);
            persistence.ExecuteNonQuery();
            this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Deleted;
            this.OnEntityAction(new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.Deleted, false, false));
            ret = true;
            return ret;
        }
        
        protected virtual void ReadRecord(System.Data.IDataReader reader, CodeFluent.Runtime.CodeFluentReloadOptions options)
        {
            if ((reader == null))
            {
                throw new System.ArgumentNullException("reader");
            }
            if ((((options & CodeFluent.Runtime.CodeFluentReloadOptions.Properties) 
                        == 0) 
                        == false))
            {
                this._id = CodeFluentPersistence.GetReaderValue(reader, "RoleClaim_Id", ((System.Guid)(CodeFluentPersistence.DefaultGuidValue)));
                this._type = CodeFluentPersistence.GetReaderValue(reader, "RoleClaim_Type", ((string)(default(string))));
                this._value = CodeFluentPersistence.GetReaderValue(reader, "RoleClaim_Value", ((string)(default(string))));
                this._valueType = CodeFluentPersistence.GetReaderValue(reader, "RoleClaim_ValueType", ((string)(default(string))));
                this.RoleId = CodeFluentPersistence.GetReaderValue(reader, "RoleClaim_Role_Id", ((System.Guid)(CodeFluentPersistence.DefaultGuidValue)));
            }
            if ((((options & CodeFluent.Runtime.CodeFluentReloadOptions.RowVersion) 
                        == 0) 
                        == false))
            {
                this._rowVersion = CodeFluentPersistence.GetReaderValue(reader, "_rowVersion", ((byte[])(null)));
            }
            this.OnEntityAction(new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.ReadRecord, false, false));
        }
        
        void CodeFluent.Runtime.ICodeFluentEntity.ReadRecord(System.Data.IDataReader reader)
        {
            this.ReadRecord(reader, CodeFluent.Runtime.CodeFluentReloadOptions.Default);
        }
        
        protected virtual void ReadRecordOnSave(System.Data.IDataReader reader)
        {
            if ((reader == null))
            {
                throw new System.ArgumentNullException("reader");
            }
            this._rowVersion = CodeFluentPersistence.GetReaderValue(reader, "_rowVersion", ((byte[])(null)));
            this.OnEntityAction(new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.ReadRecordOnSave, false, false));
        }
        
        void CodeFluent.Runtime.ICodeFluentEntity.ReadRecordOnSave(System.Data.IDataReader reader)
        {
            this.ReadRecordOnSave(reader);
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, true)]
        public static ModelCodeFluent.Identity.RoleClaim Load(System.Guid id)
        {
            if ((id.Equals(CodeFluentPersistence.DefaultGuidValue) == true))
            {
                return null;
            }
            ModelCodeFluent.Identity.RoleClaim roleClaim = new ModelCodeFluent.Identity.RoleClaim();
            CodeFluent.Runtime.CodeFluentPersistence persistence = CodeFluentContext.Get(ModelCodeFluent.Constants.ModelCodeFluentStoreName).Persistence;
            persistence.CreateStoredProcedureCommand(null, "RoleClaim", "Load");
            persistence.AddParameter("@Id", id, CodeFluentPersistence.DefaultGuidValue);
            System.Data.IDataReader reader = null;
            try
            {
                reader = persistence.ExecuteReader();
                if ((reader.Read() == true))
                {
                    roleClaim.ReadRecord(reader, CodeFluent.Runtime.CodeFluentReloadOptions.Default);
                    roleClaim.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Unchanged;
                    return roleClaim;
                }
            }
            finally
            {
                if ((reader != null))
                {
                    reader.Dispose();
                }
                persistence.CompleteCommand();
            }
            return null;
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, false)]
        public static ModelCodeFluent.Identity.RoleClaim LoadById(System.Guid id)
        {
            if ((id.Equals(CodeFluentPersistence.DefaultGuidValue) == true))
            {
                return null;
            }
            ModelCodeFluent.Identity.RoleClaim roleClaim = new ModelCodeFluent.Identity.RoleClaim();
            CodeFluent.Runtime.CodeFluentPersistence persistence = CodeFluentContext.Get(ModelCodeFluent.Constants.ModelCodeFluentStoreName).Persistence;
            persistence.CreateStoredProcedureCommand(null, "RoleClaim", "LoadById");
            persistence.AddParameter("@Id", id, CodeFluentPersistence.DefaultGuidValue);
            System.Data.IDataReader reader = null;
            try
            {
                reader = persistence.ExecuteReader();
                if ((reader.Read() == true))
                {
                    roleClaim.ReadRecord(reader, CodeFluent.Runtime.CodeFluentReloadOptions.Default);
                    roleClaim.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Unchanged;
                    return roleClaim;
                }
            }
            finally
            {
                if ((reader != null))
                {
                    reader.Dispose();
                }
                persistence.CompleteCommand();
            }
            return null;
        }
        
        public virtual bool Reload(CodeFluent.Runtime.CodeFluentReloadOptions options)
        {
            bool ret = false;
            if ((this.Id.Equals(CodeFluentPersistence.DefaultGuidValue) == true))
            {
                return ret;
            }
            CodeFluent.Runtime.CodeFluentPersistence persistence = CodeFluentContext.Get(ModelCodeFluent.Constants.ModelCodeFluentStoreName).Persistence;
            persistence.CreateStoredProcedureCommand(null, "RoleClaim", "Load");
            persistence.AddParameter("@Id", this.Id);
            System.Data.IDataReader reader = null;
            try
            {
                reader = persistence.ExecuteReader();
                if ((reader.Read() == true))
                {
                    this.ReadRecord(reader, options);
                    this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Unchanged;
                    ret = true;
                }
                else
                {
                    this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Deleted;
                }
            }
            finally
            {
                if ((reader != null))
                {
                    reader.Dispose();
                }
                persistence.CompleteCommand();
            }
            return ret;
        }
        
        protected virtual bool BaseSave(bool force)
        {
            if ((this.EntityState == CodeFluent.Runtime.CodeFluentEntityState.ToBeDeleted))
            {
                this.Delete();
                return false;
            }
            CodeFluent.Runtime.CodeFluentEntityActionEventArgs evt = new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.Saving, true);
            this.OnEntityAction(evt);
            if ((evt.Cancel == true))
            {
                return false;
            }
            CodeFluentPersistence.ThrowIfDeleted(this);
            this.Validate();
            if (((force == false) 
                        && (this.EntityState == CodeFluent.Runtime.CodeFluentEntityState.Unchanged)))
            {
                return false;
            }
            CodeFluent.Runtime.CodeFluentPersistence persistence = CodeFluentContext.Get(ModelCodeFluent.Constants.ModelCodeFluentStoreName).Persistence;
            persistence.CreateStoredProcedureCommand(null, "RoleClaim", "Save");
            persistence.AddParameter("@RoleClaim_Id", this.Id, CodeFluentPersistence.DefaultGuidValue);
            persistence.AddParameter("@RoleClaim_Type", this.Type, default(string));
            persistence.AddParameter("@RoleClaim_Value", this.Value, default(string));
            persistence.AddParameter("@RoleClaim_ValueType", this.ValueType, default(string));
            persistence.AddParameter("@RoleClaim_Role_Id", this.RoleId, CodeFluentPersistence.DefaultGuidValue);
            persistence.AddParameter("@_trackLastWriteUser", persistence.Context.User.Name);
            persistence.AddParameter("@_rowVersion", this.RowVersion);
            System.Data.IDataReader reader = null;
            try
            {
                reader = persistence.ExecuteReader();
                if ((reader.Read() == true))
                {
                    this.ReadRecordOnSave(reader);
                }
                CodeFluentPersistence.NextResults(reader);
            }
            finally
            {
                if ((reader != null))
                {
                    reader.Dispose();
                }
                persistence.CompleteCommand();
            }
            this.OnEntityAction(new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.Saved, false, false));
            this.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Unchanged;
            return true;
        }
        
        public virtual bool Save()
        {
            bool localSave = this.BaseSave(false);
            return localSave;
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Update, true)]
        public static bool Save(ModelCodeFluent.Identity.RoleClaim roleClaim)
        {
            if ((roleClaim == null))
            {
                return false;
            }
            bool ret = roleClaim.Save();
            return ret;
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public static bool Insert(ModelCodeFluent.Identity.RoleClaim roleClaim)
        {
            bool ret = ModelCodeFluent.Identity.RoleClaim.Save(roleClaim);
            return ret;
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Delete, true)]
        public static bool Delete(ModelCodeFluent.Identity.RoleClaim roleClaim)
        {
            if ((roleClaim == null))
            {
                return false;
            }
            bool ret = roleClaim.Delete();
            return ret;
        }
        
        public string Trace()
        {
            System.Text.StringBuilder stringBuilder = new System.Text.StringBuilder();
            System.IO.StringWriter stringWriter = new System.IO.StringWriter(stringBuilder, System.Globalization.CultureInfo.CurrentCulture);
            System.CodeDom.Compiler.IndentedTextWriter writer = new System.CodeDom.Compiler.IndentedTextWriter(stringWriter);
            this.BaseTrace(writer);
            writer.Flush();
            ((System.IDisposable)(writer)).Dispose();
            ((System.IDisposable)(stringWriter)).Dispose();
            string sr = stringBuilder.ToString();
            return sr;
        }
        
        void CodeFluent.Runtime.ICodeFluentObject.Trace(System.CodeDom.Compiler.IndentedTextWriter writer)
        {
            this.BaseTrace(writer);
        }
        
        protected virtual void BaseTrace(System.CodeDom.Compiler.IndentedTextWriter writer)
        {
            writer.Write("[");
            writer.Write("Id=");
            writer.Write(this.Id);
            writer.Write(",");
            writer.Write("Type=");
            writer.Write(this.Type);
            writer.Write(",");
            writer.Write("Value=");
            writer.Write(this.Value);
            writer.Write(",");
            writer.Write("ValueType=");
            writer.Write(this.ValueType);
            writer.Write(",");
            writer.Write("Role=");
            if ((this._role != null))
            {
                ((CodeFluent.Runtime.ICodeFluentObject)(this._role)).Trace(writer);
            }
            else
            {
                writer.Write("<null>");
            }
            writer.Write(",");
            writer.Write("_roleId=");
            writer.Write(this._roleId);
            writer.Write(", EntityState=");
            writer.Write(this.EntityState);
            writer.Write("]");
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, true)]
        public static ModelCodeFluent.Identity.RoleClaim LoadByEntityKey(string key)
        {
            if ((key == string.Empty))
            {
                return null;
            }
            ModelCodeFluent.Identity.RoleClaim roleClaim;
            System.Guid var = ((System.Guid)(ConvertUtilities.ChangeType(key, typeof(System.Guid), CodeFluentPersistence.DefaultGuidValue)));
            roleClaim = ModelCodeFluent.Identity.RoleClaim.Load(var);
            return roleClaim;
        }
        
        protected virtual void ValidateMember(System.Globalization.CultureInfo culture, string memberName, System.Collections.Generic.IList<CodeFluent.Runtime.CodeFluentValidationException> results)
        {
        }
        
        public ModelCodeFluent.Identity.RoleClaim Clone(bool deep)
        {
            ModelCodeFluent.Identity.RoleClaim roleClaim = new ModelCodeFluent.Identity.RoleClaim();
            this.CopyTo(roleClaim, deep);
            return roleClaim;
        }
        
        public ModelCodeFluent.Identity.RoleClaim Clone()
        {
            ModelCodeFluent.Identity.RoleClaim localClone = this.Clone(true);
            return localClone;
        }
        
        object System.ICloneable.Clone()
        {
            object localClone = this.Clone();
            return localClone;
        }
        
        public virtual void CopyFrom(System.Collections.IDictionary dict, bool deep)
        {
            if ((dict == null))
            {
                throw new System.ArgumentNullException("dict");
            }
            if ((dict.Contains("Id") == true))
            {
                this.Id = ((System.Guid)(ConvertUtilities.ChangeType(dict["Id"], typeof(System.Guid), CodeFluentPersistence.DefaultGuidValue)));
            }
            if ((dict.Contains("ValueType") == true))
            {
                this.ValueType = ((string)(ConvertUtilities.ChangeType(dict["ValueType"], typeof(string), default(string))));
            }
            if ((dict.Contains("Value") == true))
            {
                this.Value = ((string)(ConvertUtilities.ChangeType(dict["Value"], typeof(string), default(string))));
            }
            if ((dict.Contains("Type") == true))
            {
                this.Type = ((string)(ConvertUtilities.ChangeType(dict["Type"], typeof(string), default(string))));
            }
            if ((dict.Contains("RoleId") == true))
            {
                this.RoleId = ((System.Guid)(ConvertUtilities.ChangeType(dict["RoleId"], typeof(System.Guid), CodeFluentPersistence.DefaultGuidValue)));
            }
            this.OnEntityAction(new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.CopyFrom, false, dict));
        }
        
        public virtual void CopyTo(ModelCodeFluent.Identity.RoleClaim roleClaim, bool deep)
        {
            if ((roleClaim == null))
            {
                throw new System.ArgumentNullException("roleClaim");
            }
            roleClaim.Id = this.Id;
            roleClaim.ValueType = this.ValueType;
            roleClaim.Value = this.Value;
            roleClaim.Type = this.Type;
            roleClaim.RoleId = this.RoleId;
            this.OnEntityAction(new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.CopyTo, false, roleClaim));
        }
        
        public virtual void CopyTo(System.Collections.IDictionary dict, bool deep)
        {
            if ((dict == null))
            {
                throw new System.ArgumentNullException("dict");
            }
            dict["Id"] = this.Id;
            dict["ValueType"] = this.ValueType;
            dict["Value"] = this.Value;
            dict["Type"] = this.Type;
            dict["RoleId"] = this.RoleId;
            this.OnEntityAction(new CodeFluent.Runtime.CodeFluentEntityActionEventArgs(this, CodeFluent.Runtime.CodeFluentEntityAction.CopyTo, false, dict));
        }
        
        protected void OnCollectionKeyChanged(System.Guid key)
        {
            if ((this.KeyChanged != null))
            {
                this.KeyChanged(this, new CodeFluent.Runtime.Utilities.KeyChangedEventArgs<System.Guid>(key));
            }
        }
    }
}
