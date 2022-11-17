*** Settings ***
Library  OperatingSystem
Library  String
Library  DateTime
Library  Selenium2Library
*** Variables ***
*** Test Cases ***
Automate Job Search
    #MUST DO: FILL IN THESE FIELDS IN THE CODE: <YOUR_EMAIL>, <YOUR_PASSWORD>, <YOUR_RESUME_TITLE_AS_IT_APPEARS_ON_JOBS_BG>, <YOUR_RESUME_FILE_NAME>
    Open Browser And Go To Job Site
    #Maximize Browser Window
    Login
    Go To IT Jobs
    Select Roles
    Close Banner If Exists
    Select Remote Interview And Full Remote Control
    Hire Type
    Cycle Jobs
*** Keywords ***
Open Browser And Go To Job Site
    Create Webdriver  Firefox
    Go To  https://www.jobs.bg/
    Wait Until Page Contains Element  //*/div[@class='featured-professional-areas-section']  30s
Login
    Click Element  //*/span[text()='Вход']/parent::button[@class='more-actions mdc-button promo-button-header mdc-button--raised mdc-button--icon-leading text-normal']
    Wait Until Page Contains Element  //*/span[text()='Потребител']/parent::a/parent::ul/parent::div[@class='mdc-menu mdc-menu-surface mdc-menu-surface--is-open-below mdc-menu-surface--open']/ul/a/span[@class='mdc-deprecated-list-item__ripple']/following-sibling::i/following-sibling::span[text()='Потребител']/preceding-sibling::i/preceding-sibling::span  30s
    Click Element  //*/span[text()='Потребител']/parent::a/parent::ul/parent::div[@class='mdc-menu mdc-menu-surface mdc-menu-surface--is-open-below mdc-menu-surface--open']/ul/a/span[@class='mdc-deprecated-list-item__ripple']/following-sibling::i/following-sibling::span[text()='Потребител']/preceding-sibling::i/preceding-sibling::span/parent::a
    Login While Already At Login Page
    Go To  https://www.jobs.bg/?subm=1&categories[]=56
Login While Already At Login Page
    Wait Until Page Contains Element  //*/input[@id='usernameLoginForm']  30s
    Clear Element Text  //*/input[@id='usernameLoginForm']
    Input Text  //*/input[@id='usernameLoginForm']  <YOUR_EMAIL>
    Clear Element Text  //*/input[@id='passwordLoginForm']
    Input Text  //*/input[@id='passwordLoginForm']  <YOUR_PASSWORD>
    Click Button  //*/span[@class='mdc-button__ripple']/following-sibling::span[text()='Вход']/parent::button/parent::center/button
Select Roles
    Wait Until Page Contains Element  //*/span[text()='IT Област']  30s
    Click Element  //*/span[text()='IT Област']/parent::span/parent::span/parent::span/parent::span/parent::div
    Wait Until Page Contains Element  //span[text()='Потвърди']/parent::button  30s
    Wait Until Page Contains Element  //*/span[contains(text(),'Back End')]/parent::span/parent::span/parent::span  10s
    Sleep  1s
    Click Element  //*/span[contains(text(),'Back End')]/parent::span/parent::span/parent::span
    Wait Until Page Contains Element  //*/span[text()='(1)']  20s
    Click Element  //*/span[contains(text(),'Full Stack')]/parent::span/parent::span/parent::span
    Wait Until Page Contains Element  //*/span[text()='(2)']  20s
    Click Element  //*/span[contains(text(),'DBA, Big Data')]/parent::span/parent::span/parent::span
    Wait Until Page Contains Element  //*/span[text()='(3)']  20s
    Click Element  //*/span[contains(text(),'Data Science, AI, ML')]/parent::span/parent::span/parent::span
    Wait Until Page Contains Element  //*/span[text()='(4)']  20s
    Click Button  //span[text()='Потвърди']/parent::button
    Wait Until Page Contains Element  //*/span[contains(text(),' +')]  30s
