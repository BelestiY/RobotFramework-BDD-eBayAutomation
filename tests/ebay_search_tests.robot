*** Settings ***
Resource          ../resources.robot
Resource          ../pages/ebay_login_page.robot
Resource          ../pages/ebay_search_page.robot

Test Setup        Open Login Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${email}        belestibdu@gmail.com
${password}     Bel@amaz#4
${profileName}  Bel
${searchKey}    Smartwatch
${category}     Jewelry & Watches
${index}        4
${quantity}     1


*** Test Cases ***
Searching Ebay Test
    When user clicks on the sign in link
    Then user would land on the sign in page
    And user enters ${email} into user id text field
    And user clicks on the Sign-in Continue button
    And user enters ${password} into the pass text field
    And user clicks on the Sign in button
    Then user would get ${profileName} in the profile menu
    And user enters ${searchKey} into Search for anything label
    And user selects ${category} in the category dropdown
    And user clicks on the Search button
    And user selects the ${index} search result
    And user selects the ${index} color
    And user sets ${quantity} in the quantity label
    And user clicks on the Add to cart button
    Then user would get ${quantity} items in the cart