*** Settings ***
Resource                        ${CURDIR}/../resources/import.robot         
Test Setup                      Open bussiness admin website
Test Teardown                   Close Browser


*** Test Cases ***
1.Verify staff logout successs
    staff_login_user_role.Login with staff role 
    staff_home_page.Verify staff holder name display correct  
    admin_home_page.Verify user able To Logout
# 2.Verify manager logout successs
#     login_user_role.Login with manager role 
#     home_page.Verify manager holder name display correct 
#     home_page.Verify user able to logout
# 3.Verify company owner logout successs
#     login_user_role.Login with company owner role
#     home_page.Verify company owner holder name display correct
#     home_page.Verify user able to logout 
# 4.Verify super admin logout successs
#     login_user_role.Login with super admin role 
#     home_page.Verify super admin holder name display correct 
#     home_page.Verify user able to logout


    
    

