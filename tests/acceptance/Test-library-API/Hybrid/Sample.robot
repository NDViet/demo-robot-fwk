*** Settings ***
Library    .yaml.YamlUtils
Library    OperatingSystem

*** Test Cases ***
Verify that test library can be imported
    [Tags]   demo5
    ${yamlString}    Get File    tests/resources/element_identifier_sample.yml
    ${yaml}    Convert YAML To Dictionary    ${yamlString}
    ${editedYaml}    Edit Yaml Key    ${yaml}    practice_automation.popups.prompt_btn    //*[@id="this is new xpath"]
    Log    ${editedYaml}
    ${outputFile}    Create YAML File    ${editedYaml}    target/output.yml
    ${newValue}    Get Yaml Value    ${outputFile}    practice_automation.popups.prompt_btn
    Should Be Equal    ${newValue}    //*[@id="this is new xpath"]
    ${dictYaml}    Convert YAML To Dictionary    ${editedYaml}
    Log    ${dictYaml['practice_automation']['popups']['prompt_btn']}
    Keyword Should Exist    Load YAML File    Public method without annotation should be exist in hybrid library API
    Keyword Should Exist    Convert YAML To Dictionary    Keyword name can be set different from method name
    ${status}    Run Keyword And Return Status    Keyword Should Exist    Traverse Yaml
    Should Be True    not ${status}    Keyword should not be exist if private method in hybrid library API