*** Settings ***
Resource          ../resources.robot
Resource          ../pages/ebay_login_page.robot

Test Setup        Open Login Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${email}        belestibdu@gmail.com
${password}     Bel@amaz#4
${profileName}  Bel


*** Test Cases ***
Sign In To Ebay Test
    When user clicks on the sign in link
    Then user would land on the sign in page
    When user enters ${email} into user id text field
    And user clicks on the Sign-in Continue button
    And user enters ${password} into the pass text field
    And user clicks on the Sign in button
    Then user would get ${profileName} in the profile menu