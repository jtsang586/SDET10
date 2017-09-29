using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Support.PageObjects;
using BbcTest.pages;

namespace BbcTest
{
    [TestFixture()]
    public class BbcSignError
    {
        private IWebDriver driver;

        [SetUp]
        public void SetUp()
        {
            driver = new ChromeDriver();
            driver.Manage().Window.Maximize();
        }


        [Test()]
        public void BbcSignInErrorFirst()
        {
            BbcHomepage bbchomepage = new BbcHomepage(driver);
            bbchomepage.GoToPage();
            bbchomepage.ClickSignInLink();
			BbcSignInPage bbcsignin = new BbcSignInPage(driver);
            bbcsignin.FillInUsername("dsdsadas");
            bbcsignin.FillInPassword("dsddasfas");
            bbcsignin.ClickSubmitButton();

            Assert.AreEqual(bbcsignin.Geterrormessage().Text, "Sorry, we can’t find an account with that username. If you're over 13, try your email address instead or get help here.");
        }

        ////[Test()]
        //public void BbcSubmit()
        //{
        //    BbcSignInPage bbcsignin = new BbcSignInPage(driver);
        //    bbcsignin.ClickSubmitButton();
        //}

        [TearDown]
        public void TearDown()
        {
            driver.Close();
        }
    }
}
