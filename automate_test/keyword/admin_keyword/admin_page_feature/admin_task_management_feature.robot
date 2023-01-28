*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Click super admin task management menu
    Wait Until Element Is Visible    ${dict_task_management}[task_management_menu]
    Click Element    ${dict_task_management}[task_management_menu]

Click staff task management menu
    Wait Until Element Is Visible    ${dict_staff_task_management}[task_management_menu]
    Click Element    ${dict_staff_task_management}[task_management_menu]

Staff click new request menu
    Wait Until Element Is Visible    ${dict_staff_task_management}[new_request_menu]
    Click Element    ${dict_staff_task_management}[new_request_menu]

Click staff create air condition
    Wait Until Element Is Visible    ${dict_staff_task_management}[create_air_con]
    Click Element    ${dict_staff_task_management}[create_air_con]
