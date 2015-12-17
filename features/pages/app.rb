class App
	def initialize(browser)
		@b = browser
	end

	def generic_page
			GenericPages.new @b
	end

	def tumblr_login
			TumblrLoginPage.new @b
	end

	def tumblr_dashboard
			TumblrDashboardPage.new @b
	end
end
