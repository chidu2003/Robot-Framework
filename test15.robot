*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}     https://www.facebook.com/r.php?entry_point=login
${browser}      chrome
${username}     user1
${password}     pwd1

*** Keywords ***
Open the browser
     Open Browser   ${url}     ${browser}

Close the browser
    Close Browser

Validate the login
    Input Text   id=email   ${username}
    Input Text   id=pass    ${password}
    Click Button    Log in

*** Test Cases ***
Launching the browser
    Open the browser

Choosing from dropdown
    Set Selenium Timeout    10s
    Select From List By Label   id=day  13
    Sleep   2s
    Wait Until Page Contains Element      text   10s
    Select From List By Value   id=day  7
    Sleep   2s
    Select From List By Index   id=day  4
    Sleep   2s

Closing the browser
    Close the browser