***Settings***
Library  Selenium2Library      

***Test Cases***
Check elements on the free trial page
    Given that the free trial page is open
    Then the elements load correctly 

*** Keywords ***
That the free trial page is open
    Given I am in login page
    
The elements load correctly 
    When The casino logo is load and visible
    Then the logo is load and visible 
    And the principal text is visible
    And the free trial text is visible  
    And the up and running text is visible
    And thecr demo text is visible
    And the credit card text is visible
    And the Terms and Conditions link is visible
    And the touch with us link is visible
    And the cookies policy link in free trial is visible
    And the privacy policy link in free trial is visible
    And The footer in free trial is visible
    And the create your account button is visible and enable