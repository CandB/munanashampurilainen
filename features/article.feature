Feature: Adding article -type references
  Scenario: Add valid article reference
    Given I am on the articles page
      And I navigate to New
    When I fill in Fdsa as Title
      And I fill in FDfdf as Author
      And I fill in DDDffff as Journal
      And I fill in 1991 as Year
      And I press Create
    Then the following article reference should exist:
      |author|FDfdf|
      |title|Fdsa|
      |journal|DDDffff|
      |year|1991|