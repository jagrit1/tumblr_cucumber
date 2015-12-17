Given(/^I am on the tumblr login page$/) do
	@a = @App.tumblr_login
	@a.visit
end

When(/^I input a invalid "([^"]*)" into username field$/) do |email|
	@a.set_wrong_email(email)	
end

When(/^I input a invalid "([^"]*)" into password field$/) do |password|
	@a.set_wrong_password(password)
end

When(/^I choose to login with invalid credentials$/) do
	@a.login_button
end

Then(/^I should not be able to sucessfully log in to tumblr$/) do
  expect(@a.url).to match /.*login/
end

Then(/^I should get an error message that my email or password was incorrect$/) do
	expect(@a.ul_element).to match /Your email or password were incorrect.|Don't forget to fill out the Captcha!/
end

When(/^I input a valid username "([^"]*)" into username field$/) do |email|
	@a.set_email(email)	
end

When(/^I input a valid password "([^"]*)" into password field$/) do |password|
	@a.set_password(password)	
end

When(/^I choose to login$/) do
	@a.login_button
end

Then(/^I should be able to access my dashboard$/) do
  expect(@a.url).to match /.*dashboard/
end



