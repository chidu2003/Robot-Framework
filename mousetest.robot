*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}       https://demoqa.com/buttons
${browser}   chrome

*** Keywords ***
Opening the browser
    Open Browser    ${url}    ${browser}

Closing the browser
    Close Browser

Mouse movements test
    Mouse over    id=doubleClickBtn
    sleep    2s
    Double click element    id=doubleClickBtn
    sleep    2s
    Open context menu    id=rightClickBtn
    sleep    2s
    Click element    xpath=(//button[text()='Click Me'])[1]
    sleep    2s
    Go to    https://demoqa.com/droppable
    Drag and drop    id=draggable    id=droppable
    sleep    2s
*** Test Cases ***
Open Browser Test
    Opening the browser
Mouse testing
    Mouse movements test
Close the browser
    Closing the browser