Select Tech Stack
    Click Element  //*/span[@type='button']/span/span/span[text()='Tech Stack']/parent::span/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //span[text()='Потвърди']/parent::button  30s
    Click Element  //*/span[@type='button']/span/span[contains(text(),'Java') and not(contains(text(),'Script'))]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(1)']  20s
    Click Element  //*/span[@type='button']/span/span[contains(text(),'Python')]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(2)']  20s
    Click Element  //*/span[@type='button']/span/span[contains(text(),'SQL') and not(contains(text(),'My')) and not(contains(text(),'MS')) and not(contains(text(),'No')) and not(contains(text(),'Postgre'))]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(3)']  20s
    Click Element  //*/span[@type='button']/span/span[contains(text(),'SQL') and not(contains(text(),'MS')) and not(contains(text(),'No')) and not(contains(text(),'Postgre')) and contains(text(),'My')]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(4)']  20s
    Click ELement  //*/span[@type='button']/span/span[contains(text(),'Windows')]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(5)']  20s
    Click Element  //*/span[@type='button']/span/span[contains(text(),'Linux')]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(6)']  20s
    Click Element  //*/span[contains(text(),'Hadoop')]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(7)']  20s
    Click Element  //*/span[@type='button']/span/span[contains(text(),'Spark')]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(8)']  20s
    Click Element  //*/span[@type='button']/span/span[contains(text(),'Data Warehouse')]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(9)']  20s
    Click Element  //*/span[@type='button']/span/span[contains(text(),'ETL')]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(10)']  20s
    Click Element  //*/span[@type='button']/span/span[contains(text(),'PL/SQL')]/parent::span/parent::span[@type='button']
    Wait Until Page Contains Element  //*/span[text()='(11)']  20s
    Click Button  //span[text()='Потвърди']/parent::button
    Wait Until Page Contains Element  //*/span[text()=' +5']  30s
Hire Type
    Wait Until Page Contains Element  //span[text()='Вид']/parent::span/parent::span/parent::span[@type='button']/parent::span/span/span/following-sibling::span/span/span[text()='Вид']  5s
    Wait Until Page Contains Element  //span[text()='Вид']/parent::span/parent::span/parent::span[@type='button']/parent::span/span/span/following-sibling::span/span  5s
    Wait Until Page Contains Element  //span[text()='Вид']/parent::span/parent::span/parent::span[@type='button']/parent::span/span/span/following-sibling::span  5s
    Wait Until Page Contains Element  //span[text()='Вид']/parent::span/parent::span/parent::span[@type='button']/parent::span/span/span  5s
    Wait Until Page Contains Element  //span[text()='Вид']/parent::span/parent::span/parent::span[@type='button']/parent::span/span  5s
    Wait Until Page Contains Element  //span[text()='Вид']/parent::span/parent::span/parent::span[@type='button']/parent::span  5s
    Wait Until Page Contains Element  //span[text()='Вид']/parent::span/parent::span/parent::span[@type='button']  5s
    Wait Until Page Contains Element  //span[text()='Вид']/parent::span/parent::span  5s
    Wait Until Page Contains Element  //span[text()='Вид']/parent::span  5s
    Wait Until Page Contains Element  //span[text()='Вид']  5s
    Click Element   //span[text()='Вид']/parent::span/parent::span/parent::span[@type='button']/parent::span
    Wait Until Page Contains Element  //span[text()='Потвърди']/parent::button  20s
    Wait Until Page Contains Element  //*/span[contains(text(),'Постоянна работа')]/parent::span/parent::span/parent::span  20s
    Sleep  1s
    Click Element  //*/span[contains(text(),'Постоянна работа')]/parent::span/parent::span/parent::span
    Wait Until Page Contains Element  //*/span[text()='(1)']  20s
    Click Element  //*/span[contains(text(),'Пълно работно време')]/parent::span/parent::span/parent::span
    Wait Until Page Contains Element  //*/span[text()='(2)']  20s
    Click Element  //*/span[contains(text(),'Гъвкаво работно време')]/parent::span/parent::span/parent::span
    Wait Until Page Contains Element  //*/span[text()='(3)']  20s
    Click Button  //span[text()='Потвърди']/parent::button
    Wait Until Page Contains Element  //*/span[contains(text(),'+')]/preceding-sibling::span/span[text()='Вид']/parent::span/parent::span/parent::span/parent::span/parent::div[contains(@class,'-selected')]  30s
