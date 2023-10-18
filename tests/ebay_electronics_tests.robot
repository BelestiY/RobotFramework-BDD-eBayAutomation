*** Settings ***
Resource          ../resources.robot
Resource          ../pages/ebay_login_page.robot
Resource          ../pages/ebay_electronics_page.robot

Test Setup        Open Login Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${email}        belestibdu@gmail.com
${password}     Bel@amaz#4
${profileName}  Bel
${category}     Video Games & Consoles
${index}        1
${quantity}     2

*** Test Cases ***
Searching a Playstation under Video Games & Consoles category of Electronics menu
    When user clicks on the sign in link
    Then user would land on the sign in page
    When user enters ${email} into user id text field
    And user clicks on the Sign-in Continue button
    And user enters ${password} into the pass text field
    And user clicks on the Sign in button
    Then user would get ${profileName} in the profile menu
    And user clicks on the Electronics menu
    Then user would land on the Electronics page
    And user selects ${category} of electronics
    Then user would land on the ${category} page
    And user clicks on the ${index} gaming station category
    And user clicks on the ${index} play station category
    And user selects the ${index} play station
    And user sets ${quantity} in the quantity label for the play station
    And user clicks on the Add to cart button to add the selected play station
    Then user would get ${quantity} play station items in the cart