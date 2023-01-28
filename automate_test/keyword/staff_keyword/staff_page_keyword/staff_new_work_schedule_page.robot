*** Settings ***
Resource                        ${CURDIR}/../../../resources/import.robot  
*** Keywords ***
Verify staff go to schedule page
    staff_new_work_schedule_page_feature.Check new work schedule page
    staff_new_work_schedule_page_feature.Get schedule day 
Verify time able to select
    staff_new_work_schedule_page_feature.Create time interval 
    staff_new_work_schedule_page_feature.Book hour before
    staff_new_work_schedule_page_feature.Get select and unselect time
    staff_new_work_schedule_page_feature.Create book time 
Verify date to select
    staff_new_work_schedule_page_feature.Compare day 
    staff_new_work_schedule_page_feature.Compare month

    # ยังหาไม่ได้ compare date