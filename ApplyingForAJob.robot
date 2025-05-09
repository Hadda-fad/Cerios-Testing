*** Settings ***
Library         SeleniumLibrary
Documentation   Applying For A Job Functionality


*** Variables ***
${BASE_URL}    https://cerios.nl
${BROWSER}     gc


*** Test Cases ***
Verifying ability to apply for a job
    [Documentation]             This test case checks the "Applying for a job" functionality
    [Tags]                      Applying
    Open Browser                ${BASE_URL}         ${Browser}
    Maximize Browser Window
    Sleep                       2s
    Click Button                Alle cookies toestaan
    Sleep                       2s
    Click element               xpath=//div[text()="Vacatures"]
    Sleep                       2s
    Page should contain         carriére in ontwikkelling
    Scroll Element Into View    //*[@id="job-overview"]/div/div/div/div/div[3]/div/div[2]/div
    Sleep                       2s
    Click Element               //*[@id="job-overview"]/div/div/div/div/div[3]/div/div[2]/div
    Sleep                       2s