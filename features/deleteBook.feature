# @javascript
Feature: Remove book -type references

  Scenario: Remove an existing article
    Given I am on the books page
    And I navigate to New
    When I fill in Fdsa as Title
      And I fill in FDfdf as Author
      And I fill in DDDffff as Publisher
      And I fill in 1991 as Year
      And I press Create
      And I press Back
      And I press Destroy
      # And I confirm
    Then the given book reference shouldn't exist