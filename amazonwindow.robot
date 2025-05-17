*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.amazon.in
${BROWSER}     headlesschrome
${PRODUCT}     laptop

*** Keywords ***
Open Amazon
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id=twotabsearchtextbox    10s

Search Product
    Input Text    id=twotabsearchtextbox    ${PRODUCT}
    Click Button  id=nav-search-submit-button
    Wait Until Page Contains    Results    10s

Click First Product
    Click Element    xpath=//div[@data-component-type="s-search-result"][1]//img
    sleep    10s

Handle New Tab
    ${handles}=    Get Window Handles
    Log    ${handles}
    Switch Window    ${handles}[1]
    Wait Until Page Contains Element    id=productTitle    10s
    ${title}=    Get Text    id=productTitle
    Log    Product title: ${title}

*** Test Cases ***
Amazon Product Opens In New Tab
    Open Amazon
    Search Product
    Click First Product
    Handle New Tab
