using BankManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BankManagementSystem.DAL
{
    public class DataManager
    {
        DbModelContext db = new DbModelContext();
        public IQueryable<Bank> GetBankInfo()
        {
            return db.Banks.AsQueryable();
        }
        public void InsertBank(Bank b)
        {
            db.Banks.Add(b);
            db.SaveChanges();
        }
        public void UpdateBank(Bank b)
        {
            db.Entry(b).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
        public void DeleteBank(Bank b)
        {
            db.Entry(b).State = System.Data.Entity.EntityState.Deleted;
        
            db.SaveChanges();
        }
        public IQueryable<Client> GetClients()
        {
            return db.Clients.AsQueryable();
        }
        public IQueryable<Client> GetClients(int AccountId)
        {
            return db.Clients.Where(x => x.Bank.AccountId == AccountId).AsQueryable();
        }
        public void InsertClient(Client c)
        {
            db.Clients.Add(c);
            db.SaveChanges();
        }
        public void UpdateClient(Client c)
        {
            db.Entry(c).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
        public void DeleteClient(Client c)
        {
            db.Entry(c).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}