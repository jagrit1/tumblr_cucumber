#generic_pages.rb

class GenericPages
	include RSpec::Matchers
	attr_accessor :browser

	def initialize (browser)
		@browser = browser
	end

	def visit
		@browser.goto "http://tumblr.com/login"
	end

	def element_exists?(el)
		@browser.element(el).exists?
	end

	def url
		@browser.url
	end

	def title
		@browser.title
	end
end


