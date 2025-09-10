*** Settings ***
Library    ../../resources/examples/steps.py

*** Keywords ***
Flash Firmware and Check
    [Documentation]    ✅ WORKING: Individual test cases with [Template] tag
    [Arguments]    ${module}    ${uds}=${False}    ${suit}=${False}
    [Tags]    qase.params:[module]    # ✅ Parameter name without ${} syntax
    Log    Flashing module: ${module} with UDS: ${uds} and SUIT: ${suit}
    Passed step

*** Test Cases ***
# ✅ WORKING PATTERN: Individual test cases with [Template] tag
Flash Module BMS
    [Tags]    Q-100
    [Template]    Flash Firmware and Check    # ✅ Test-level template
    BMS    ${False}    ${False}

Flash Module BMSPOW
    [Tags]    Q-101  
    [Template]    Flash Firmware and Check    # ✅ Test-level template
    BMSPOW    ${True}    ${True}

Flash Module FLM
    [Tags]    Q-102
    [Template]    Flash Firmware and Check    # ✅ Test-level template
    FLM    ${False}    ${True}
