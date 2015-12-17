browser = Watir::Browser.new :firefox

Before do 
	@browser = browser
	@App = App.new @browser
end

After do
end

at_exit do
	browser.close
end

=begin
Before('@logged_in') do
	log_user_in UserData.first
end

After('@logged_in') do
	log_out_all
end

After do |scenario|
	puts "Oh No!" if scenario.failed?
end
=end
