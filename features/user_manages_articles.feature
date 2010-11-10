Feature: User manages articles
  In order to have articles in the blog
  As a user
  I should be able to create, edit, view and list articles

  Scenario: User adds a new article
    Given I go to the new article page 
    And I fill in "Title" with "Testing in Rails"
    And I fill in "Body" with "A quick guide on how to test in Ruby on Rails"
    When I press "Create"
    Then I should be on the article list page 
    And I should see "Testing in Rails"
