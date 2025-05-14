*** Settings ***
Library         SeleniumLibrary
Documentation   General links functionality
Test Setup      Open browser session
Test Teardown   Close browser session
Resource        Resource.robot




*** Test Cases ***
Verifying "Wat we doen" link
    [Documentation]             This test case checks the "Wat we doen" link  functionality
    [Tags]                      General links

    Click element               xpath=//div[text()="Wat we doen"]
    Page should contain         Expertises
    Sleep                       2s



Verifying "Vacatures" link
    [Documentation]             This test case checks the "Vacatures" link  functionality
    [Tags]                      General links

    Click element               xpath=//div[text()="Vacatures"]
    Sleep                       2s
    Page should contain         carriére in ontwikkelling
    Sleep                       2s



Verifying "Academy" link
    [Documentation]             This test case checks the "Academy" link  functionality
    [Tags]                      General links

    Click element               xpath=//div[text()="Academy"]
    Sleep                       2s
    Page should contain         Cerios Academy
    Sleep                       2s



Verifying "Over Cerios" link
    [Documentation]             This test case checks the "Over Cerios" link  functionality
    [Tags]                      General links

    Click element               xpath=//div[text()="Over Cerios"]
    Sleep                       2s
    Page should contain         Wij zijn Cerios
    Sleep                       2s




Verifying "Contact" link
    [Documentation]             This test case checks the "Contact" link  functionality
    [Tags]                      General links

    Click element               xpath=//div[text()="Contact"]
    Sleep                       2s
    Page should contain         Stuur ons een bericht
    Sleep                       2s




*** Keywords ***
