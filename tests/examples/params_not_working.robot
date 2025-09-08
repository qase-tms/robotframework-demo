*** Settings ***
Library          ../../resources/examples/steps.py
Test Template    Flash Firmware and Check

*** Variables ***
@{MODULES}    BMS    BMSPOW    FLM

*** Keywords ***
Flash Firmware and Check
    [Documentation]    Flash firmware to MCU and verify successful operation by checking upgraded version
    [Arguments]    ${module}    ${uds}=${False}    ${suit}=${False}
    [Tags]    qase.params:[${module}]  # ❌ NOT WORKING: Parameters in keyword tags
    Log    Flashing module: ${module} with UDS: ${uds} and SUIT: ${suit}
    Passed step

*** Test Cases ***    module    uds    suit
# ❌ NOT WORKING: Template approach with parameters in keyword
Flash Module BMS Default      BMS      ${False}    ${False}
Flash Module BMSPOW Default   BMSPOW   ${False}    ${False}
Flash Module FLM Default      FLM      ${False}    ${False}

Flash Module BMS Alternative      BMS      ${True}    ${True}
Flash Module BMSPOW Alternative   BMSPOW   ${True}    ${True}
Flash Module FLM Alternative      FLM      ${True}    ${True}
