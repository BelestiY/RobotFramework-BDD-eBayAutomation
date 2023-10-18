*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${MAIN_PAGE}      https://ebay.com/
#${LOGIN_PAGE}     ${MAIN_PAGE}/accounts/login/

*** Keywords ***
Open Main Page Using Chrome Browser
  Open Browser    ${MAIN_PAGE}    Chrome
  Maximize Browser Window

Open Login Page Using Chrome Browser
  Open Browser    ${MAIN_PAGE}   Chrome
  Maximize Browser Window