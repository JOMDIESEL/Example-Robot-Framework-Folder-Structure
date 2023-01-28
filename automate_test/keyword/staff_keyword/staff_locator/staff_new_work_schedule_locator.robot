*** Variables ***
&{dict_staff_new_work_schedule} =
...    get_new_work_schedule=xpath=//h2[@class="title undefined" and text()='Preferred Inspection Time']
...    get_day=xpath=//div[@class="item active bg-hover-dark hover-scale"]/p[@class="day_of_week"][1]
...    get_date=xpath=//div[@class="item active bg-hover-dark hover-scale"]/p[@class="day_of_month"]
...    get_month=xpath=//div[@class="item active bg-hover-dark hover-scale"]/p[@class="day_of_week"][2]