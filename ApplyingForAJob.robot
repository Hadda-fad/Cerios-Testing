*** Settings ***
Library         SeleniumLibrary
Documentation   Applying For A Job Functionality
Test Setup      Open browser session
Test Teardown   Close browser session
Resource        Resource.robot





*** Test Cases ***
Verifying ability to apply for a job at Valori
    [Documentation]             This test case checks the "Applying for a job" functionality
    [Tags]                      Applying

    Click element               xpath=//div[text()="Vacatures"]
    Sleep                       2s
    Page should contain         carriére in ontwikkelling
    Scroll Element Into View    //*[@id="job-overview"]/div/div/div/div/div[3]/div/div[2]/div
    Sleep                       2s
    #filter button
    Click Element               //*[@id="job-overview"]/div/div/div/div/div[3]/div/div[2]/div
    Sleep                       2s

    ${checkboxes}=    Get WebElements    css:.w-form-label
    FOR    ${checkbox}    IN    @{checkboxes}
           Run Keyword If    '${checkbox.text}' == 'Valori'    Select Checkbox    ${checkbox}
    END


    Click Button        Resultaten tonen
    Sleep               2s
    #Test automation engineer
    Click element       //*[@id="job-overview"]/div/div/div/div/div[4]/div/div/div[1]/div[5]/a



    Sleep                   2s
    #To make sure to continue automation on the newly opened tab:
    Switch window           NEW
    Page should contain     Vacature details
    Click Button            Alles accepteren
    Sleep                   2s
    Click element           //*[@id="tabs--23--tab--1"]
    Sleep                   3s
    Input Text              //*[@id="input-candidate.name-3"]   Fadi Haddad
    Input Text              //*[@id="input-candidate.email-4"]  fadi_nwvg@live.nl
    Sleep                   2s
    Input Text              //*[@id="input-candidate.phone-5"]  632486475
    Sleep                   2s
    Scroll Element Into View    //*[@id="input-candidate.cv-12"]
    Sleep                   2s
    Choose file             //*[@id="input-candidate.cv-12"]    /Users/fadihaddad/Desktop/test.txt
    Sleep                   2s
    Scroll Element Into View    //*[@id="tabs--23--panel--1"]/form/div[4]/button
    Sleep                   2s
    Click Element           //*[@id="tabs--23--panel--1"]/form/section[4]/fieldset/div/div[1]/div/fieldset/div/div[1]/label/span[1]
    Sleep                   2s
    Click Element           //*[@id="tabs--23--panel--1"]/form/section[4]/fieldset/div/div[2]/div/fieldset/div/div[1]/label/span[1]
    Click Element           //*[@id="tabs--23--panel--1"]/form/section[4]/fieldset/div/div[3]/div/fieldset/div/div[1]/label/span[1]
    Sleep                   3s


*** Keywords ***

