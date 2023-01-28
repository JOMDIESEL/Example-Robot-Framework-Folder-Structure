
*** Keywords ***
Get logo holder name
    [Arguments]     ${login}
    ${locator}    Replace String    ${staff_dict_homepage}[get_hold_name]    ***string***    ${login}
    Wait Until Element Is Visible    ${locator}
    Get Text     ${locator}

Click top bar menu
    Wait Until Element Is Visible    ${staff_dict_homepage}[click_topbar_option]
    Click Element    ${dict_homepage}[click_topbar_option]

Click logout
    Wait Until Element Is Visible     ${staff_dict_homepage}[click_signout]
    Click Element    ${dict_homepage}[click_signout]

Click expand new work request
    Wait Until Element Is Visible     ${staff_dict_homepage}[expand_work_request]
    Click Element    ${staff_dict_homepage}[expand_work_request]

Click work request
    Wait Until Element Is Visible    ${staff_dict_homepage}[click_work_request]   
    Click Element    ${staff_dict_homepage}[click_work_request]
    
    