*** Settings ***
Resource    ../../../library/utilities.robot
Resource    ../../../library/builtin.robot


*** Test Cases ***
Verify that test library can be imported
    [Tags]    demo4
    ${json}    Get File    tests/resources/sample.json
    Log    ${json}
    ${titles}    Get Json Values    ${json}    \$.store.book[*].title
    Log    ${titles}
    ${title}    Get Json Value    ${json}    \$.store.book[*].title
    Log    ${title}
    ${isExist}    Run Keyword And Return Status    Keyword Should Exist    Is Valid Jsonpath
    Should Be True
    ...    not ${isExist}
    ...    Keyword should not exist, since dynamic API filtering the named keyword should not be available
