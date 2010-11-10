Feature: Display Articles
  In order to read the correct article
  As a user
  I want to browse articles and see detailed information

  Scenario: List articles
    Given the following articles exist
      | title         | body                         |
      | Ruby on Rails | An interesting web framework |
      | Cucumber      | A very good vegetable        |
    When I go to the article list page
    #Then I should see "Ruby on Rails"
    #And  I should see "Cucumber"
    Then I should see the articles table
      | Ruby on Rails | An interesting web framework |
      | Cucumber      | A very good vegetable        |
    #Then show me the page

  Scenario: Show an article
    Given an article exists with title: "Ruby on Rails", body: "A web framework", id: 1
    When I go to the show page for that article
    Then I should see "Ruby on Rails"
    And I should see "A web framework"