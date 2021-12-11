***Settings***
Library  Selenium2Library

Resource       ../../casino/pagesobjects/registration-page.robot
Resource       ../../casino/facades/casino-facade.robot

***Test Cases***
Correct user registration
   Given the casino page is open
    When the registration data are completed
    Then the user was created

*** Keywords ***
the casino page is open
    Given I am in casino page
    And the registration option was selected
    
the registration data are completed
    When the data filled correnctly
    
the user was created
    Then shows the mesaje of creation succesfull
