using System;
using System.Collections.Generic;
using WebAppExample.Interfaces;
namespace WebAppExample
{
    public class SimpleDatabase : ISimpleDatabase
    {
        public SimpleDatabase()
        {
        }

        public List<String> GetAll()
        {
            List<String> data = new List<string>();

            data.Add("Hello");
            data.Add("Everyone");
            data.Add("My name is bob");

            return data;
        }
    }
}
