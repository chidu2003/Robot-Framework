*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}         https://www.facebook.com/
${browser}     chrome
${username}    user1
${password}    pwd1

*** Keywords ***
Open the browser
    Open Browser    ${url}    ${browser}


Close the browser
    Close Browser

Validate the login
    Input Text    id=email    ${username}
    Input Text    id=pass     ${password}
    Click Button  name=login

*** Test Cases ***
Launching the browser
    Open the browser

Validate the Login functionality
    Validate the login

Closing the browser
    Close the browser
