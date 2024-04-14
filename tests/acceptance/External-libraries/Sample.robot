*** Settings ***
Force Tags    session1    session2
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Verify that web application could be access from Internet
    [Documentation]    Test is using external libraries
    [Tags]    demo2   sanity
    [Setup]    Run Keywords    Create Directory    ./reports/screenshots
    ...    AND    Set Screenshot Directory    ./reports/screenshots
    ...    AND    Open Browser    url=https://practice-automation.com/    browser=chrome
    ...    AND    Set Test Variable    ${index}    1
    Wait Until Element Is Enabled    //a[text()="Popups"]
    Click Element    //a[text()="Popups"]
    Wait Until Element Is Enabled    //button[@id="prompt"]
    Click Element    //button[@id="prompt"]
    Input Text Into Alert    text=NDVIET.ORG
    Element Text Should Be    //*[@id="promptResult"]    Nice to meet you, NDVIET.ORG!
    sleep    5s
    Capture Page Screenshot    SS_${index}.png
    File Should Exist    ./reports/screenshots/SS_${index}.png
    [Teardown]    Close Browser
