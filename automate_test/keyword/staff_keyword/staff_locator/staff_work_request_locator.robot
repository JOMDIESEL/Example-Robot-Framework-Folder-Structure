*** Variables ***
&{dict_staff_work_request} =
...    click_aircon_service=xpath=//div[@class='item']//h3[text()='Air Conditioning']
...    get_new_work_request=xpath=//h2[@class="title undefined" and text()='แจ้งบริการใหม่']
...    get_service_selection=xpath=//h2[@class="title undefined" and text()='เลือกบริการ']
...    get_service_aircon_header=xpath=//div[@class="_content"]/h3[text()='Automate_air_service']
...    expand_clean_aircon=xpath=//span[(text()='ล้างแอร์ติดผนัง')]
...    get_service_aircon_price=xpath=//h3[text()='Automate_air_service']/parent::div[@class="_content"]/p[(text()='ราคา 700.00 THB')]
...    click_radio_check=xpath=//h3[(text()='Automate_air_service')]//ancestor::div[@class="item"]//i[@class="far fa-check"]
...    click_next_service_detail=xpath=//span[@class="text text-roboto" and text()='Next: Service Detail']