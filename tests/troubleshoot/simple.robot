*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Simulate DNS Resolution Error
    [Documentation]    This should ERROR due to DNS failure (not assertion failure).
    Create Session    bad    http://example.invalid    timeout=1
    Get Request       bad    /

*** Test Cases ***
Simulate Assertion Failure
    [Documentation]    This test will FAIL because the expected and actual values do not match.
    ${resp}=    Create Session    demo    https://httpbin.org
    ${result}=  Get Request       demo    /status/200
    Should Be Equal As Integers   ${result.status_code}    404
