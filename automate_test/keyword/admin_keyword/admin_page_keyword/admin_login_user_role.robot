*** Keywords ***
Login with staff role
    login_page_feature.Input username    ${login.staff.username}
    login_page_feature.Input password    ${login.staff.password}
    login_page_feature.Click login       
Login with manager role
    login_page_feature.Input username    ${login.manager.username}
    login_page_feature.Input password    ${login.manager.password}
    login_page_feature.Click login       

Login with company owner role
    login_page_feature.Input username    ${login.company_owner.username}
    login_page_feature.Input password    ${login.company_owner.password}
    login_page_feature.Click login    
Login with super admin role 
    admin_login_page_feature.Input username    ${login.super_admin.username}
    admin_login_page_feature.Input password    ${login.super_admin.password}
    admin_login_page_feature.Click login   