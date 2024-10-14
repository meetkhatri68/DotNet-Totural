using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrudConsoleApp
{
    public class AppDbContext : DbContext
    {
        public DbSet<Student> Students {  get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=.;Database=StudentDB;Integrated Security=true;TrustServerCertificate=True;");

        }
    }
}
