*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    Collections
Library    BuiltIn


#test data
Variables            ${CURDIR}/../resources/testdata/develop/data_dev.yaml
Variables            ${CURDIR}/../resources/setting/setting.yaml
Resource             ${CURDIR}/../keyword/common.robot

########## ADMIN ##########
# locator
Resource             ${CURDIR}/../keyword/admin_keyword/admin_locator/admin_home_page_locator.robot
Resource             ${CURDIR}/../keyword/admin_keyword/admin_locator/admin_login_page_locator.robot
Resource             ${CURDIR}/../keyword/admin_keyword/admin_locator/admin_task_management_locator.robot
Resource             ${CURDIR}/../keyword/admin_keyword/admin_locator/admin_work_report_locator.robot

# page feature 
Resource             ${CURDIR}/../keyword/admin_keyword/admin_page_feature/admin_login_page_feature.robot
Resource             ${CURDIR}/../keyword/admin_keyword/admin_page_feature/admin_home_page_feature.robot
Resource             ${CURDIR}/../keyword/admin_keyword/admin_page_feature/admin_task_management_feature.robot

# web kw
Resource             ${CURDIR}/../keyword/admin_keyword/admin_page_keyword/admin_login_user_role.robot
Resource             ${CURDIR}/../keyword/admin_keyword/admin_page_keyword/admin_home_page.robot
Resource             ${CURDIR}/../keyword/admin_keyword/admin_page_keyword/admin_task_management.robot

########## STAFF ##########
# locator
Resource             ${CURDIR}/../keyword/staff_keyword/staff_locator/staff_home_page_locator.robot
Resource             ${CURDIR}/../keyword/staff_keyword/staff_locator/staff_login_page_locator.robot
Resource             ${CURDIR}/../keyword/staff_keyword/staff_locator/staff_work_request_locator.robot
Resource             ${CURDIR}/../keyword/staff_keyword/staff_locator/staff_new_work_schedule_locator.robot

# page feature 
Resource             ${CURDIR}/../keyword/staff_keyword/staff_page_feature/staff_login_page_feature.robot
Resource             ${CURDIR}/../keyword/staff_keyword/staff_page_feature/staff_home_page_feature.robot
Resource             ${CURDIR}/../keyword/staff_keyword/staff_page_feature/staff_work_request_page_feature.robot
Resource             ${CURDIR}/../keyword/staff_keyword/staff_page_feature/staff_new_work_schedule_page_feature.robot

# web kw
Resource             ${CURDIR}/../keyword/staff_keyword/staff_page_keyword/staff_login_user_role.robot
Resource             ${CURDIR}/../keyword/staff_keyword/staff_page_keyword/staff_home_page.robot
Resource             ${CURDIR}/../keyword/staff_keyword/staff_page_keyword/staff_work_request_page.robot
Resource             ${CURDIR}/../keyword/staff_keyword/staff_page_keyword/staff_new_work_schedule_page.robot
