Feature: Posting a text post on tumblr
  @tumblr_post
  Scenario: Post a text post with Title and Body
  Given I am on the dashboard
  And I have clicked text post
  When I enter the title "Testing 123" into the title field
  And I enter the body "This is my text" into the body field
  And I select post
  And I go to my blog page
  Then I should see my post on the blog with the correct title and body
  And I should be able to delete the dummy post I made
