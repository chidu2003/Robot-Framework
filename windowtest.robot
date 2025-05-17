*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}       https://demoqa.com/browser-windows
${browser}   chrome

*** Keywords ***
Opening the browser
    Open Browser    ${url}    ${browser}

Closing the browser
    Close Browser

Steps for multiple window handling
    Click Element    id=tabButton
    Sleep    2s
    ${handles}=          Get Window Handles
    Log                  ${handles}
    ${second_window}=    Set Variable    ${handles}[1]
    Switch Window        handle=${second_window}
    Sleep                2s
    ${msg}=              Get Text    id=sampleHeading
    Log                  ${msg}



*** Test Cases ***
Open Browser Test
    Opening the browser
Handling window
    Steps for multiple window handling
Close the browser
    Closing the browser
