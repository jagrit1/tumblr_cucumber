class TumblrLoginPage < GenericPages
	def visit
		@browser.goto "http://tumblr.com/login"
	end

	def set_wrong_email(email)
		@browser.text_field(id: 'signup_email').set email
	end

	def set_wrong_password(password)
	  @browser.text_field(id: 'signup_password').set password
	end

	def set_email(email)
		@browser.text_field(id: 'signup_email').set email
	end

	def set_password(password)
	@browser.text_field(id: 'signup_password').set password
	end
	def login_button
	  @browser.button(id: "signup_forms_submit").click
	end

	def ul_element
		@browser.ul(id: "signup_form_errors").li.when_present.text
	end

	def url
		@browser.url
	end
end
