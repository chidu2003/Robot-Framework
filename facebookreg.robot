*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Launching the browser
    Open Browser    https://www.facebook.com/r.php?entry_point=login    chrome

Testing First name field
    Input Text    name=firstname    satish

Closing the browser
    Close Browser
