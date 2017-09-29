using System;
namespace WebAppExample.Interfaces
{
    public interface IAccount
    {
		decimal GetBalance();

        void Deposit(decimal monies);

        void Withdraw(decimal monies);

        void AddTransaction(string trans);

    }

}
