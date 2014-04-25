Feature: Editing article -type references

  Scenario: Edit an existing article
    Given I am on the articles page
      And I navigate to New
    When I fill in Fdsa as Title
      And I fill in FDfdf as Author
      And I fill in DDDffff as Journal
      And I fill in 1991 as Year
      And I press Create
      And I press Edit
      And I fill in asdlkfjdklsjf as Title
      And I press Update
    Then the following article reference should exist:
      |author|FDfdf|
      |title|asdlkfjdklsjf|
      |journal|DDDffff|
      |year|1991|