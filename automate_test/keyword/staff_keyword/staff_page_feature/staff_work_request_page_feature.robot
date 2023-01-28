
*** Keywords ***
Get new work request header
    Wait Until Element Is Visible    ${dict_staff_work_request}[get_new_work_request]
    Click Element    ${dict_staff_work_request}[get_new_work_request]
    
Click air condition service
    Wait Until Element Is Visible    ${dict_staff_work_request}[click_aircon_service]
    Click Element    ${dict_staff_work_request}[click_aircon_service]

Get service selection 
    Wait Until Element Is Visible    ${dict_staff_work_request}[get_service_selection]
    ${text}=    Get Text    ${dict_staff_work_request}[get_service_selection]
    # try to in put on yaml 
    Should Not Be Equal As Strings    ${text}    'เลือกบริการ' 

Click expand clean air
    Wait Until Element Is Visible    ${dict_staff_work_request}[expand_clean_aircon]
    Click Element    ${dict_staff_work_request}[expand_clean_aircon]
    
Get air clean service header
    Wait Until Element Is Visible    ${dict_staff_work_request}[get_service_aircon_header]
    ${service_header}=    Get Text    ${dict_staff_work_request}[get_service_aircon_header]
    Should Not Be Equal As Strings    ${service_header}    'Automate_air_service'

Get air con price
    Wait Until Element Is Visible    ${dict_staff_work_request}[get_service_aircon_price]
    ${air_con_price}=    Get Text    ${dict_staff_work_request}[get_service_aircon_price]
    Should Not Be Equal As Strings    ${air_con_price}    'ราคา 700.00 THB'

Click automate air service radio 
    Wait Until Element Is Visible    ${dict_staff_work_request}[click_radio_check]
    Click Element   ${dict_staff_work_request}[click_radio_check]

Click next service detail
    Wait Until Element Is Visible    ${dict_staff_work_request}[click_next_service_detail]
    Click Element   ${dict_staff_work_request}[click_next_service_detail]

    