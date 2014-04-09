Feature: Adding book -type references

  Scenario: Add valid book reference with author
    Given I am on the books page
      And I navigate to New
    When I fill in Fdsa as Title
     And I fill in FDfdf as Author
     And I fill in DDDffff as Publisher
     And I fill in 1991 as Year
     And I press Create
    Then the following book reference should exist:
      |author|FDfdf|
      |title|Fdsa|
      |publisher|DDDffff|
      |year|1991|

  Scenario: Add valid book reference with editor
    Given I am on the books page
      And I navigate to New
    When I fill in Fdsa as Title
     And I fill in FDfdf as Editor
     And I fill in DDDffff as Publisher
     And I fill in 1991 as Year
     And I press Create
    Then the following book reference should exist:
      |editor|FDfdf|
      |title|Fdsa|
      |publisher|DDDffff|
      |year|1991|

  Scenario: Add valid book reference with multiple authors
    Given I am on the books page
      And I navigate to New
    When I fill in Fdsa as Title
     And I fill in FDfdf and Ghfdsf as Author
     And I fill in DDDffff as Publisher
     And I fill in 1991 as Year
     And I press Create
    Then the following book reference should exist:
      |author|FDfdf and Ghfdsf|
      |title|Fdsa|
      |publisher|DDDffff|
      |year|1991|

  @wip
  Scenario: Add book reference missing publisher
    Given I am on the books page
      And I navigate to New
    When I fill in Fdsa as Title
     And I fill in FDfdf as Author
     And I fill in 1991 as Year
     And I press Create
    Then I should get an error
