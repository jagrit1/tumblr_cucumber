class TumblrDashboardPage < GenericPages

	def text_post_button
 		@browser.i(class:"icon_post_text").click 
	end

	def set_title(title)
		@browser.text_field(name: 'q').send_keys "testing title"
	end

	def set_body(body)
		@browser.div(class:"editor-richtext").click
 		@browser.div(class:"editor-richtext").send_keys "Testing tumblr"	
 	end

	def submit_post
		 @browser.button(class:"create_post_button").click
	end

	def visit_blog
		@browser.goto "http://jagritgyawali.tumblr.com"
 		@browser.alert.ok
	end

	def verification
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

	def delete
		@browser.goto "https://www.tumblr.com/blog/jagritgyawali"
	  @browser.div(class: "post_control").click
	  @browser.div(class: "post_control delete").click
	  @browser.button(class: "chrome blue").click
	  puts "The blog has been deleted as well"
	end
end
