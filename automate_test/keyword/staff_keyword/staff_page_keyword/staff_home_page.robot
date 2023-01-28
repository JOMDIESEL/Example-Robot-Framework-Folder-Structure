
*** Keywords ***
Verify staff holder name display correct
    # I want to get holder name from dashboard
    staff_home_page_feature.Get logo holder name    ${login.staff.name}

Go to new work request side-bar
    staff_home_page_feature.Click expand new work request
    staff_home_page_feature.Click work request

