*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}             https://www.facebook.com/r.php?entry_point=login
${BROWSER}         chrome
${FIRSTNAME}       John
${SURNAME}         Doe
${MOBILE}          9876543210
${PASSWORD}        Password123
${BIRTHDAY_DAY}    10
${BIRTHDAY_MONTH}  Jan
${BIRTHDAY_YEAR}   2000
${GENDER}          Male

*** Keywords ***
Open The Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s

Fill Registration Form
    Input Text    name=firstname     ${FIRSTNAME}
    Input Text    name=lastname      ${SURNAME}
    Input Text    name=reg_email__   ${MOBILE}
    Input Text    name=reg_passwd__  ${PASSWORD}
    Select From List By Value    name=birthday_day      ${BIRTHDAY_DAY}
    Select From List By Label    name=birthday_month    ${BIRTHDAY_MONTH}
    Select From List By Value    name=birthday_year     ${BIRTHDAY_YEAR}
    Click Element    xpath=//input[@value='2']    # Male (value=2)

Close The Browser
    Close Browser

*** Test Cases ***
Register On Facebook
    Open The Browser
    Fill Registration Form
    Close The Browser
