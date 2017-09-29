using System;
using System.Collections.Generic;
using WebAppExample.Interfaces;
namespace WebAppExample
{
    public class Account : IAccount
    {
        public int ID { get; set; }
        public List<String> transactions;
        decimal Balance;

        public void Deposit(decimal Monies)
        {
            Balance += Monies;
        }

        public decimal GetBalance()
        {
            return Balance;
        }

        public void Withdraw(decimal Monies)
        {
            Balance -= Monies;
        }

        public void AddTransaction (string trans)
        {
            transactions.Add(trans);
        }
    }
}
