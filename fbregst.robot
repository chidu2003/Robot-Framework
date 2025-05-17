*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://www.facebook.com/r.php?entry_point=login
${browser}    chrome
${firstname}  first
${surname}    surname
${MOBILE}          9876543210
${PASSWORD}        Password123

*** Keywords ***
Open The Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Fill Registration Form
    Input Text    name=firstname     ${FIRSTNAME}
    Input Text    name=lastname      ${SURNAME}
    Input Text    name=reg_email__   ${MOBILE}
    Input Text    name=reg_passwd__  ${PASSWORD}
Close The Browser
    Close Browser

*** Test Cases ***
Launching The Browser
    Open The Browser
Entering into Registration Form
    Fill Registration Form
Closing the browser
    Close The Browser
