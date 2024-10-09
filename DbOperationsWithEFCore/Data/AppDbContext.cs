﻿using Microsoft.EntityFrameworkCore;

namespace DbOperationsWithEFCoreApp.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        { 
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Currency>().HasData(
                new Currency() { Id = 1, Title = "INR", Descrption = "Indian INR"},
                new Currency() { Id = 2, Title = "Dollar", Descrption = "Dollar" },
                new Currency() { Id = 3, Title = "Euro", Descrption = "Euro" },
                new Currency() { Id = 4, Title = "Dinar", Descrption = "Dinar" }
                );

            modelBuilder.Entity<Language>().HasData(
              new Language() { Id = 1, Title = "Hindi", Description = "Hindi" },
              new Language() { Id = 2, Title = "Tamil", Description = "Tamil" },
              new Language() { Id = 3, Title = "Punjabi", Description = "Punjabi" },
              new Language() { Id = 4, Title = "English", Description = "English" }
              );
        }

        public DbSet<Book> Books  { get; set; }
        public DbSet<Language> Languages  { get; set; }
        public DbSet<BookPrice> BookPrices  { get; set; }
        public DbSet<Currency> Currencies { get; set; }
        public DbSet<Author> Authors { get; set; }
    }
}
