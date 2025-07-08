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

        //Fluent API
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<OCnyComplaintOpinion>()
                .HasKey(x => new { x.OCompanyOpinionId, x.OPersonId });

            modelBuilder.Entity<OJobOfferPerson>()
                .HasKey(x => new { x.OPersonId, x.OJobOfferId });
            
        }
    }
}
