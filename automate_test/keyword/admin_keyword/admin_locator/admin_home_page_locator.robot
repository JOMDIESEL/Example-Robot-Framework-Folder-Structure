*** Variables ***
&{dict_homepage} =
...    get_hold_name=xpath=//div[@class='user_menu']//span[contains(text(),'***string***')]
...    click_topbar_option=xpath=//i[@class='far fa-angle-down ml-1']
...    get_topbar_list_option=xpath=//ul[@class='_menu']
...    click_signout=xpath=//ul[@class='_menu']//a[contains(text(),'Sign out')]
