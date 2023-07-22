***Settings***
Library         SeleniumLibrary
Suite Setup     Open Browser    ${webSauceDemo}  ${BROWSER}
Suite Teardown  Close Browser

***Variables***
${webSauceDemo}     https://www.saucedemo.com/
${BROWSER}          chrome

#Locator
${UsernameField}     //input[@id='user-name']
${PasswordField}     //input[@id='password']
${LoginButton}       //*[@id="login-button"]


***Keywords***
Input Username
    Input Text               ${UsernameField}     standard_user

Input Password
    Input Text               ${PasswordField}     secret_sauce

Click Button Login
    Click Element            ${LoginButton}
   

Verify on Login Page
    Page Should Contain     Sauce Labs Backpack


***Test Cases***
User Login with Valid Data
    Input Username
    Input Password
    Click Button Login
    Verify on Login Page

 
# User Login with Invalid Data
   
#     Input Invalid Username
#     Input Password
#     Click Button Login  
    
  

