*** Settings ***
Resource          ../resources.robot
Resource          ../pages/ebay_login_page.robot
Resource          ../pages/ebay_fashion_page.robot

Test Setup        Open Login Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${email}        belestibdu@gmail.com
${password}     Bel@amaz#4
${profileName}  Bel
${category}     Jewelry
${index}        1
${quantity}     1



*** Test Cases ***
Searching Fine Jewelry under Jewelry category of Fashion menu
    When user clicks on the sign in link
    Then user would land on the sign in page
    When user enters ${email} into user id text field
    And user clicks on the Sign-in Continue button
    And user enters ${password} into the pass text field
    And user clicks on the Sign in button
    Then user would get ${profileName} in the profile menu
    And user hover over on the Fashion menu
    And user selects ${category} category of fashion
    Then user would land on the ${category} page of fashion menu
    And user selects the ${index} result of the selected category
    And user selects the ${index} result of the selected fashion item
    And user sets ${quantity} for the selected fashion item
    And user clicks on the Add to cart button to add the selected fashion category
    Then user would get ${quantity} added fashion items in the cart