@createEntity
Feature: Create Entity

  As a user
  I want to create Entity
  So I can go to another page

  @Automated
  Scenario: User should able to create Entity with all info

    Given Create Entity page is opened
    When I choose "Hardware" in Entity Type field 
    And I insert "Eric Fox" in Entity Name field
    And I check Private box
    And I Insert "Blackbox Name" in Blackbox Name field 
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with only required info

    Given Create Entity page is opened
    When I choose "Business Process" in Entity Type field
    And I insert "Eric Fox" in Entity Name field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with max length of characters in Entity Name field

    Given Create Entity page is opened
    When I choose "Server" in Entity Type field
    And I insert "Eric-Fox Eric-Fox,Eric-Fox.Eric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric" in Entity Type field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with max - 1 length of characters in Entity Name field

    Given Create Entity page is opened
    When I choose "Database" in Entity Type field
    And I choose "Eric Fox Eric-Fox,Eric-Fox.Eric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEri" in Entity Type field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with max + 1 length of characters in Entity Name field

    Given Create Entity page is opened
    When I choose "Eric-Fox Eric-Fox,Eric-Fox.Eric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEric-FoxEricC" in Entity Type field
    And I insert "Eric Fox" in Entity Name field
    And I click Next button
    Then Error message "Length of Entity Name is to large" should be displayed

  @Automated
  Scenario: User should able to create Entity with min length of characters in Entity Name field

    Given Create Entity page is opened
    When I choose "Application" in Entity Type field
    And I insert " " in Entity Name field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with special symbols in Entity Name field

    Given Create Entity page is opened
    When I choose "Business Process" in Entity Type field
    And I insert "@#$%^&*()" in Entity Name field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with numbers in Entity Name field

    Given Create Entity page is opened
    When I choose "Server" in Entity Type field
    And I insert "0123456789" in Entity Name field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should not be able to create Entity with non latin characters Entity Name field

    Given Create Entity page is opened
    When I choose "Server" in Entity Type field
    And I insert "Тест для теста" in Entity Name field
    Then Error message "Entity Name can not contains non latin cheracters" should be displayed

   @Automated
  Scenario: User should not be able to create Entity with empty Entity Name field

    Given Create Entity page is opened
    When I choose "Server" in Entity Type field
    And I click Next button
    Then Error message "Please fill in Entity Name" should be displayed

  @Automated
  Scenario: User should not be able to create Entity with empty Entity Type field

    Given Create Entity page is opened
    When I insert "Eric" in Entity Name field
    And I click Next button
    Then Error message "Please fill in Entity Type" should be displayed

  @Automated
  Scenario: User should not be able to create Entity with empty Entity Name and Entity Type fields

    Given Create Entity page is opened
    When I click Next button
    Then Error message "Please fill in Entity Type and Entity Type" should be displayed

  @Automated
  Scenario: User should not be able to create Entity with empty Blackbox Name field

    Given Create Entity page is opened
    When I choose "Hardware" in Entity Type field
    And I insert "Eric" in Entity Name field
    And I check Private box
    And I click Next button
    Then Error message "Please fill in Blackbox Name" should be displayed

  @Automated
  Scenario: User should able to create Entity with max length of characters in Blackbox Name field

    Given Create Entity page is opened
    When I choose "Hardware" in Entity Type field
    And I insert "Eric" in Entity Name field
    And I check Private box
    And I Insert "Blackbox Name Blackbox Name, Blackbox Name.Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox NameBla" in Blackbox Name field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with max - 1 length of characters in Blackbox Name field

    Given Create Entity page is opened
    When I choose "Hardware" in Entity Type field
    And I insert "Eric" in Entity Name field
    And I check Private box
    And I Insert "Blackbox Name Blackbox Name, Blackbox Name.Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox NameBB" in Blackbox Name field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with max + 1 length of characters in Blackbox Name field

    Given Create Entity page is opened
    When I choose "Hardware" in Entity Type field
    And I insert "Eric" in Entity Name field
    And I check Private box
    And I Insert "Blackbox Name Blackbox Name, Blackbox Name.Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox Name-Blackbox NameBlaB" in Blackbox Name field
    And I click Next button
    Then Error message "Length of Blackbox Name is to large" should be displayed

  @Automated
  Scenario: User should able to create Entity with min length of characters in Blackbox Name field

    Given Create Entity page is opened
    When I choose "Hardware" in Entity Type field
    And I insert "Eric" in Entity Name field
    And I check Private box
    And I Insert "B" in Blackbox Name field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with special symbols in Blackbox Name field

    Given Create Entity page is opened
    When I choose "Hardware" in Entity Type field
    And I insert "Eric" in Entity Name field
    And I check Private box
    And I Insert "!@#$%^&*()'/" in Blackbox Name field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with numbers in Entity Blackbox Name field

    Given Create Entity page is opened
    When I choose "Hardware" in Entity Type field
    And I insert "Eric" in Entity Name field
    And I check Private box
    And I Insert "0123456789" in Blackbox Name field
    And I click Next button
    Then New page is displayed

  @Automated
  Scenario: User should able to create Entity with non latin characters in Entity Blackbox Name field

    Given Create Entity page is opened
    When I choose "Hardware" in Entity Type field
    And I insert "Eric" in Entity Name field
    And I check Private box
    And I Insert "Имя теста" in Blackbox Name field
    And I click Next button
    Then New page is displayed

