﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLBAIGUIXE.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QLBAIXEEntities1 : DbContext
    {
        public QLBAIXEEntities1()
            : base("name=QLBAIXEEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Bill> Bills { get; set; }
        public virtual DbSet<CUSTOMER> CUSTOMERs { get; set; }
        public virtual DbSet<EMPLOYEE> EMPLOYEEs { get; set; }
        public virtual DbSet<INFOCAR> INFOCARs { get; set; }
        public virtual DbSet<INFOPAKING> INFOPAKINGs { get; set; }
        public virtual DbSet<PAKING> PAKINGs { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
    }
}
