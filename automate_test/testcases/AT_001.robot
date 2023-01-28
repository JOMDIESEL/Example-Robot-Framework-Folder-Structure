*** Settings ***
Resource                        ${CURDIR}/../resources/import.robot         
Test Setup                      Open bussiness admin website
Test Teardown                   Close Browser


*** Test Cases ***
1.Verify staff login successs
    staff_login_user_role.Login with staff role 
    staff_home_page.Verify staff holder name display correct   
# 2.Verify manager login successs
#     admin_login_user_role.Login with manager role 
#     admin_home_page.Verify manager holder name display correct 
# 3.Verify company owner login successs
#     admin_login_user_role.Login with company owner role
#     admin_home_page.Verify company owner holder name display correct 
# 4.Verify super admin login successs
#     admin_login_user_role.Login with super admin role 
#     admin_home_page.Verify super admin holder name display correct 


    
    

