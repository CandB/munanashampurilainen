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

  Scenario: Add valid book reference with both author and editor
    Given I am on the books page
      And I navigate to New
    When I fill in Fdsa as Title
     And I fill in FDfdf as Author
     And I fill in FDfdf666 as Editor
     And I fill in DDDffff as Publisher
     And I fill in 1991 as Year
     And I press Create
    Then the following book reference should exist:
      |author|FDfdf|
      |title|Fdsa|
      |editor|FDfdf666|
      |publisher|DDDffff|
      |year|1991|

  Scenario: Add book reference with no publisher
    Given I am on the books page
      And I navigate to New
    When I fill in Fdsa as Title
     And I fill in FDfdf as Author
     And I fill in 1991 as Year
     And I fill in Adlkajf as Editor
    And I press Create
    Then the following book reference should exist:
      |author|FDfdf|
      |title|Fdsa|
      |editor|Adlkajf|
      |year|1991|

  Scenario: Add book reference missing year
    Given I am on the books page
      And I navigate to New
    When I fill in Fdsa as Title
      And I fill in FDfdf as Author
      And I fill in DDDffff as Publisher
      And I fill in Adlkajf as Editor
      And I press Create
    Then I should get an error

  Scenario: Add book reference missing title
    Given I am on the books page
      And I navigate to New
    When I fill in FDfdf as Author
      And I fill in DDDffff as Publisher
      And I fill in 1991 as Year
      And I fill in Adlkajf as Editor
    And I press Create
    Then I should get an error
