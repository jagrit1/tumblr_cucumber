Feature: Logging in to tumblr
	
	Background: 
		Given I am on the tumblr login page
	@unsuccessful_login
	Scenario: Unsuccessful login with invalid login credentials
		When I input a invalid email into email field
		And I input a invalid password into password field
		And I choose to login with invalid credentials
		Then I should not be able to sucessfully log in to tumblr
		And I should get an error message that my email or password was incorrect

	@successful_login
	Scenario: Successful login with  valid login credentials
		When I input a valid email into email field
		And I input a valid password into password field
		And I choose to login
		Then I should be able to access my dashboard

