# @javascript
Feature: Remove inproceedings -type references

  Scenario: Remove an existing inproceedings -reference
    Given I am on the inproceedings page
      And I navigate to New
    When I fill in Fdsa as Title
      And I fill in DDDffff as Booktitle
      And I fill in 1991 as Year
      And I fill in FDfdf as Author
      And I press Create
      And I press Back
      And I press Destroy
      # And I confirm
    Then the given inproceedings reference shouldn't exist