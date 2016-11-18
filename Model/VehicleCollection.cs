﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ModelCodeFluent
{
    using CodeFluent.Runtime;
    using CodeFluent.Runtime.Utilities;
    
    
    // CodeFluent Entities generated (http://www.softfluent.com). Date: Friday, 18 November 2016 16:19.
    // Build:1.0.61214.0841
    [System.CodeDom.Compiler.GeneratedCodeAttribute("CodeFluent Entities", "1.0.61214.0841")]
    [System.SerializableAttribute()]
    [System.ComponentModel.DataObjectAttribute()]
    [System.Diagnostics.DebuggerDisplayAttribute("Count={Count}")]
    [System.ComponentModel.TypeConverterAttribute(typeof(CodeFluent.Runtime.Design.CollectionTypeConverter))]
    public partial class VehicleCollection : System.Collections.IList, System.Collections.ICollection, CodeFluent.Runtime.ICodeFluentSet, System.Collections.Generic.IList<ModelCodeFluent.Vehicle>, System.Collections.Generic.ICollection<ModelCodeFluent.Vehicle>, System.ComponentModel.IRaiseItemChangedEvents, System.ICloneable, System.ComponentModel.INotifyPropertyChanged, System.Collections.Specialized.INotifyCollectionChanged, System.ComponentModel.IBindingList, System.ComponentModel.ICancelAddNew
    {
        
        private bool _raisePropertyChangedEvents = true;
        
        private bool _raiseCollectionChangedEvents = true;
        
        [System.NonSerializedAttribute()]
        private System.Collections.Generic.List<ModelCodeFluent.Vehicle> _baseList = new System.Collections.Generic.List<ModelCodeFluent.Vehicle>();
        
        [System.NonSerializedAttribute()]
        private System.Collections.Generic.Dictionary<System.Guid, ModelCodeFluent.Vehicle> _baseTable = new System.Collections.Generic.Dictionary<System.Guid, ModelCodeFluent.Vehicle>();
        
        [System.NonSerializedAttribute()]
        private System.Collections.Hashtable _relations = new System.Collections.Hashtable();
        
        private int _maxCount = 2147483647;
        
        [System.NonSerializedAttribute()]
        private int _addNewPos = -1;
        
        [System.NonSerializedAttribute()]
        private CodeFluent.Runtime.Utilities.BindingListManager<ModelCodeFluent.Vehicle> _blm2933840664;
        
        private bool _raiseListChangedEvents = true;
        
        private System.Collections.Specialized.NotifyCollectionChangedEventHandler _h2943838991;

        event System.Collections.Specialized.NotifyCollectionChangedEventHandler System.Collections.Specialized.INotifyCollectionChanged.CollectionChanged{add{_h2943838991+=value;}remove{_h2943838991-=value;}}
        
        public VehicleCollection()
        {
            this._blm2933840664 = new CodeFluent.Runtime.Utilities.BindingListManager<ModelCodeFluent.Vehicle>(this);
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
        
        public virtual bool RaiseCollectionChangedEvents
        {
            get
            {
                return this._raiseCollectionChangedEvents;
            }
            set
            {
                this._raiseCollectionChangedEvents = value;
            }
        }
        
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        protected System.Collections.Generic.List<ModelCodeFluent.Vehicle> BaseList
        {
            get
            {
                return this._baseList;
            }
        }
        
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        protected System.Collections.Generic.Dictionary<System.Guid, ModelCodeFluent.Vehicle> BaseTable
        {
            get
            {
                return this._baseTable;
            }
        }
        
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        System.Collections.IDictionary CodeFluent.Runtime.ICodeFluentSet.Relations
        {
            get
            {
                return this._relations;
            }
        }
        
        [System.Xml.Serialization.XmlElementAttribute(IsNullable=false)]
        public virtual int MaxCount
        {
            get
            {
                return this._maxCount;
            }
            set
            {
                this._maxCount = value;
            }
        }
        
        public ModelCodeFluent.Vehicle this[int index]
        {
            get
            {
                return ((ModelCodeFluent.Vehicle)(this.BaseList[index]));
            }
            set
            {
                this.BaseList[index] = value;
            }
        }
        
        object System.Collections.IList.this[int index]
        {
            get
            {
                object i = this.BaseList[index];
                return i;
            }
            set
            {
                this.BaseList[index] = ((ModelCodeFluent.Vehicle)(value));
            }
        }
        
        public ModelCodeFluent.Vehicle this[System.Guid vehicleId]
        {
            get
            {
                if ((vehicleId.Equals(CodeFluentPersistence.DefaultGuidValue) == true))
                {
                    throw new System.ArgumentNullException("vehicleId");
                }
                ModelCodeFluent.Vehicle i = this.TryGetValue(vehicleId);
                return i;
            }
            set
            {
                if ((vehicleId.Equals(CodeFluentPersistence.DefaultGuidValue) == true))
                {
                    throw new System.ArgumentNullException("vehicleId");
                }
                if ((value == null))
                {
                    ModelCodeFluent.Vehicle vehicle = this.TryGetValue(vehicleId);
                    if ((vehicle != null))
                    {
                        this.Remove(vehicle);
                    }
                    return;
                }
                ModelCodeFluent.Vehicle existing = this.TryGetValue(value.VehicleId);
                if ((existing != null))
                {
                    this.Remove(existing);
                }
                this.Add(value);
            }
        }
        
        public virtual int Count
        {
            get
            {
                int v = ((System.Collections.IList)(this.BaseList)).Count;
                return v;
            }
        }
        
        public virtual bool IsSynchronized
        {
            get
            {
                bool v = ((System.Collections.IList)(this.BaseList)).IsSynchronized;
                return v;
            }
        }
        
        public virtual object SyncRoot
        {
            get
            {
                object v = ((System.Collections.IList)(this.BaseList)).SyncRoot;
                return v;
            }
        }
        
        public virtual bool IsFixedSize
        {
            get
            {
                bool v = ((System.Collections.IList)(this.BaseList)).IsFixedSize;
                return v;
            }
        }
        
        public virtual bool IsReadOnly
        {
            get
            {
                bool v = ((System.Collections.IList)(this.BaseList)).IsReadOnly;
                return v;
            }
        }
        
        public virtual bool RaiseListChangedEvents
        {
            get
            {
                return this._raiseListChangedEvents;
            }
            set
            {
                this._raiseListChangedEvents = value;
            }
        }
        
        bool System.ComponentModel.IBindingList.AllowEdit
        {
            get
            {
                return this._blm2933840664.AllowEdit;
            }
        }
        
        bool System.ComponentModel.IBindingList.AllowNew
        {
            get
            {
                return this._blm2933840664.AllowNew;
            }
        }
        
        bool System.ComponentModel.IBindingList.AllowRemove
        {
            get
            {
                return this._blm2933840664.AllowRemove;
            }
        }
        
        bool System.ComponentModel.IBindingList.IsSorted
        {
            get
            {
                return this._blm2933840664.IsSorted;
            }
        }
        
        System.ComponentModel.ListSortDirection System.ComponentModel.IBindingList.SortDirection
        {
            get
            {
                return this._blm2933840664.SortDirection;
            }
        }
        
        System.ComponentModel.PropertyDescriptor System.ComponentModel.IBindingList.SortProperty
        {
            get
            {
                return this._blm2933840664.SortProperty;
            }
        }
        
        bool System.ComponentModel.IBindingList.SupportsChangeNotification
        {
            get
            {
                return true;
            }
        }
        
        bool System.ComponentModel.IBindingList.SupportsSearching
        {
            get
            {
                return this._blm2933840664.SupportsSearching;
            }
        }
        
        bool System.ComponentModel.IBindingList.SupportsSorting
        {
            get
            {
                return this._blm2933840664.SupportsSorting;
            }
        }
        
        bool System.ComponentModel.IRaiseItemChangedEvents.RaisesItemChangedEvents
        {
            get
            {
                return this.RaiseListChangedEvents;
            }
        }
        
        [field:System.NonSerializedAttribute()]
        public event System.ComponentModel.CollectionChangeEventHandler CollectionChanged;
        
        [field:System.NonSerializedAttribute()]
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        [field:System.NonSerializedAttribute()]
        public event System.ComponentModel.AddingNewEventHandler AddingNew;
        
        [field:System.NonSerializedAttribute()]
        public event System.ComponentModel.ListChangedEventHandler ListChanged;
        
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
        
        protected virtual void OnCollectionChanged(System.ComponentModel.CollectionChangeEventArgs e)
        {
            if ((this.RaiseCollectionChangedEvents == false))
            {
                return;
            }
            if ((this.CollectionChanged != null))
            {
                this.CollectionChanged(this, e);
            }
            CodeFluent.Runtime.ServiceModel.CollectionChangeNotifier.Notify(this, e, this._h2943838991);
            this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("Count"));
            this.OnPropertyChanged(new System.ComponentModel.PropertyChangedEventArgs("Item[]"));
        }
        
        protected virtual void Relate(ModelCodeFluent.Vehicle item, CodeFluent.Runtime.CodeFluentRelationType relationType)
        {
            ((CodeFluent.Runtime.ICodeFluentSet)(this)).Relations[item] = relationType;
        }
        
        public int Add(ModelCodeFluent.Vehicle vehicle)
        {
            int localAdd = this.BaseList.Count;
            this.BaseAdd(vehicle);
            return localAdd;
        }
        
        protected virtual int BaseAdd(ModelCodeFluent.Vehicle vehicle)
        {
            if ((vehicle == null))
            {
                throw new System.ArgumentNullException("vehicle");
            }
            if ((vehicle.VehicleId.Equals(CodeFluentPersistence.DefaultGuidValue) == true))
            {
                CodeFluent.Runtime.CodeFluentRuntimeException.Throw("invalidEntityKey", "VehicleId", "vehicle", "ModelCodeFluent.Vehicle");
            }
            try
            {
                this.BaseTable.Add(vehicle.VehicleId, vehicle);
            }
            catch (System.ArgumentNullException ane)
            {
                throw new System.ArgumentNullException(ModelCodeFluent.Resources.Manager.GetUserMessage(null, CodeFluent.Runtime.UserExceptionType.VoidCollectionKey, "ModelCodeFluent.VehicleCollection", vehicle.EntityKey), ane);
            }
            catch (System.ArgumentException ae)
            {
                throw new System.ArgumentException(ModelCodeFluent.Resources.Manager.GetUserMessage(null, CodeFluent.Runtime.UserExceptionType.ItemAlreadyAdded, "ModelCodeFluent.VehicleCollection", vehicle.VehicleId), ae);
            }
            vehicle.KeyChanged += new System.EventHandler<CodeFluent.Runtime.Utilities.KeyChangedEventArgs<System.Guid>>(this.OnItemKeyChanged);
            int localAdd = this.BaseList.Count;
            this.BaseList.Add(vehicle);
            this.OnCollectionChanged(new CodeFluent.Runtime.Utilities.IndexedCollectionChangeEventArgs(System.ComponentModel.CollectionChangeAction.Add, vehicle, localAdd));
            this.OnListChanged(new System.ComponentModel.ListChangedEventArgs(System.ComponentModel.ListChangedType.ItemAdded, localAdd));
            return localAdd;
        }
        
        int System.Collections.IList.Add(object value)
        {
            ModelCodeFluent.Vehicle vehicle = null;
            try
            {
                vehicle = ((ModelCodeFluent.Vehicle)(value));
            }
            catch (System.InvalidCastException )
            {
                string key = null;
                try
                {
                    key = ((string)(value));
                    int count = this.Count;
                    if ((this.AddByEntityKey(key) != null))
                    {
                        return 1;
                    }
                    return 0;
                }
                catch (System.InvalidCastException )
                {
                }
                if ((key == null))
                {
                    throw new System.ArgumentException("value");
                }
            }
            if ((vehicle == null))
            {
                throw new System.ArgumentException("value");
            }
            int localAdd = this.Add(vehicle);
            return localAdd;
        }
        
        void System.Collections.Generic.ICollection<ModelCodeFluent.Vehicle>.Add(ModelCodeFluent.Vehicle vehicle)
        {
            this.BaseAdd(vehicle);
        }
        
        public virtual ModelCodeFluent.Vehicle AddByEntityKey(string key)
        {
            ModelCodeFluent.Vehicle vehicle = ModelCodeFluent.Vehicle.LoadByEntityKey(key);
            if (((vehicle != null) 
                        && (this.Contains(vehicle) == false)))
            {
                this.Add(vehicle);
            }
            return vehicle;
        }
        
        public void Sort()
        {
            this.Sort(null);
        }
        
        public virtual void Sort(System.Collections.Generic.IComparer<ModelCodeFluent.Vehicle> comparer)
        {
            this.BaseList.Sort(comparer);
        }
        
        public void CopyTo(ModelCodeFluent.Vehicle[] array, int index)
        {
            this.BaseCopyTo(array, index);
        }
        
        protected virtual void BaseCopyTo(ModelCodeFluent.Vehicle[] array, int index)
        {
            this.BaseList.CopyTo(array, index);
        }
        
        void System.Collections.ICollection.CopyTo(System.Array array, int index)
        {
            CodeFluent.Runtime.Utilities.ConvertUtilities.CopyTo(this, array, index);
        }
        
        public bool Contains(ModelCodeFluent.Vehicle vehicle)
        {
            bool localContains = this.BaseContains(vehicle);
            return localContains;
        }
        
        protected virtual bool BaseContains(ModelCodeFluent.Vehicle vehicle)
        {
            if ((vehicle == null))
            {
                return false;
            }
            bool localContains = this.BaseTable.ContainsKey(vehicle.VehicleId);
            return localContains;
        }
        
        bool System.Collections.IList.Contains(object value)
        {
            ModelCodeFluent.Vehicle vehicle;
			vehicle = value as ModelCodeFluent.Vehicle;
            return this.Contains(vehicle);
        }
        
        public int IndexOf(ModelCodeFluent.Vehicle vehicle)
        {
            int localIndexOf = this.BaseIndexOf(vehicle);
            return localIndexOf;
        }
        
        protected virtual int BaseIndexOf(ModelCodeFluent.Vehicle vehicle)
        {
            if ((vehicle == null))
            {
                return -1;
            }
            int localIndexOf = this.BaseList.IndexOf(vehicle);
            return localIndexOf;
        }
        
        int System.Collections.IList.IndexOf(object value)
        {
            ModelCodeFluent.Vehicle vehicle;
			vehicle = value as ModelCodeFluent.Vehicle;
            return this.IndexOf(vehicle);
        }
        
        public void Insert(int index, ModelCodeFluent.Vehicle vehicle)
        {
            this.BaseInsert(index, vehicle);
        }
        
        protected virtual void BaseInsert(int index, ModelCodeFluent.Vehicle vehicle)
        {
            if ((vehicle == null))
            {
                throw new System.ArgumentNullException("vehicle");
            }
            try
            {
                this.BaseTable.Add(vehicle.VehicleId, vehicle);
            }
            catch (System.ArgumentNullException ane)
            {
                throw new System.ArgumentNullException(ModelCodeFluent.Resources.Manager.GetUserMessage(null, CodeFluent.Runtime.UserExceptionType.VoidCollectionKey, "ModelCodeFluent.VehicleCollection", vehicle.EntityKey), ane);
            }
            catch (System.ArgumentException ae)
            {
                throw new System.ArgumentException(ModelCodeFluent.Resources.Manager.GetUserMessage(null, CodeFluent.Runtime.UserExceptionType.ItemAlreadyAdded, "ModelCodeFluent.VehicleCollection", vehicle.VehicleId), ae);
            }
            this.BaseList.Insert(index, vehicle);
            this.OnCollectionChanged(new CodeFluent.Runtime.Utilities.IndexedCollectionChangeEventArgs(System.ComponentModel.CollectionChangeAction.Add, vehicle, index));
            this.OnListChanged(new System.ComponentModel.ListChangedEventArgs(System.ComponentModel.ListChangedType.ItemAdded, index));
        }
        
        void System.Collections.IList.Insert(int index, object value)
        {
            ModelCodeFluent.Vehicle vehicle;
			vehicle = value as ModelCodeFluent.Vehicle;
            this.Insert(index, vehicle);
        }
        
        public virtual void Clear()
        {
            int index;
            int count = this.Count;
            for (index = 0; (index < count); index = (index + 1))
            {
                ModelCodeFluent.Vehicle Vehicle = this[0];
                this.BaseRemove(Vehicle);
            }
            this.OnCollectionChanged(new CodeFluent.Runtime.Utilities.IndexedCollectionChangeEventArgs(System.ComponentModel.CollectionChangeAction.Refresh, null));
            this.OnListChanged(new System.ComponentModel.ListChangedEventArgs(System.ComponentModel.ListChangedType.Reset, -1));
        }
        
        public bool Remove(ModelCodeFluent.Vehicle vehicle)
        {
            return this.BaseRemove(vehicle);
        }
        
        protected virtual bool BaseRemove(ModelCodeFluent.Vehicle vehicle)
        {
            if ((vehicle == null))
            {
                throw new System.ArgumentNullException("vehicle");
            }
            int index = this.IndexOf(vehicle);
            this.OnListChanged(new System.ComponentModel.ListChangedEventArgs(((System.ComponentModel.ListChangedType)(CodeFluent.Runtime.Utilities.SortableBindingList<ModelCodeFluent.Vehicle>.ListChangedTypeDeleting)), index));
            bool ret;
            ret = this.BaseList.Remove(vehicle);
            vehicle.KeyChanged -= new System.EventHandler<CodeFluent.Runtime.Utilities.KeyChangedEventArgs<System.Guid>>(this.OnItemKeyChanged);
            ret = this.BaseTable.Remove(vehicle.VehicleId);
            this.OnCollectionChanged(new CodeFluent.Runtime.Utilities.IndexedCollectionChangeEventArgs(System.ComponentModel.CollectionChangeAction.Remove, vehicle, index));
            this.OnListChanged(new System.ComponentModel.ListChangedEventArgs(System.ComponentModel.ListChangedType.ItemDeleted, index));
            return ret;
        }
        
        void System.Collections.IList.Remove(object value)
        {
            ModelCodeFluent.Vehicle vehicle;
			vehicle = value as ModelCodeFluent.Vehicle;
            this.Remove(vehicle);
        }
        
        public virtual void RemoveAt(int index)
        {
            this.OnListChanged(new System.ComponentModel.ListChangedEventArgs(((System.ComponentModel.ListChangedType)(CodeFluent.Runtime.Utilities.SortableBindingList<ModelCodeFluent.Vehicle>.ListChangedTypeDeleting)), index));
            ModelCodeFluent.Vehicle vehicle = this.BaseList[index];
            if ((vehicle != null))
            {
                vehicle.KeyChanged -= new System.EventHandler<CodeFluent.Runtime.Utilities.KeyChangedEventArgs<System.Guid>>(this.OnItemKeyChanged);
                this.BaseTable.Remove(vehicle.VehicleId);
            }
            this.BaseList.RemoveAt(index);
            this.OnCollectionChanged(new CodeFluent.Runtime.Utilities.IndexedCollectionChangeEventArgs(System.ComponentModel.CollectionChangeAction.Remove, vehicle, index));
            this.OnListChanged(new System.ComponentModel.ListChangedEventArgs(System.ComponentModel.ListChangedType.ItemDeleted, index));
        }
        
        public virtual System.Collections.Generic.IEnumerator<ModelCodeFluent.Vehicle> GetEnumerator()
        {
            System.Collections.Generic.IEnumerator<ModelCodeFluent.Vehicle> e = this.BaseList.GetEnumerator();
            return e;
        }
        
        System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator()
        {
            return this.BaseList.GetEnumerator();
        }
        
        private ModelCodeFluent.Vehicle TryGetValue(System.Guid key)
        {
            ModelCodeFluent.Vehicle vehicle;
            if ((this.BaseTable.TryGetValue(key, out vehicle) == true))
            {
                return vehicle;
            }
            return null;
        }
        
        public virtual void SaveAll()
        {
            int index;
            for (index = (this.Count - 1); (index >= 0); index = (index - 1))
            {
                ModelCodeFluent.Vehicle vehicle = this[index];
                vehicle.Save();
                if ((vehicle.EntityState == CodeFluent.Runtime.CodeFluentEntityState.Deleted))
                {
                    this.Remove(vehicle);
                }
            }
        }
        
        private void LoadAll(int pageIndex, int pageSize, CodeFluent.Runtime.PageOptions pageOptions, System.Data.IDataReader reader)
        {
            if ((reader == null))
            {
                throw new System.ArgumentNullException("reader");
            }
            if ((pageIndex < 0))
            {
                pageIndex = 0;
            }
            if ((pageSize < 0))
            {
                if ((pageOptions != null))
                {
                    pageSize = pageOptions.DefaultPageSize;
                }
                else
                {
                    pageSize = int.MaxValue;
                }
            }
            this.BaseList.Clear();
            this.BaseTable.Clear();
            int count = 0;
            int readCount = 0;
            bool readerRead;
            for (readerRead = reader.Read(); ((readerRead == true) 
                        && ((count < this.MaxCount) 
                        && (count < pageSize))); readerRead = reader.Read())
            {
                readCount = (readCount + 1);
                if ((CodeFluent.Runtime.CodeFluentPersistence.CanAddEntity(pageIndex, pageSize, pageOptions, readCount) == true))
                {
                    ModelCodeFluent.Vehicle vehicle = new ModelCodeFluent.Vehicle();
                    ((CodeFluent.Runtime.ICodeFluentEntity)(vehicle)).ReadRecord(reader);
                    if ((this.BaseContains(vehicle) == false))
                    {
                        this.BaseAdd(vehicle);
                        count = (count + 1);
                    }
                    vehicle.EntityState = CodeFluent.Runtime.CodeFluentEntityState.Unchanged;
                }
            }
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, true)]
        public static ModelCodeFluent.VehicleCollection PageLoadAll(int pageIndex, int pageSize, CodeFluent.Runtime.PageOptions pageOptions)
        {
            if ((pageIndex < 0))
            {
                pageIndex = 0;
            }
            if ((pageSize < 0))
            {
                if ((pageOptions != null))
                {
                    pageSize = pageOptions.DefaultPageSize;
                }
                else
                {
                    pageSize = int.MaxValue;
                }
            }
            ModelCodeFluent.VehicleCollection ret = new ModelCodeFluent.VehicleCollection();
            System.Data.IDataReader reader = null;
            try
            {
                reader = ModelCodeFluent.VehicleCollection.PageDataLoadAll(pageOptions);
                if ((reader == null))
                {
                    return ret;
                }
                ret.LoadAll(pageIndex, pageSize, pageOptions, reader);
            }
            finally
            {
                if ((reader != null))
                {
                    reader.Dispose();
                }
                CodeFluent.Runtime.CodeFluentPersistence.CompleteCommand(ModelCodeFluent.Constants.ModelCodeFluentStoreName);
            }
            return ret;
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, true)]
        public static ModelCodeFluent.VehicleCollection LoadAll()
        {
            ModelCodeFluent.VehicleCollection ret = ModelCodeFluent.VehicleCollection.PageLoadAll(int.MinValue, int.MaxValue, null);
            return ret;
        }
        
        public static System.Data.IDataReader PageDataLoadAll(CodeFluent.Runtime.PageOptions pageOptions)
        {
            CodeFluent.Runtime.CodeFluentPersistence persistence = CodeFluentContext.Get(ModelCodeFluent.Constants.ModelCodeFluentStoreName).Persistence;
            persistence.CreateStoredProcedureCommand(null, "Vehicle", "LoadAll");
            if ((pageOptions != null))
            {
                System.Collections.IEnumerator enumerator = pageOptions.OrderByArguments.GetEnumerator();
                bool b;
                int index = 0;
                for (b = enumerator.MoveNext(); b; b = enumerator.MoveNext())
                {
                    CodeFluent.Runtime.OrderByArgument argument = ((CodeFluent.Runtime.OrderByArgument)(enumerator.Current));
                    persistence.AddParameter(string.Format("@_orderBy{0}", index), argument.Name);
                    persistence.AddParameter(string.Format("@_orderByDirection{0}", index), ((int)(argument.Direction)));
                    index = (index + 1);
                }
            }
            System.Data.IDataReader reader = CodeFluentContext.Get(ModelCodeFluent.Constants.ModelCodeFluentStoreName).Persistence.ExecuteReader();
            return reader;
        }
        
        public static System.Data.IDataReader DataLoadAll()
        {
            System.Data.IDataReader reader = ModelCodeFluent.VehicleCollection.PageDataLoadAll(null);
            return reader;
        }
        
        protected virtual void BaseTrace(System.CodeDom.Compiler.IndentedTextWriter writer)
        {
            writer.Write("[");
            writer.Write(string.Concat("Count=", this.Count));
            writer.Write("]");
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
        
        public virtual void CopyTo(ModelCodeFluent.VehicleCollection collection, bool deep)
        {
            if ((typeof(System.ICloneable).IsAssignableFrom(typeof(ModelCodeFluent.Vehicle)) == false))
            {
                deep = false;
            }
            System.Collections.Generic.IEnumerator<ModelCodeFluent.Vehicle> enumerator = this.GetEnumerator();
            bool b;
            for (b = enumerator.MoveNext(); b; b = enumerator.MoveNext())
            {
                if ((deep == true))
                {
                    collection.Add(((ModelCodeFluent.Vehicle)(((System.ICloneable)(enumerator.Current)).Clone())));
                }
                else
                {
                    collection.Add(enumerator.Current);
                }
            }
        }
        
        public virtual ModelCodeFluent.VehicleCollection Clone(bool deep)
        {
            ModelCodeFluent.VehicleCollection ret = new ModelCodeFluent.VehicleCollection();
            this.CopyTo(ret, deep);
            return ret;
        }
        
        object System.ICloneable.Clone()
        {
            return this.Clone(true);
        }
        
        public virtual void CancelNew(int index)
        {
            if (((this._addNewPos >= 0) 
                        && (this._addNewPos == index)))
            {
                this.RemoveAt(index);
                this._addNewPos = -1;
            }
        }
        
        public virtual void EndNew(int index)
        {
            if (((this._addNewPos >= 0) 
                        && (this._addNewPos == index)))
            {
                this._addNewPos = -1;
            }
        }
        
        void System.ComponentModel.IBindingList.AddIndex(System.ComponentModel.PropertyDescriptor property)
        {
            this._blm2933840664.AddIndex(property);
        }
        
        protected virtual void OnAddingNew(System.ComponentModel.AddingNewEventArgs e)
        {
            if ((this.AddingNew != null))
            {
                this.AddingNew(this, e);
            }
        }
        
        object System.ComponentModel.IBindingList.AddNew()
        {
            ModelCodeFluent.Vehicle add = new ModelCodeFluent.Vehicle();
            System.ComponentModel.AddingNewEventArgs e = new System.ComponentModel.AddingNewEventArgs(add);
            this.OnAddingNew(e);
            add = ((ModelCodeFluent.Vehicle)(e.NewObject));
            if ((add == null))
            {
                add = new ModelCodeFluent.Vehicle();
            }
            add.VehicleId = System.Guid.NewGuid();
            this._addNewPos = this.Add(add);
            return add;
        }
        
        void System.ComponentModel.IBindingList.ApplySort(System.ComponentModel.PropertyDescriptor property, System.ComponentModel.ListSortDirection direction)
        {
            this._blm2933840664.ApplySort(property, direction);
        }
        
        int System.ComponentModel.IBindingList.Find(System.ComponentModel.PropertyDescriptor property, object key)
        {
            return this._blm2933840664.Find(property, key);
        }
        
        void System.ComponentModel.IBindingList.RemoveIndex(System.ComponentModel.PropertyDescriptor property)
        {
            this._blm2933840664.RemoveIndex(property);
        }
        
        void System.ComponentModel.IBindingList.RemoveSort()
        {
            this._blm2933840664.RemoveSort();
        }
        
        protected virtual void OnListChanged(System.ComponentModel.ListChangedEventArgs e)
        {
            if ((e == null))
            {
                throw new System.ArgumentNullException("e");
            }
            if ((this.RaiseListChangedEvents == false))
            {
                return;
            }
            if ((((e.ListChangedType == System.ComponentModel.ListChangedType.Reset) 
                        == false) 
                        && (e.NewIndex < 0)))
            {
                return;
            }
            if ((this.ListChanged != null))
            {
                this.ListChanged(this, e);
            }
        }
        
        public void AddRange(System.Collections.Generic.IEnumerable<ModelCodeFluent.Vehicle> collection)
        {
            CodeFluent.Runtime.Utilities.ConvertUtilities.AddRange(this, collection);
        }
        
        private void OnItemKeyChanged(object sender, CodeFluent.Runtime.Utilities.KeyChangedEventArgs<System.Guid> e)
        {
            if ((e == null))
            {
                throw new System.ArgumentNullException("e");
            }
            ModelCodeFluent.Vehicle existing;
            if ((this.BaseTable.TryGetValue(e.OldKey, out existing) == false))
            {
                return;
            }
            if (((sender != null) 
                        && (typeof(CodeFluent.Runtime.Utilities.IKeyable<System.Guid>).IsAssignableFrom(sender.GetType()) == true)))
            {
                CodeFluent.Runtime.Utilities.IKeyable<System.Guid> item = ((CodeFluent.Runtime.Utilities.IKeyable<System.Guid>)(sender));
                try
                {
                    this.BaseTable.Add(item.Key, existing);
                }
                catch (System.ArgumentNullException ane)
                {
                    throw new System.ArgumentNullException(ModelCodeFluent.Resources.Manager.GetUserMessage(null, CodeFluent.Runtime.UserExceptionType.VoidCollectionKey, "ModelCodeFluent.VehicleCollection", ((CodeFluent.Runtime.ICodeFluentEntity)(item)).EntityKey), ane);
                }
                catch (System.ArgumentException ae)
                {
                    throw new System.ArgumentException(ModelCodeFluent.Resources.Manager.GetUserMessage(null, CodeFluent.Runtime.UserExceptionType.ItemAlreadyAdded, "ModelCodeFluent.VehicleCollection", item.Key), ae);
                }
                this.BaseTable.Remove(e.OldKey);
            }
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, true)]
        public static ModelCodeFluent.VehicleCollection PageLoadAll(int pageIndex, int pageSize)
        {
            return ModelCodeFluent.VehicleCollection.PageLoadAll(pageIndex, pageSize, null);
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Update, true)]
        public static bool Save(ModelCodeFluent.Vehicle vehicle)
        {
            if ((vehicle == null))
            {
                return false;
            }
            bool ret = vehicle.Save();
            return ret;
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public static bool Insert(ModelCodeFluent.Vehicle vehicle)
        {
            bool ret = ModelCodeFluent.Vehicle.Save(vehicle);
            return ret;
        }
        
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Delete, true)]
        public static bool Delete(ModelCodeFluent.Vehicle vehicle)
        {
            if ((vehicle == null))
            {
                return false;
            }
            bool ret = vehicle.Delete();
            return ret;
        }
    }
}
