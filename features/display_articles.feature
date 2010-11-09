Feature: Display Articles
  In order to read the correct article
  As a user
  I want to browse articles and see detailed information

  Scenario: List articles
    Given the following articles exist
      | title         | body                         |
      | Ruby on Rails | An interesting web framework |
      | Cucumber      | A very good vegetable        |
    When I go to path "/articles/"
    #Then I should see "Ruby on Rails"
    #And  I should see "Cucumber"
    Then I should see the articles table
      | Ruby on Rails | An interesting web framework |
      | Cucumber      | A very good vegetable        |

  Scenario: