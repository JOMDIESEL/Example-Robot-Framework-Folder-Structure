*** Settings ***
Resource    ${CURDIR}/../../../resources/import.robot
*** Keywords ***
Check new work schedule page
    Wait Until Element Is Visible    ${dict_staff_new_work_schedule}[get_new_work_schedule]
    Element Text Should Be    ${dict_staff_new_work_schedule}[get_new_work_schedule]    Preferred Inspection Time

Get schedule day 
    Wait Until Element Is Visible    ${dict_staff_new_work_schedule}[get_day]
    ${schedule_day }=    Get Text    ${dict_staff_new_work_schedule}[get_day]

Create time interval   
    @{timeInterval}    Create List  
    FOR    ${counter}    IN RANGE    0    24    2
        IF    ${counter} < 10
            Append To List    ${timeInterval}    0${counter}:00:00
        ELSE
            Append To List    ${timeInterval}    ${counter}:00:00
        END    
    END
    [Return]    @{timeInterval}
Book hour before
    ${workHour} =	Add Time To Time	1 hours 	00:00:00	timer	  exclude_millis=yes
    [Return]    ${workHour}   

Get select and unselect time
    [Arguments]    @{timeInterval}    
    @{x}=    Create time interval     @{timeInterval}
    ${date_time}=    Get time now   
    ${bookHour}=    Book hour before   
    @{timeSelect}    Create List
    @{timeDisable}    Create List  
    FOR    ${index}    IN    @{x}
        ${time}       Subtract Time From Time    ${index}    ${date_time}   timer   exclude_millis=yes
        IF    '${time}'>='${bookHour}' 
            Log to console    ${index}
            # Append To List    ${timeSelect}     ${index}  
            Return From Keyword    ${index}  
        ELSE
            Append To List    ${timeDisable}      ${index}      
        END
    END

Create book time 
    ${booktime}=    Get select and unselect time
    ${serviceTime}       Add Time To Time    2 hours    ${booktime}   timer   exclude_seconds=yes
    ${addTime}       Subtract Time From Time    ${serviceTime}    1 minute   timer    exclude_seconds=false
    ${booktime} =	Get Substring	${booktime}    0	5
    ${addTime} =	Get Substring	${addTime}    0    5
    ${booktime}=    Set Variable    ${booktime} - ${addTime}
    log to console    ${booktime}   
    [Return]    ${booktime}    


Compare day 
    ${x}=    common.Get today
    log to console    ${x}
Compare month
    ${y}=    common.Get month  
    log to console    ${y}



    
