*** Settings ***

*** Variables ***
${peopleMenu}  css=*[title="People"]
${trainingMenu}  css=*[title="Training"]
${channelsMenu}  css=*[title="Channels"]
${calendarMenu}  css=*[title="Calendar"]
${analyticsMenu}  css=*[title="Analytics"]
${employeeJourneysMenu}  css=*[title="Employee Journeys"]
${surveysMenu}  css=*[title="Surveys"]
${configurationMenu}  css=*[title="Configuration"]

*** Keywords ***
the Home is visible for the Admin
  the People menu is displayed
  the Training menu is displayed
  the Channels menu is displayed
  the Calendar menu is displayed
  the Analytics menu is displayed
  the Employee Journeys menu is displayed
  the Surveys menu is displayed
  the Configuration menu is displayed
  Close browser

the Home is visible for the Human Resource
  the People menu is displayed
  the Training menu is displayed
  the Channels menu is displayed
  the Calendar menu is displayed
  the Analytics menu is displayed
  the Employee Journeys menu is displayed
  the Surveys menu is displayed
  the Configuration menu is not displayed
  Close browser

the user session is opened as Author/User
  the People menu is displayed
  the Training menu is displayed
  the Channels menu is displayed
  the Calendar menu is displayed
  the Analytics menu is not displayed
  the Employee Journeys menu not undisplayed
  the Surveys menu is not displayed
  the Configuration menu is not displayed
  Close browser

the People menu is displayed
    Wait Until Element Is Visible   ${peopleMenu}   10
    Wait Until Element Is Enabled   ${peopleMenu}   10

the Training menu is displayed
  Wait Until Element Is Visible   ${trainingMenu}   10
  Wait Until Element Is Enabled   ${trainingMenu}   10

the Channels menu is displayed
  Wait Until Element Is Visible   ${channelsMenu}   10
  Wait Until Element Is Enabled   ${channelsMenu}   10

the Calendar menu is displayed
  Wait Until Element Is Visible   ${calendarMenu}   10
  Wait Until Element Is Enabled   ${calendarMenu}   10

the Analytics menu is displayed
  Wait Until Element Is Visible   ${analyticsMenu}   10
  Wait Until Element Is Enabled   ${analyticsMenu}   10

the Employee Journeys menu is displayed
  Wait Until Element Is Visible   ${employeeJourneysMenu}   10
  Wait Until Element Is Enabled   ${employeeJourneysMenu}   10

the Surveys menu is displayed
  Wait Until Element Is Visible   ${surveysMenu}   10
  Wait Until Element Is Enabled   ${surveysMenu}   10

the Configuration menu is displayed
  Wait Until Element Is Visible   ${configurationMenu}   10
  Wait Until Element Is Enabled   ${configurationMenu}   10

the Configuration menu is not displayed
   Element Should Not Be Visible  ${configurationMenu}   10

the Analytics menu is not displayed
  Element Should Not Be Visible   ${analyticsMenu}   10
     
the Employee Journeys menu not undisplayed
  Element Should Not Be Visible   ${employeeJourneysMenu}   10     

the Surveys menu is not displayed    
  Element Should Not Be Visible   ${surveysMenu}   10