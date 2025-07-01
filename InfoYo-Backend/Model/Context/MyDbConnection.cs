using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    public partial class MyDbConnection: DbContext
    {
        private MyDbConnection(string connectionString)
            : base(connectionString) 
        { 
            this.Configuration.LazyLoadingEnabled = false;
            this.Configuration.ProxyCreationEnabled = false;
            this.Database.CommandTimeout = 900;
        }

        public static MyDbConnection Create()
        {
            return new MyDbConnection("name:DbConnection");
        }
    }
}
