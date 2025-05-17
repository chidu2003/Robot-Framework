*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}         https://demoqa.com/alerts
${browser}     edge

*** Keywords ***
Open the browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close the browser
    Close All Browsers

Handle simple alert
    Click Element    id=alertButton
    #Handle Alert     action=ACCEPT
    Wait Until Element Is Visible    id=alertButton    timeout=10s


*** Test Cases ***
Test all types of alerts
    Open the browser
    Handle simple alert
    Close the browser
