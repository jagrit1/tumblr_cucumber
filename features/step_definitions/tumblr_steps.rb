Given(/^I am on Amazon homepage$/) do
	@browser.goto"http://amazon.co.uk"
end

When(/^I enter "([^"]*)"$/) do |search_term|
	@browser.text_field(id: "twotabsearchtextbox").when_present.set search_term	
end

When(/^I press "([^"]*)"$/) do |search_term|
	@browser.send_keys "\n"
end

Then(/^the output should see some search results$/) do
	expect(@browser.ul(id: "s-results-list-atf").when_present.lis.length).to be > 1
end

Then(/^the first one should contain the word "([^"]*)"$/) do |search|
expect(@browser.li(id: "result_0").text).to match search
end
