*** Keywords ***
Input username
    [Arguments]     ${login}
    Wait Until Element Is Visible    ${dict_login}[input_username]
    Input Text      ${dict_login}[input_username]    ${login}
Input password
    [Arguments]     ${login}
    Wait Until Element Is Visible    ${dict_login}[input_username]
    Input Text      ${dict_login}[input_password]    ${login}
Click login
    Click Button    ${dict_login}[click_login]    

    

