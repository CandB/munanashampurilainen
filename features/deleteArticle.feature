# @javascript
Feature: Remove article -type references

  Scenario: Remove an existing article
    Given I am on the articles page
      And I navigate to New
    When I fill in Fdsa as Title
      And I fill in FDfdf as Author
      And I fill in DDDffff as Journal
      And I fill in 1991 as Year
      And I press Create
      And I press Back
      And I press Destroy
      And I confirm
    Then the given article reference shouldn't exist