Select Remote Interview And Full Remote Control
    Click Element  //*/span[text()='Дистанционно интервю']/parent::span/parent::span/parent::span[@type='button' and @aria-selected='false']
    Wait Until Page Contains Element  //*/span[text()='Дистанционно интервю']/parent::span/parent::span/parent::span[@type='button' and @aria-selected='true']  30s
    Click Element  //*/span[contains(text(),'Работа от вкъщи')]/parent::span/parent::span/parent::div[contains(@class,'selectable')]
    #Wait Until Page Contains Element  //span[text()='Потвърди']/parent::button  20s
    Sleep  2s
    Wait Until Page Contains Element  //*/span[contains(text(),'Работа от вкъщи')]/parent::span[not(contains(@class,'action'))]  20s
    Wait Until Page Contains Element  //*/span[contains(text(),'Изцяло дистанционна')]/parent::span/parent::span[@type='button' and @aria-selected='false']/parent::span  20s
    Click Element  //*/span[contains(text(),'Изцяло дистанционна')]/parent::span/parent::span[@type='button' and @aria-selected='false']/parent::span
    Wait Until Page Contains Element  //*/span[text()='Изчисти']/preceding-sibling::div[@class='mdc-button__ripple']/parent::button[@class='mdc-button clear-button']  20s
    Click Button  //span[text()='Потвърди']/parent::button
    Wait Until Page Contains Element  //*/span[contains(text(),'Предишни търсения')]  30s
Clear Tech Stack
    Click Element  //*/span[text()='IT Област']/parent::font/parent::span/parent::span/parent::span/parent::span[@title='IT Област']/following-sibling::span/span/span[contains(text(),'cancel')]/parent::span[@type='button']
    Sleep  4s
Go To IT Jobs
    #Wait Until Page Contains Element  //*/span[contains(text(),'ITJOBS')]/parent::span/parent::span[@type='button']  30s
    #Click Element  //*/span[contains(text(),'ITJOBS')]/parent::span/parent::span[@type='button']/parent::span
    Wait Until Page Contains Element  //*/a[contains(@href,'https://www.jobs.bg/?categories%5B0%5D=56')]/parent::div[@class='mdc-top-app-bar__title logo-container']/a  20s
Close Banner If Exists
    Run Keyword And Ignore Error  Wait Until Page Contains Element  //*/button/span/following-sibling::span[text()='Затвори']/parent::button  3s
    Run Keyword And Ignore Error  Click Element  //*/button/span/following-sibling::span[text()='Затвори']/parent::button
Cycle Jobs
    ${elems} =  Get WebElements  //*/div[@id='listContainer']/ul/li[not(contains(@class,'promo-container'))][1]//*/a/div/span/following-sibling::span
    ${title} =  Get Text  ${elems[0]}
    Log To Console  \n title: ${title}
    ${url} =  Get Element Attribute  //*/div[@id='listContainer']/ul/li[not(contains(@class,'promo-container'))][1]//*/a/div/span/following-sibling::span/parent::div/parent::a  href
    @{jobs} =  Get WebElements  //*/span/parent::div/parent::a/parent::div[contains(@class,'left')]/a
    ${len} =  Get Length  ${jobs}
    Execute Javascript  window.scrollToElem(window.document.getElementsByClassName('mdc-card'))
    Log To Console  \n len: ${len}
    @{popup} =  Get WebElements  //*/span[text()='Не']/parent::button[contains(@class,'ripple')]
    ${len_popup} =  Get Length  ${popup}
    IF  ${len_popup} > 0  Click Element  //*/span[text()='Не']/parent::button[contains(@class,'ripple')]
    FOR  ${job}  IN  @{jobs}
        ${curr_url} =  Get Location
        #Sleep  3s
        #Execute Javascript  window.scrollByLines(10)
        Execute Javascript  window.scrollByLines(1)
        Sleep  0.2
        Execute Javascript  window.scrollByLines(1)
        Sleep  0.2
        Execute Javascript  window.scrollByLines(1)
        Sleep  0.2
        Execute Javascript  window.scrollByLines(1)
        Sleep  0.2
        Execute Javascript  window.scrollByLines(1)
        Sleep  0.2
        Execute Javascript  window.scrollByLines(1)
        Sleep  0.2
        Execute Javascript  window.scrollByLines(1)
        Sleep  0.2
        Execute Javascript  window.scrollByLines(1)
        Sleep  0.2
        Execute Javascript  window.scrollByLines(1)
        Sleep  0.2
        Execute Javascript  window.scrollByLines(1)
        ${attr} =  Set Variable  ${None}
        ${url} =  Set Variable  ${None}
        Wait Until Page Contains Element  ${job}  20s
        ${attr} =  Get Element Attribute  ${job}  title
        ${url} =  Get Element Attribute  ${job}  href
        Log To Console  \n ${attr} -> ${url}
        Open Browser  ${url}  alias=job_window
        Switch Browser  job_window
        Check Apply Type
        Close Browser
        Switch Browser  1
    END
