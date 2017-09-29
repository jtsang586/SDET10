using OpenQA.Selenium;
using OpenQA.Selenium.Support.PageObjects;

namespace BbcTest.pages
{
    public class BbcSignInPage
    {
        private IWebDriver driver;

        public BbcSignInPage(IWebDriver driver)
        {
            this.driver = driver;
            PageFactory.InitElements(driver, this);
        }

		[FindsBy(How = How.Id, Using = "submit-button")]
		private IWebElement SubmitButton;

        [FindsBy(How = How.Id, Using = "username-input")]
        private IWebElement UsernameInput;

		[FindsBy(How = How.Id, Using = "password-input")]
		private IWebElement PasswordInput;

		[FindsBy(How = How.Id, Using = "form-error-username")]
		private IWebElement usernameerror;

		public void GoToPage()
		{
			driver.Navigate().GoToUrl("https://account.bbc.com/signin");
		}

		public void ClickSubmitButton()
		{
            SubmitButton.Click();
		}

        public void FillInUsername(string name)
        {
            UsernameInput.SendKeys(name);
        }

        public void FillInPassword(string pass)
        {
            PasswordInput.SendKeys(pass);
        }


        public IWebElement Geterrormessage()
		{
            return usernameerror;

		}
    }
}
