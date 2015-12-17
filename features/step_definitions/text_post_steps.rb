Given(/^I am on the dashboard$/) do
  @b = @App.tumblr_dashboard
  expect(@b.url).to eq "https://www.tumblr.com/dashboard"
end

Given(/^I have clicked text post$/) do
  @b.text_post_button
end

When(/^I enter the title "([^"]*)" into the title field$/) do |title|
  @b.set_title(title)
end

When(/^I enter the body "([^"]*)" into the body field$/) do |body|
 @b.set_body(body)
end

When(/^I select post$/) do
  @b.submit_post
end

When(/^I go to my blog page$/) do
 @b.visit_blog
end

Then(/^I should see my post on the blog with the correct title and body$/) do
 @b.verification
end

Then(/^I should be able to delete the dummy post I made$/) do
 	@b.delete
end
