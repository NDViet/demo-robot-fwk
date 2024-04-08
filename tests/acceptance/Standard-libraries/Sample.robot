*** Settings ***
Force Tags    session1
Library    OperatingSystem
Library    String
Library     DateTime

*** Test Cases ***
Verify that keywords in Standard Libraries are available
    [Documentation]    This test is using Standard libraries
    [Tags]    demo1
    [Timeout]    3 minutes
    ${contents}    Get File    tests/resources/sample.json
    Log    ${contents}
    Should Contain    ${contents}    reference
    ${today}    Get Current Date    exclude_millis=${True}
    ${contents}    Replace String    ${contents}    reference    ${today}
    Create Directory    ./target
    Create File    ./target/output.json    ${contents}
    ${file_size}    Get File Size    ./target/output.json
    Should Be True    ${file_size} > 0
    [TearDown]    Empty Directory    ./target
