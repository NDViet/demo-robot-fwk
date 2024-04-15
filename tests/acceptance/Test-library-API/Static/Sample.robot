*** Settings ***
Resource        ../../../library/utilities.robot

Force Tags      demo3


*** Test Cases ***
Verify that test library can get OS name
    ${os_name}    Get OS Name
    Should Be Equal    ${os_name}    Windows

Verify that test library can assert OS name
    Assert OS Name    Windows
