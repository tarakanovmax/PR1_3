﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UZPIS
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Вид_товара> Вид_товара { get; set; }
        public virtual DbSet<Доставка> Доставка { get; set; }
        public virtual DbSet<Заказ> Заказ { get; set; }
        public virtual DbSet<Заказчик> Заказчик { get; set; }
        public virtual DbSet<Оплата> Оплата { get; set; }
        public virtual DbSet<Партии> Партии { get; set; }
        public virtual DbSet<Состав_Накладной> Состав_Накладной { get; set; }
        public virtual DbSet<Товар> Товар { get; set; }
        public virtual DbSet<Товарная_накладная> Товарная_накладная { get; set; }
        public virtual DbSet<Товары_на_заказ> Товары_на_заказ { get; set; }
    }
}