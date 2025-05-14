*** Settings ***
Library         SeleniumLibrary
Documentation   Contact Form Functionality
#Test Setup
#Test Teardown
Resource       Resource.robot





*** Test Cases ***
Verifying Contact Form Functionality
    [Documentation]             This test case checks the "Contact Form" functionality
    [Tags]                      Contact Form

    Open Browser                ${BASE_URL}         ${Browser}
    Maximize Browser Window
    Sleep                       2s
    Click Button                ${COOKIES_TOESTAAN}
    Sleep                       2s

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
    Close Browser


*** Keywords ***
