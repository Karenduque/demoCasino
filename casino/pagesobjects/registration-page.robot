*** Settings ***

*** Variables ***
${loginInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_username
${termConditionsCheckBox}  xpath: //*[contains(text(), "I unconditionally agree with")]
${passwordInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_password
${repeatPasswordInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_password_confirmation
${enterCodeInput}  id:core__protected_modules_user_yiiForm_RegistrationForm_captcha


*** Keywords ***
The data filled correnctly
  I fill the login
  I accept Terms & Conditions
  I fill Password
  I fill Repeat password
  I fill Enter code

Shows the mesaje of creation succesfull
  Close browser

I fill the login
  Wait Until Element is Visible   ${loginInput}  30
  Input text   ${loginInput}    ${EMAIL_ADMIN}

I accept Terms & Conditions
  click element  ${termConditionsCheckBox}
