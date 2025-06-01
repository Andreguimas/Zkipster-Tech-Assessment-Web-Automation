*** Settings ***
Library    Browser
Resource  ../Variables/variables.resource
Variables  ../Locators/user_form_locators.py


*** Keywords ***
Open DemoQA Page
    [Documentation]  Open the DemoQA web tables page in a new browser context.
    New Browser   headless=False
    New Context
    New Page    ${BASE_URL}

Click Add User Button
    Click    ${ADD_BUTTON}

Fill In User Form
    Fill Text    ${FIRST_NAME_INPUT}    ${FIRST_NAME}
    Fill Text    ${LAST_NAME_INPUT}     ${LAST_NAME}
    Fill Text    ${EMAIL_INPUT}    ${EMAIL}
    Fill Text    ${AGE_INPUT}         ${AGE}
    Fill Text    ${SALARY_INPUT}       ${SALARY}
    Fill Text    ${DEPARTMENT_INPUT}   ${DEPARTMENT}

Submit Form
    Click    ${SUBMIT_BUTTON}

User Should Appear In Table
    ${table}=    Get Text    ${TABLE_ROWS}  
    Should Contain    ${table}    ${FIRST_NAME}
    Should Contain    ${table}    ${LAST_NAME}
    Scroll To Element    ${TABLE_ROWS}
    Take Screenshot
