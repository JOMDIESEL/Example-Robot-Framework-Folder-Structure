*** Settings ***
Resource                        ${CURDIR}/../resources/import.robot        
# Test Setup                      Open bussiness admin website
# Test Teardown                   Close Browser


*** Test Cases ***
Verify staff able to create air condition work successs
    # staff_login_user_role.Login with staff role
    # staff_home_page.Go to new work request side-bar
    # staff_work_request_page.Staff select air condition service
    # staff_new_work_schedule_page.Verify staff go to schedule page
    staff_new_work_schedule_page.Verify time able to select
    # admin_home_page.Verify user able To Logout

