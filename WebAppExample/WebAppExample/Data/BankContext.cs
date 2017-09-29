using WebAppExample.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace WebAppExample.Data
{
    public class BankContext :DbContext
    {
        public DbSet<Account> Accounts { get; set; }

        public BankContext(DbContextOptions<BankContext> options): base(options)
        {
        }
    }
}
