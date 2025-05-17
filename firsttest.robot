*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Opening browser
    Open Browser  https://demoqa.com/checkbox  chrome
#Full name testing
#    Input text    id=userName    Satish
#    Sleep    3s
#email testing
#    Input text    id=userEmail    satish@gmail.com
#    sleep    2s
#Current address testing
#    Input text    id=currentAddress    India
#    sleep    2s
#Permanent address testing
#    Input text    id=permanentAddress    India
#    sleep    2s
#Button testing
#    Click button    id=submit
#    sleep    2s
Check box testing
    Click element    xpath=//button[@title='Toggle']
    sleep    5s
    Click element    xpath=//label[@for='tree-node-desktop']
    sleep    5s
    Click button    xpath=//
    Click element    xpath=//label[@for='tree-node-general']
    sleep    5s
Closing browser
    Close browser

*** Test Cases ***
Opening testing the text and closing
    Opening browser
#    Full name testing
#    email testing
#    Current address testing
#    Permanent address testing
    Check box testing
    Closing browser


