using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebAppExample.Models;
using WebAppExample.Interfaces;
using WebAppExample.Data;

namespace WebAppExample.Controllers
{
    public class HomeController : Controller
    {
        BankContext db;

        public HomeController(BankContext context)
        {
            db = context;
        }

        public IActionResult Index()
        {
            db.Accounts.Add(new Account());
            //ViewData["Data"] = account.GetBalance();
            //ViewData["transactions"] =
            var count = db.SaveChanges();
            Console.WriteLine($"{count} records saved to database");

            return View();
        }

        public IActionResult WithdrawAndDeposit([FromServices] IAccount account)
        {
            ViewData["Message"] = "This is where you withdraw and deposit monies";
            ViewData["Data"] = account.GetBalance();

            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        public IActionResult Submit([FromServices] IAccount account, decimal monies, String transactionType)
        {
			switch (transactionType)
			{
				case "Deposit":
                    string deposit = "You have deposited £{monies}";
					account.Deposit(monies);
                    ViewData["Title"] = $"Transaction Complete! {deposit}";
                    account.AddTransaction(deposit);
					break;
				case "Withdraw":
					if (account.GetBalance() >= monies)
					{
                        string withdraw = "You have withdrawn £{monies}";
						account.Withdraw(monies);
                        ViewData["Title"] = $"Transaction Complete! {withdraw}";
                        account.AddTransaction(withdraw);
					}
                    else 
                    {
                        ViewData["Title"] = "You don't have enough money in your account to withdraw that amount";
                    }
					break;
			}

            return View();
        }
    }
}
