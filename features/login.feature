Feature: Logging in to tumblr
	
	Background: 
		Given I am on the tumblr login page

	Scenario: Successful login with  valid login credentials
		When I input a valid username "jaggywali@gmail.com" into username field
		And I input a valid password "spartaglobal" into password field
		And I choose to login
		Then I should be able to access my dashboard

	Scenario: Unsuccessful login with invalid login credentials
		When I input a invalid "username" into username field
		And I input a invalid "password" into password field
		And I choose to login
		Then I should not be able to sucessfully log in to tumblr

