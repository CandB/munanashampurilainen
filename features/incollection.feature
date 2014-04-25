Feature: Adding incollection -type references

  Scenario: Add valid incollection reference
    Given I am on the inproceedings page
      And I navigate to New
    When I fill in Fdsa as Title
      And I fill in DDDffff as Booktitle
      And I fill in 1991 as Year
      And I fill in FDfdf as Author
      And I press Create
    Then the following incollection reference should exist:
      |author|FDfdf|
      |title|Fdsa|
      |booktitle|DDDffff|
      |year|1991|

  Scenario: Add incollection reference without booktitle
    Given I am on the incollections page
      And I navigate to New
    When I fill in Fdsa as Title
      And I fill in 1991 as Year
      And I fill in FDfdf as Author
      And I press Create
    Then I should get an error

  Scenario: Add incollection reference without author
    Given I am on the incollections page
      And I navigate to New
    When I fill in Fdsa as Title
      And I fill in DDDffff as Booktitle
      And I fill in 1991 as Year
      And I press Create
    Then I should get an error

  Scenario: Add incollection reference without title
    Given I am on the incollections page
      And I navigate to New
    When I fill in Fdsa as Booktitle
      And I fill in 1991 as Year
      And I fill in FDfdf as Author
      And I press Create
    Then I should get an error