Apply At Job Page
    Wait Until Page Contains Element  //*/span[text()='Kандидатствай']/parent::a/span  20s
    Click Element  //*/span[text()='Kандидатствай']/parent::a/span
Check Apply Type
    @{apply_type} =  Get WebElements  //*/span[text()='Kандидатствай']/parent::a/span[contains(@class,'ripple')]
    ${len_apply_type} =  Get Length  ${apply_type}
    ${apply_type3_secondButton} =  Get WebElements  //*/span[text()='Външно кандидатстване']/parent::a/span[contains(@class,'ripple')]
        #//*/span[text()='Външно кандидатстване']/parent::a/span[contains(@class,'ripple')]
    ${len_apply_type3_secondButton} =  Get Length  ${apply_type3_secondButton}
    ${apply_type3} =  Get WebElements  //*/span[text()='Бързо кандидатстване']/parent::a/span[contains(@class,'ripple')]
    ${len_apply_type3} =  Get Length  ${apply_type3}
    Log To Console  \n len_apply_type_slow: ${len_apply_type3_secondButton}
    Log To Console  \n len_apply_type: ${len_apply_type}
    Log To Console  \n len_apply_type3: ${len_apply_type3}
    Run Keyword If  ${len_apply_type} > 0  Fast Apply  ELSE IF  ${len_apply_type3_secondButton} > 0 and ${len_apply_type3} > 0  Slow Apply  ELSE IF  ${len_apply_type3_secondButton} == 0 and ${len_apply_type3} > 0  Apply Type 3  ELSE IF  ${len_apply_type3_secondButton} > 0 and ${len_apply_type3} == 0  No Apply
No Apply
    Log To Console  \n No apply, skipping...
Fast Apply
    Log To Console  \n Fast Apply (running)
    Execute Javascript  window.scrollToElem(window.document.getElementsByClassName('mdc-button mdc-button--raised theme-promo mdc-button--icon-leading'))
    @{radio1} =  Get WebElements  //*/td[contains(text(),'Запознат съм с')]/preceding-sibling::td/div/div/div/input[@id='company_privacy_consent']
    ${len_radio1} =  Get Length  ${radio1}
    @{radio2} =  Get WebElements  //*/label[text()='Съгласен съм']/parent::div/div/input[contains(@id,'consent') and @type='radio']
    ${len_radio2} =  Get Length  ${radio2}
    IF  ${len_radio1} > 0  Click Element  //*/td[contains(text(),'Запознат съм с')]/preceding-sibling::td/div/div/div/input[@id='company_privacy_consent']  ELSE IF  ${len_radio2} > 0  Click Element  //*/label[text()='Съгласен съм']/parent::div/div/input[contains(@id,'consent') and @type='radio']
    #radio selected now
    Click Element  //*/span[text()='Kандидатствай']/parent::a/span[contains(@class,'ripple')]
    Wait Until Page Contains Element  //*/span[contains(@class,'label') and text()='Вход']/parent::button[contains(@class,'mdc-button mdc-button--raised button-green')]  20s
    Click Element  //*/span[contains(@class,'label') and text()='Вход']/parent::button[contains(@class,'mdc-button mdc-button--raised button-green')]
    Wait Until Page Contains Element  //*/input[@id='usernameLoginForm']  10s
    Wait Until Page Contains Element  //*/input[@id='passwordLoginForm']  10s
    Login While Already At Login Page
    Sleep  3s
    ${e} =  Get WebElements  //*/div[@class='fieldcontainer']/div/div[@class='mdc-select mdc-select--filled mdc-select--no-label']
    ${len_e} =  Get Length  ${e}
    IF  ${len_e} > 0  Run Keyword  Continue Fast Apply
