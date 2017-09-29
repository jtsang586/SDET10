using System;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.PageObjects;

namespace BbcTest.pages
{
    public class BbcHomepage
    {
        private IWebDriver driver;

        public BbcHomepage(IWebDriver driver)
        {
            this.driver = driver;
            PageFactory.InitElements(driver, this);
        }

        [FindsBy(How = How.Id, Using = "idcta-link")]
        private IWebElement SignInLink;

        public void GoToPage()
        {
            driver.Navigate().GoToUrl("https://bbc.co.uk");
        }

        public void ClickSignInLink()
        {
            SignInLink.Click();
        }

    }
}
