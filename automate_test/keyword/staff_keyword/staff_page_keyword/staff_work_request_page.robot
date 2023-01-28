*** Settings ***
Resource                        ${CURDIR}/../../../resources/import.robot  
*** Keywords ***
Staff select air condition service 
    staff_work_request_page_feature.Get new work request header
    staff_work_request_page_feature.Click air condition service
    staff_work_request_page_feature.Get service selection
    staff_work_request_page_feature.Click expand clean air
    staff_work_request_page_feature.Get air clean service header
    staff_work_request_page_feature.Get air con price
    staff_work_request_page_feature.Click automate air service radio
    staff_work_request_page_feature.Click next service detail 
