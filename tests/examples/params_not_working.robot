*** Settings ***
Library          ../../resources/examples/steps.py
Test Template    Flash Firmware and Check    # ❌ Suite-level template

*** Keywords ***
Flash Firmware and Check
    [Documentation]    ❌ NOT WORKING: Data-driven table format with suite-level template
    [Arguments]    ${module}    ${uds}=${False}    ${suit}=${False}
    [Tags]    qase.params:[module]    # ❌ Tried both [module] and [${module}] - neither works
    Log    Flashing module: ${module} with UDS: ${uds} and SUIT: ${suit}
    Passed step

*** Test Cases ***    module    uds    suit
# ❌ NOT WORKING PATTERN: Data-driven table format with suite-level template
Flash Module BMS Default      BMS      ${False}    ${False}
Flash Module BMSPOW Default   BMSPOW   ${False}    ${False}
Flash Module FLM Default      FLM      ${False}    ${False}
