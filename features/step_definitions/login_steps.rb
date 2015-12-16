Given(/^I am on the tumblr login page$/) do
	
	@browser.goto "http://tumblr.com/login"
end

When(/^I input a invalid "([^"]*)" into username field$/) do |email|
	@browser.text_field(id: 'signup_email').set "fjaf"
end

When(/^I input a invalid "([^"]*)" into password field$/) do |password|
	@browser.text_field(id: 'signup_password').set "fhajk"
end

When(/^I choose to login with invalid credentials$/) do
  @browser.button(id: "signup_forms_submit").click
end

Then(/^I should not be able to sucessfully log in to tumblr$/) do
  expect(@browser.url).to match /.*login/
end

Then(/^I should get an error message that my email or password was incorrect$/) do
	expect(@browser.ul(id: "signup_form_errors").li.when_present.text).to match /Your email or password were incorrect.|Don't forget to fill out the Captcha!/
end

When(/^I input a valid username "([^"]*)" into username field$/) do |email|
	@browser.text_field(id: 'signup_email').set email
end

When(/^I input a valid password "([^"]*)" into password field$/) do |password|
	@browser.text_field(id: 'signup_password').set password
end

When(/^I choose to login$/) do
  @browser.button(id: "signup_forms_submit").click
end

Then(/^I should be able to access my dashboard$/) do
  expect(@browser.url).to match /.*dashboard/
end



