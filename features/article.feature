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

  Scenario: Add article reference without title
    Given I am on the articles page
    And I navigate to New
    When I fill in FDfdf as Author
      And I fill in DDDffff as Journal
      And I fill in 1991 as Year
      And I press Create
    Then I should get an error

  Scenario: Add article reference without author
    Given I am on the articles page
    And I navigate to New
    When I fill in asdf as Title
      And I fill in flkjdsyalk as Journal
      And I fill in 666 as Year
      And I press Create
    Then I should get an error

  Scenario: Add article reference without journal
    Given I am on the articles page
    And I navigate to New
    When I fill in asdf as Title
      And I fill in aelsdkjfdlkadjg as Author
      And I fill in 666 as Year
      And I press Create
    Then I should get an error
    


