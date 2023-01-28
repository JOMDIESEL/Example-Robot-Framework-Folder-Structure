*** Keywords ***
Verify staff holder name display correct
    # I want to get holder name from dashboard
    admin_home_page_feature.Get logo holder name    ${login.staff.name}

Verify manager holder name display correct
    admin_home_page_feature.Get logo holder name    ${login.manager.name}

Verify company_owner holder name display correct
    admin_home_page_feature.Get logo holder name    ${login.company_owner.name}

Verify super_admin holder name display correct
    admin_home_page_feature.Get logo holder name    ${login.super_admin.name}

Verify user able to logout
    admin_home_page_feature.Click top bar menu
    admin_home_page_feature.Click logout
