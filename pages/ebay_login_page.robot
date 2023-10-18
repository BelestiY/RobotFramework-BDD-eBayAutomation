*** Settings ***
Resource    abstract_page.robot

*** Variables ***
# Objects used to create an ebay account
${registerLink}         xpath://span[@id='gh-ug-flex']/a[.='register']
${createAccountPage}    xpath://div/h1[.='Create an account']
${firstName}            id:firstname
${lastName}             id:lastname
${email}                id:Email
${password}             id:password
${createAccountButton}  id:EMAIL_REG_FORM_SUBMIT
# Objects used to sign in to ebay
${signInLink}           xpath://span[@id='gh-ug']/a[.='Sign in']
${signInPage}           xpath://span[@id='signin-reg-msg']
${emailOrUsername}      id:userid
${passW}                id:pass
${signInButton}         id:sgnBt
${signInContinueBtn}    id:signin-continue-btn
${profileNameLocator}   xpath://button[@id='gh-ug']/b[1]
# Object used for searching an item
${searchKeyLabel}       xpath://input[@aria-label='Search for anything']
# object used to land on the electronics page
${electronicsMenu}      xpath://li/a[.='Electronics']
# object used to land on the electronics page
${fashionMenu}          xpath://li/a[.='Fashion']

*** Keywords ***
user clicks on the sign in link
    Click On Element    ${signInLink}

user would land on the sign in page
	Verify Element Displayed    ${signInPage}

user enters ${email} into user id text field
    Input Into Element    ${emailOrUsername}    ${email}

user clicks on the Sign-in Continue button
	Click On Element    ${signInContinueBtn}

user enters ${password} into the pass text field
	Input Into Element    ${passW}      ${password}

user clicks on the Sign in button
	Click On Element    ${signInButton}

user would get ${profileName} in the profile menu
	Verify Element Text    ${profileNameLocator}    ${profileName}




