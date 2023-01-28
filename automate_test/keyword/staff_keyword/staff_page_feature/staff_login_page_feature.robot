

*** Keywords ***
Input username
    [Arguments]     ${login}
    Wait Until Element Is Visible    ${dict_staff_login}[input_username]
    Input Text      ${dict_staff_login}[input_username]    ${login}

Input password
    [Arguments]     ${login}
    Wait Until Element Is Visible    ${dict_staff_login}[input_username]
    Input Text      ${dict_staff_login}[input_password]    ${login}
Click login
    Click Button    ${dict_staff_login}[click_login]    

    

