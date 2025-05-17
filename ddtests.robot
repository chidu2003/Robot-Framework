*** Settings ***

Library     SeleniumLibrary

Library     DataDriver    ../Data/Sample.xls      sheet_name=Sheet1

Resource    ../Resources/LoginKeywords.robot

Test Setup      Open the browser

Test Teardown       Close the browser

*** Test Cases ***

Testing the login function

    Validate the login functionality     using      ${username}    ${password}
