***Settings***
Library  Selenium2Library

Resource       ../../casino/facades/login-facade.robot
Resource       ../../casino/pagesobjects/home-page.robot

***Test Cases***
Correct Login as Admin
   Given the casino login page is open
    When the login data are completed
    Then the user session is opened as Admin

Correct Login as Human Resource
   Given the casino login page is open
    When the login data are completed
    Then the user session is opened as Human Resource

Correct Login as Author/User
  [Template]  the user session is opened as Author/User
  # Rol
  Author
  User
      
*** Keywords ***
the casino login page is open
    Given I am in casino login page
    
the login data are completed
    When I fill the email as Admin
    And I fill the password
    And I click the Sign In button

the user session is opened as Admin
  Then the Home is visible for the Admin

the user session is opened as Human Resource
  Then the Home is visible for the Human Resource

the user session is opened as Author/User
  [Arguments]  ${Rol}
    Given the casino login page is open
    When the login data are completed
    the user session is opened as Author/User  ${Rol}