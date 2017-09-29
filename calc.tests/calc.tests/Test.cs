using NUnit.Framework;
using System;
namespace calc.tests
{
    [TestFixture()]
    public class CalcTests
    {
        Calc calc = new Calc();
        int FirstNum = 4;
        int SecondNum = 2;

        [Test()]
        public void CheckAdditionWorks()
        {
            Assert.That(calc.Add(FirstNum, SecondNum).Equals(6));
        }
    }
}
