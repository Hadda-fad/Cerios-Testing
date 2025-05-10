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

    ${checkboxes}=    Get WebElements    css:.w-form-label
    Sleep               2s
    FOR    ${checkbox}    IN    @{checkboxes}
           Log      ${checkbox.text}
           Run Keyword If    '${checkbox.text}' == 'Valori'    Select Checkbox    ${checkbox}
    END


    Click Button        Resultaten tonen
    Sleep               2s
    Click element       //*[@id="job-overview"]/div/div/div/div/div[4]/div/div/div[1]/div[5]/a

    #${handles}=    Get Window Handles
    #Switch Window    handle=${handles}[-1]

    Sleep                   2s
    #To make sure to continue automation on the newly opened tab:
    Switch window           NEW
    Page should contain     Vacature details
    Click Button                Alles accepteren
    Sleep                   2s
    Click element           //*[@id="tabs--23--tab--1"]
    Sleep           3s





