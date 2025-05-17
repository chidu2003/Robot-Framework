*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}       https://demoqa.com/frames
${browser}   chrome

*** Keywords ***
Opening the browser
    Open Browser    ${url}    ${browser}

Closing the browser
    Close Browser

steps for frame handling
    Select frame    id=frame1
    ${text1}=    Get text    id=sampleHeading
    Log    Text in Frame1: ${text1}
    Unselect frame

steps for frame2
    Select frame    id=frame2
    ${text2}=    Get text    id=sampleHeading
    Log    Text in Frame2: ${text2}
    Unselect frame


*** Test Cases ***
Open Browser Test
    Opening the browser
Steps for handling frames
    Steps for frame handling
Steps for handling frame2
    steps for frame2
Close the browser
    Closing the browser