Continue Fast Apply
    #begin
    Wait Until Page Contains Element  //*/div[@class='fieldcontainer']/div/div[@class='mdc-select mdc-select--filled mdc-select--no-label']  20s
    
    Wait Until Page Contains Element  //*/label[text()='<YOUR_RESUME_TITLE_AS_IT_APPEARS_ON_JOBS_BG>' and contains(@for,'file3')]  20s
    Execute Javascript  window.scrollToElem(window.document.getElementsByClassName('mdc-button mdc-button--raised button-green'))
    ${elems} =  Get WebElements  //*/div[@class='mdc-select__anchor mdc-ripple-upgraded']
    Click Element  ${elems[0]}
    Wait Until Page Contains Element  //*/div[@class='mdc-select mdc-select--filled mdc-select--no-label mdc-select--focused mdc-select--activated']  10s
    #3 list items per drop down menu
    ${list_items} =  Get WebElements  //*/label[text()='<YOUR_RESUME_FILE_NAME>.pdf']/parent::li
    Click Element  ${list_items[0]}
    Wait Until Page Contains Element  //*/label[text()='<YOUR_RESUME_FILE_NAME>.pdf']/parent::li[@aria-checked='true']  10s
    #submit
    Click Button  //*/span[text()='Изпрати']/parent::button[@data-action-submit='sendCVForm']
    Sleep  3s
    #Wait Until Page Contains Element  //*/span[text()='Обратно в списъка']/parent::button  20s
    #@{button_quit} =  Get WebElements  //*/span[text()='Обратно в списъка']/parent::button
    #${len_button_quit} =  Get Length  ${button_quit}
    #@{button_quit2} =  Get WebElements  //*/span[text()='Обратно в обявата']/parent::button
    #${len_button_quit} =  Get Length  ${button_quit2}
    #IF  ${len_button_quit} > 0  Run Keyword  Wait Until Page Contains Element  //*/span[text()='Обратно в списъка']/parent::button  20s  ELSE IF  ${len_button_quit} > 0  Run Keyword  Wait Until Page Contains Element  //*/span[text()='Обратно в обявата']/parent::button  20s
    #end
Slow Apply
    Log To Console  \n Slow Apply (running)
    Execute Javascript  window.scrollToElem(window.document.getElementById('applyButtonContainer'))
    @{radio1} =  Get WebElements  //*/td[contains(text(),'Запознат съм с')]/preceding-sibling::td/div/div/div/input[@id='company_privacy_consent']
    ${len_radio1} =  Get Length  ${radio1}
    @{radio2} =  Get WebElements  //*/label[text()='Съгласен съм']/parent::div/div/input[contains(@id,'consent') and @type='radio']
    ${len_radio2} =  Get Length  ${radio2}
    IF  ${len_radio1} > 0  Click Element  //*/td[contains(text(),'Запознат съм с')]/preceding-sibling::td/div/div/div/input[@id='company_privacy_consent']  ELSE IF  ${len_radio2} > 0  Click Element  //*/label[text()='Съгласен съм']/parent::div/div/input[contains(@id,'consent') and @type='radio']
    #radio selected now
    Click Element  //*/span[text()='Бързо кандидатстване']/parent::a/span[contains(@class,'ripple')]
    Wait Until Page Contains Element  //*/span[contains(@class,'label') and text()='Вход']/parent::button[contains(@class,'mdc-button mdc-button--raised button-green')]  20s
    Click Element  //*/span[contains(@class,'label') and text()='Вход']/parent::button[contains(@class,'mdc-button mdc-button--raised button-green')]
    Wait Until Page Contains Element  //*/input[@id='usernameLoginForm']  10s
    Wait Until Page Contains Element  //*/input[@id='passwordLoginForm']  10s
    Login While Already At Login Page
    Sleep  3s
    ${e} =  Get WebElements  //*/div[@class='fieldcontainer']/div/div[@class='mdc-select mdc-select--filled mdc-select--no-label']
    ${len_e} =  Get Length  ${e}
    IF  ${len_e} > 0  Run Keyword  Continue Slow Apply
Continue Slow Apply
    Wait Until Page Contains Element  //*/div[@class='fieldcontainer']/div/div[@class='mdc-select mdc-select--filled mdc-select--no-label']  20s
    Wait Until Page Contains Element  //*/label[text()='<YOUR_RESUME_TITLE_AS_IT_APPEARS_ON_JOBS_BG>' and contains(@for,'file3')]  20s
    #3 drop down menus
    ${dropdowns} =  Get WebElements  //*/div[@class='fieldcontainer']/div/div[@class='mdc-select mdc-select--filled mdc-select--no-label']
    #For each menu
    Click Element  ${dropdowns[0]}
    Wait Until Page Contains Element  //*/div[@class='mdc-select mdc-select--filled mdc-select--no-label mdc-select--focused mdc-select--activated']  10s
    #3 list items per drop down menu
    ${list_items} =  Get WebElements  //*/label[text()='<YOUR_RESUME_FILE_NAME>.pdf']/parent::li
    Click Element  ${list_items[0]}
    Wait Until Page Contains Element  //*/label[text()='<YOUR_RESUME_FILE_NAME>.pdf']/parent::li[@aria-checked='true']  10s
    #submit
    Click Button  //*/span[text()='Изпрати']/parent::button[@data-action-submit='sendCVForm']
    Wait Until Page Contains Element  //*/span[text()='Обратно в списъка']/parent::button  20s
    Click Button  //*/span[text()='Обратно в списъка']/parent::button
