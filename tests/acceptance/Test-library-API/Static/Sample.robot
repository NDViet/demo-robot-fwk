*** Settings ***
Force Tags    demo3
Library    os_checks

*** Test Cases ***
Verify that test library can get OS name
    ${os_name}    Get OS Name
    Should Be Equal    ${os_name}    Windows

Verify that test library can assert OS name
    Assert OS Name    Windows
