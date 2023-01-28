*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Get logo holder name
    [Arguments]     ${login}
    ${locator}    Replace String    ${dict_homepage}[get_hold_name]    ***string***    ${login}
    Wait Until Element Is Visible    ${locator}
    Get Text     ${locator}

Click top bar menu
    Wait Until Element Is Visible    ${dict_homepage}[click_topbar_option]
    Click Element    ${dict_homepage}[click_topbar_option]

Click logout
    Wait Until Element Is Visible     ${dict_homepage}[click_signout]
    Click Element    ${dict_homepage}[click_signout]
    