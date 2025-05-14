*** Settings ***
Documentation       File with reusable keywords and variables
Library             SeleniumLibrary





*** Variables ***

${BASE_URL}    https://cerios.nl
${BROWSER}     gc
${COOKIES_TOESTAAN}  Alle cookies toestaan




*** Keywords ***
Close browser session
    Close Browser

Open browser session
    Open Browser                ${BASE_URL}         ${Browser}
    Maximize Browser Window
    Sleep                       2s
    Click Button                ${COOKIES_TOESTAAN}
    Sleep                       2s