Apply Type 3
    Log To Console  \n Apply Type 3 (running)
    Execute Javascript  window.scrollToElem(window.document.getElementById('applyButtonContainer'))
    @{radio1} =  Get WebElements  //*/td[contains(text(),'Запознат съм с')]/preceding-sibling::td/div/div/div/input[@id='company_privacy_consent']
    ${len_radio1} =  Get Length  ${radio1}
    @{radio2} =  Get WebElements  //*/label[text()='Съгласен съм']/parent::div/div/input[contains(@id,'consent') and @type='radio']
    ${len_radio2} =  Get Length  ${radio2}
    IF  ${len_radio1} > 0  Click Element  //*/td[contains(text(),'Запознат съм с')]/preceding-sibling::td/div/div/div/input[@id='company_privacy_consent']  ELSE IF  ${len_radio2} > 0  Click Element  //*/label[text()='Съгласен съм']/parent::div/div/input[contains(@id,'consent') and @type='radio']
    #radio selected now
    Click Element  //*/span[text()='Бързо кандидатстване']/parent::a/span[contains(@class,'ripple')]
    Wait Until Page Contains Element  //*/span[contains(@class,'label') and text()='Вход']/parent::button[contains(@class,'mdc-button mdc-button--raised button-green')]  20s
    Click Element  //*/span[contains(@class,'label') and text()='Вход']/parent::button[contains(@class,'mdc-button mdc-button--raised button-green')]
    Wait Until Page Contains Element  //*/input[@id='usernameLoginForm']  10s
    Wait Until Page Contains Element  //*/input[@id='passwordLoginForm']  10s
    Login While Already At Login Page
    Sleep  3s
    ${e} =  Get WebElements  //*/div[@class='fieldcontainer']/div/div[@class='mdc-select mdc-select--filled mdc-select--no-label']
    ${len_e} =  Get Length  ${e}
    IF  ${len_e} > 0  Run Keyword  Continue Type 3 Apply
Continue Type 3 Apply
    Wait Until Page Contains Element  //*/div[@class='fieldcontainer']/div/div[@class='mdc-select mdc-select--filled mdc-select--no-label']  20s
    Wait Until Page Contains Element  //*/label[text()='<YOUR_RESUME_TITLE_AS_IT_APPEARS_ON_JOBS_BG>' and contains(@for,'file3')]  20s
    #3 drop down menus
    ${dropdowns} =  Get WebElements  //*/div[@class='fieldcontainer']/div/div[@class='mdc-select mdc-select--filled mdc-select--no-label']
    #For each menu
    Click Element  ${dropdowns[0]}
    Wait Until Page Contains Element  //*/div[@class='mdc-select mdc-select--filled mdc-select--no-label mdc-select--focused mdc-select--activated']  10s
    #3 list items per drop down menu
    ${list_items} =  Get WebElements  //*/label[text()='<YOUR_RESUME_FILE_NAME>.pdf']/parent::li
    Click Element  ${list_items[0]}
    Wait Until Page Contains Element  //*/label[text()='<YOUR_RESUME_FILE_NAME>.pdf']/parent::li[@aria-checked='true']  10s
    #submit
    Click Button  //*/span[text()='Изпрати']/parent::button[@data-action-submit='sendCVForm']
    Wait Until Page Contains Element  //*/span[text()='Обратно в списъка']/parent::button  20s
    Click Button  //*/span[text()='Обратно в списъка']/parent::button
#//*/span[contains(text(),'Java') or contains(text(),'Python') or contains(text(),'Scala') or contains(text(),'Spark') or contains(text(),'Hadoop') or contains(text(),'Data Engineer') or contains(text(),'Software Developer') or contains(text(),'Big Data') or contains(text(),'ETL') or contains(text(),'java') or contains(text(),'python') or contains(text(),'scala') or contains(text(),'spark') or contains(text(),'hadoop') or contains(text(),'data engineer') or contains(text(),'software developer') or contains(text(),'big data') or contains(text(),'etl')]
