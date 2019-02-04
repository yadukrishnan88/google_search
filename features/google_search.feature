Feature: Users can perform web search on Google Home page

  Scenario Outline: As a user I navigate to google home page and do a websearch for a phrase
    Given I open https://www.google.com
    When I search for "<search_term>"
    Then I should see the results
    Examples:
      | search_term |
      | selenium    |
#      | cucumber    |
#      | ruby        |