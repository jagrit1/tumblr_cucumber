browser = Watir::Browser.new :firefox

Before do 
	@browser = browser
	@App = App.new @browser
end

#After ('@successful_login') do |scenario|
#  	log_out_all
#end

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

After ('@posted') do |scenario|
  @blog_name = CONFIG["login"][2]["blog"]
  @browser.goto "https://www.tumblr.com/blog/#{@blog_name}"
  #@browser.alert.ok
  @browser.div(class: "post_control").click
  @browser.div(class: "delete").click
  sleep 2
  @browser.button(class: "chrome blue").click
end
=end
