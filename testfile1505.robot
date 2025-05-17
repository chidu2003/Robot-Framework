*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}         https://demoqa.com/alerts
${browser}     chrome
#${msg}         welcome

*** Keywords ***
Open the browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close the browser
    Close All Browsers

Steps for handling alert
    Click Element    xpath=//button[@id='promtButton']
    Handle Alert     action=ACCEPT    prompt_text=welcome
    Sleep    3s

*** Test Cases ***
Launch and Handle Alert
    Open the browser
    Steps for handling alert
    Close the browser
