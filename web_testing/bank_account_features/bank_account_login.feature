Feature: Login
    As a customer
    I want to be able to login to my account
    So that I can check my balance

    Scenario: As a valid user able to log in
        Given That I am on the login page
        When I enter valid login credentials 
        Then I am logged in as a valid user


    Scenario: As a invalid user unable to log in
        Given That I am on the login page
        When I enter invalid login credentials 
        Then I receive an error message stating invalid username/password

    Scenario: As a user I can reset my password
        Given That I am a registered user 
        When I click on reset password link
        And I enter username/email
        Then get given the link to reset password

