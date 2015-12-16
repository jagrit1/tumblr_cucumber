Given(/^I am on the dashboard$/) do
 expect(@browser.url).to eq "https://www.tumblr.com/dashboard"
end

Given(/^I have clicked text post$/) do
 @browser.i(class:"icon_post_text").click 
end

When(/^I enter the title "([^"]*)" into the title field$/) do |arg1|
 @browser.div(class:"editor-plaintext").send_keys "Testing 123"
end

When(/^I enter the body "([^"]*)" into the body field$/) do |arg1|
 @browser.div(class:"editor-richtext").click
 @browser.div(class:"editor-richtext").send_keys "Testing tumblr"
end

When(/^I select post$/) do
 @browser.button(class:"create_post_button").click
end

When(/^I go to my blog page$/) do
 @browser.goto "http://jagritgyawali.tumblr.com"
 @browser.alert.ok
end

Then(/^I should see my post on the blog with the correct title and body$/) do
 verification = @browser.elements(class: "body-text")
	verification.each do |a| 
  if a.text.match /This is my text/
		puts "#{a.text},\nThe post has been successfully made and listed in dashboard!"
		break;
	else
		puts "The post could not be found"
  end
  end
end
