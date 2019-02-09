using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApi_ReactCrud.Models;
using System.Data.Entity;

namespace WebApi_ReactCrud.Models
{
    public class MyDatabaseContext : DbContext
    {
        public MyDatabaseContext() : base("BlogApi")
        {
           
        }

        public DbSet<Post> postDbSet { get; set; }
        public DbSet<Comment> commentDbSet { get; set; }
        public DbSet<LogIn> logInDbSet { get; set; }
    }
}