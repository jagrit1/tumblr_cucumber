Feature: Posting a Text Post to Tumblr
	
	Background: 
		Given I am logged in to the system
		And I am on Tumblr editor box

	Scenario: Successful post with title and body
		When I input "title" and "body text" 
		And I click on the "Post" button
		Then my post should be viewable on my blog
		And the post should be viewable on the dashboard
	Scenario: Unsuccessful post
		When I dont input a "title"
		And I only enter a backslash into the "body text"
		And I ckilk on the "Post" button
		Then a message should be displayed saying "Post cannot be empty" 
	Scenario: Post button is unavailable
		When "title" and "text body" are empty
		And regardlsess of tags being specified or not
		Then the post button should not be clickable
	Scenario: Successful post with only title
		When I input "title" but no "body text" 
		And I click on the "Post" button
		Then my post should be viewable on my blog
		And the post should be viewable on the dashboard
	Scenario: Discarding post
		When I input "title" and "body text"
		And I click "close" button
		Then I get a warning message saying  "Discard this post?"




