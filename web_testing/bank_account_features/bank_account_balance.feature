Feature: transactions
	As a customer
	I want to be able to view my transactions
	So that I can check my expenditure

	Scenario: As a customer I want to view my transactions 
		Given That I am a valid user on the transactions page 
		Then I can see my current activity

    Scenario: As a customer with no transactions I see no transactions
        Given That I am a valid user on the transactions page having made no transactions
        Then There are no transactions showing

    Scenario: As a customer with no money left in customer account
        Given That I am a valid user on the transactions page 
        Then I can see how many transactions I've made 
        And A warning that there is no more money in the account 