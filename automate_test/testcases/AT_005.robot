*** Settings ***
Resource    ../keyword/common.robot
*** Keywords ***
test
    ${x}=     Get time now as format
    Log To Console     ${x}
*** Test Cases ***
Test
    test


