*** Settings ***
Library     SeleniumLibrary
Resource    ../Robotframeworktutorial/Resource/loginkeywords.robot
Library     DataDriver      ../Robotframeworktutorial/Data/Sampleexcel.xlsx    sheet_name=Sheet1

Test Setup      Open the browser
Test Teardown       Close the browser
Test Template      Login functionality

*** Keywords ***
Login functionality
    [Arguments]     ${username}    ${password}
    Enter username and password    ${username}    ${password}
    Click login button

*** Test Cases ***
Test the login function with excel    ${username}    ${password}
