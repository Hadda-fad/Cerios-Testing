*** Settings ***
Library         SeleniumLibrary
Documentation   Contact Form Functionality
Test Setup      Open browser session
Test Teardown   Close browser session
Resource        Resource.robot





*** Test Cases ***
Verifying Contact Form Functionality
    [Documentation]             This test case checks the "Contact Form" functionality
    [Tags]                      Contact Form



    Click element               xpath=//div[text()="Contact"]
    Page should contain         Stuur ons een bericht
    Sleep                       2s

    Scroll Element Into View    //*[@id="name"]
    Sleep                       2s
    Input Text                 //*[@id="name"]          Fadi
    Sleep                       2s
    Scroll Element Into View    //*[@id="company"]
    Sleep                       2s
    Input Text                  //*[@id="company"]      Test
    Scroll Element Into View    //*[@id="email"]
    Sleep                       2s
    Input Text                  //*[@id="email"]              test@test.nl
    Sleep                       2s
    Scroll Element Into View    //*[@id="myphone"]
    Input Text                  //*[@id="myphone"]      123456789
    Sleep                       2s



*** Keywords ***
