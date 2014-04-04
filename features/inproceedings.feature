Feature: Adding inproceedings -type references
  
  Scenario: Add valid inproceedings reference
    Given I am on the in_proceedings page
      And I navigate to New
    When I fill in Fdsa as Title
     And I fill in DDDffff as Booktitle
     And I fill in 1991 as Year
     And I fill in FDfdf as Author
     And I press Create
    Then the following inproceedings reference should exist:
      |author|FDfdf|
      |title|Fdsa|
      |booktitle|DDDffff|
      |year|1991|