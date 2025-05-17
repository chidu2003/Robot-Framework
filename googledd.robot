*** settings ***
Library    SeleniumLibrary
Test Setup    Open the browser
Test Teardown    Close the browser

*** Variables ***
${url}    https://www.google.com/
${browser}    chrome

*** keywords ***
Open the browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
close the browser
    Close all browsers
validate the searching
    [Arguments]    ${searchtext}
    Input text    xpath=//textarea[@title='Search']    ${searchtext}
    Wait Until Element Is Visible    xpath=//input[@name='btnk'][1]    3s
    Click Element    xpath=//input[@name='btnk'][1]
    #Press Keys    xpath=//textarea[@title='Search']    RETURN
    sleep    5s
    go to    ${url}

*** test cases ***
testing the text in google search
    validate the searching    hello
    validate the searching    instagram

