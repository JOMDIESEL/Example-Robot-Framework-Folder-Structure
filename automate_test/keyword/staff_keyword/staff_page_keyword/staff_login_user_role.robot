*** Settings ***
Resource                        ${CURDIR}/../../../resources/import.robot  

*** Keywords ***
Login with staff role
    staff_login_page_feature.Input username    ${login.staff.username}
    staff_login_page_feature.Input password    ${login.staff.password}
    staff_login_page_feature.Click login       