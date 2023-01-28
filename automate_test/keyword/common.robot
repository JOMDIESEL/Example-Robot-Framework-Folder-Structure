*** Settings ***
Variables    ${CURDIR}/../resources/setting/setting.yaml
Library    DateTime

*** Keywords ***
Open bussiness admin website
    Open Browser    ${platformUrl}   ${platformBrowser}
    Maximize Browser Window

Get time now
    ${currentDate}=    Get Current Date   	UTC    + 7 hours
    ${date_time}    Convert Date    ${currentDate}      result_format=%H:%M:%S
    [Return]    ${date_time}

Get today
    ${currentDate}=    Get Current Date    	UTC    + 7 hours
    ${day}    Convert Date    ${currentDate}    result_format=%a
    [Return]    ${day}

Get date
    ${currentDate}=    Get Current Date    	UTC    + 7 hours
    ${date}    Convert Date    ${currentDate}    result_format=%d
    [Return]    ${date}

Get month  
    ${currentDate}=    Get Current Date    	UTC    + 7 hours
    ${month}    Convert Date    ${currentDate}    result_format=%b
    [Return]    ${month}   

Get time now as format
    ${date_time}    Convert Time    12:00:00.000      result_format=%H:%M
    [Return]    ${date_time}
    


    
    


    
    




