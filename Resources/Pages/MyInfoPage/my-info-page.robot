*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Resource    ../../Settings/global-variable.robot


*** Variables ***
${FIRST_NAME_INPUT}              name:firstName
${MIDDLE_NAME_INPUT}             name:middleName
${LAST_NAME_INPUT}               name:lastName
${NICK_NAME_INPUT}               xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[2]/div/div/div[2]/input
${EMPLOYEE-ID_INPUT}             xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[1]/div[1]/div/div[2]/input
${OTHER-ID_INPUT}                xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[1]/div[2]/div/div[2]/input
${DRIVER_LICENSE_INPUT}          xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[2]/div[1]/div/div[2]/input
${LICENSE_EXPIRE_INPUT}          xpath:/html/body/div/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[2]/div[2]/div/div[2]/div/div/input
${SSN_NUMBER_INPUT}              xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[3]/div[1]/div/div[2]/input
${SIN_NUMBER_INPUT}              xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[3]/div[2]/div/div[2]/input
${NATIONALITY_SELECT}            xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[1]/div[1]/div/div[2]/div/div
${MARITAL-STATUS_SELECT}         xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[1]/div[2]/div/div[2]/div/div
${DOB_INPUT}                     xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[2]/div[1]/div/div[2]/div/div/input
${MALE_RADIO}                    xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[2]/div[2]/div/div[2]/div[1]
${FEMALE_RADIO}                  xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[2]/div[2]/div/div[2]/div[2]
${MILITARY-SERVICE_INPUT}        xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[4]/div/div[1]/div/div[2]/input
${SMOKER_CHECKBOX}               xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[4]/div/div[2]/div/div[2]/div/label/span/i
${SAVE-PERSONAL-DETAILS_BUTTON}  xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[5]/button

${BLOOD-TYPE_INPUT}              xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[2]/div/form/div[1]/div/div/div/div[2]/div/div/div[1]
${SAVE-CUSTOM-FIELDS_BUTTON}     xpath://div[@class='orangehrm-custom-fields']//button[@class='oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space']

${ADD-ATTACHMENT_BUTTON_PERSONALDETAILS}         css:.oxd-button--text
${FILE_ATTACHMENT_INPUT}         css:.oxd-file-input
${COMMENT_TEXT-AREA}             css:.oxd-textarea
${CANCEL_BUTTON}                 css:.oxd-button--ghost
${SAVE-ATTACHMENT_BUTTON_PERSONALDETAILS}               xpath://button[2]

${CONTACT_DETAILS_LIST}          xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[1]/div[2]/div[2]/a
${STREET-1_INPUT}                xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[1]/div/div[2]/input
${STREET-2_INPUT}                xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[2]/div/div[2]/input
${CITY_INPUT}                    xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[3]/div/div[2]/input
${STATE/PROVINCE_INPUT}          xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[4]/div/div[2]/input
${ZIP/POSTAL-CODE_INPUT}         xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[5]/div/div[2]/input
${COUNTRY_SELECT}                xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[6]/div/div[2]/div/div/div[1]

${HOME-NUMBER_INPUT}             xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div/div[1]/div/div[2]/input
${MOBILE-NUMBER_INPUT}           xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div/div[2]/div/div[2]/input
${WORK-NUMBER_INPUT}             xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div/div[3]/div/div[2]/input

${WORK-EMAIL_INPUT}              xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div/div[1]/div/div[2]/input
${OTHER-EMAIL_INPUT}             xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div/div[2]/div/div[2]/input

${SAVE-CONTACT-DETAILS_BUTTON}   xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[4]/button

${ADD-ATTACHMENT_BUTTON_CONTACTDETAILS}         xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[2]/div[1]/div/button
${SELECT-FILE_INPUT}             xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[2]/div/form/div[1]/div/div/div/div[2]/input
${COMMENT_TEXT-AREA}             xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[2]/div/form/div[2]/div/div/div/div[2]/textarea
${CANCEL_BUTTON}                 xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[2]/div/form/div[3]/button[1]
${SAVE-ATTACHMENT_BUTTON_CONTACTDETAILS}        xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[2]/div/form/div[3]/button[2]



*** Keywords ***

Input Credentials Data On Personal Details And Submit
    [Arguments]    ${FIRST_NAME}    ${MIDDLE_NAME}    
    ...    ${LAST_NAME}    ${NICK_NAME}    ${EMPLOYEE_ID}    
    ...    ${OTHER_ID}    ${DRIVER_LICENSE}    ${LICENSE_EXPIRE}    
    ...    ${SSN_NUMBER}    ${SIN_NUMBER}    ${NATIONALITY}    
    ...    ${MARITAL_STATUS}    ${DOB}    ${MILITARY_SERVICE}
    Sleep    2s
    Press Keys    ${FIRST_NAME_INPUT}    CTRL+a BACKSPACE
    Input Text    ${FIRST_NAME_INPUT}    ${FIRST_NAME}
    Press Keys    ${MIDDLE_NAME_INPUT}    CTRL+a BACKSPACE
    Input Text    ${MIDDLE_NAME_INPUT}    ${MIDDLE_NAME}
    Press Keys    ${LAST_NAME_INPUT}    CTRL+a BACKSPACE
    Input Text    ${LAST_NAME_INPUT}    ${LAST_NAME}
    Press Keys    ${NICK_NAME_INPUT}    CTRL+a BACKSPACE
    Input Text    ${NICK_NAME_INPUT}    ${NICK_NAME}
    Press Keys    ${EMPLOYEE-ID_INPUT}    CTRL+a BACKSPACE
    Input Text    ${EMPLOYEE-ID_INPUT}    ${EMPLOYEE_ID}
    Press Keys    ${OTHER-ID_INPUT}    CTRL+a BACKSPACE
    Input Text    ${OTHER-ID_INPUT}    ${OTHER_ID}
    Press Keys    ${DRIVER_LICENSE_INPUT}    CTRL+a BACKSPACE
    Input Text    ${DRIVER_LICENSE_INPUT}    ${DRIVER_LICENSE}
    Press Keys    ${LICENSE_EXPIRE_INPUT}    CTRL+a BACKSPACE
    Press Keys    ${LICENSE_EXPIRE_INPUT}    BACKSPACE
    Input Text    ${LICENSE_EXPIRE_INPUT}    ${LICENSE_EXPIRE}
    Press Keys    ${SSN_NUMBER_INPUT}    CTRL+a BACKSPACE
    Input Text    ${SSN_NUMBER_INPUT}    ${SSN_NUMBER}
    Press Keys    ${SIN_NUMBER_INPUT}    CTRL+a BACKSPACE
    Input Text    ${SIN_NUMBER_INPUT}    ${SIN_NUMBER}
    # Input Text    ${NATIONALITY_SELECT}    ${NATIONALITY}
    # Input Text    ${MARITAL-STATUS_SELECT}    ${MARITAL_STATUS}
    Press Keys    ${DOB_INPUT}    CTRL+a BACKSPACE
    Press Keys    ${DOB_INPUT}    BACKSPACE
    Input Text    ${DOB_INPUT}    ${DOB}
    Press Keys    ${MILITARY-SERVICE_INPUT}    CTRL+a BACKSPACE
    Input Text    ${MILITARY-SERVICE_INPUT}    ${MILITARY_SERVICE}
    Click Element   ${SMOKER_CHECKBOX}
    Click Button    ${SAVE-PERSONAL-DETAILS_BUTTON}

    Sleep    2s

    # Get Selected List Values      ${BLOOD-TYPE_INPUT}
    # Click Button    ${SAVE-CUSTOM-FIELDS_BUTTON}

Click To Contact Details
    Click Link    ${CONTACT_DETAILS_LIST}
    Sleep    2s

Input Credentials Data On Contact Details Page And Submit
    [Arguments]    ${STREET_1}    ${STREET_2}    ${CITY}    
    ...            ${STATE/PROVINCE}    ${ZIP/POSTAL-CODE}    ${COUNTRY}    
    ...            ${TEL_HOME}    ${TEL_MOB}    ${TEL_WORK}    ${EMAIL_WORK}    
    ...            ${EMAIL_OTHER}    ${COMMENT}
    Press Keys    ${STREET-1_INPUT}    CTRL+a BACKSPACE
    Input Text    ${STREET-1_INPUT}    ${STREET_1}
    Press Keys    ${STREET-2_INPUT}    CTRL+a BACKSPACE
    Input Text    ${STREET-2_INPUT}    ${STREET_2}
    Press Keys    ${CITY_INPUT}    CTRL+a BACKSPACE
    Input Text    ${CITY_INPUT}    ${CITY}
    Press Keys    ${STATE/PROVINCE_INPUT}    CTRL+a BACKSPACE
    Input Text    ${STATE/PROVINCE_INPUT}    ${STATE/PROVINCE}
    Press Keys    ${ZIP/POSTAL-CODE_INPUT}    CTRL+a BACKSPACE
    Input Text    ${ZIP/POSTAL-CODE_INPUT}    ${ZIP/POSTAL-CODE}
    # Input Text    ${COUNTRY_SELECT}    ${COUNTRY}

    Press Keys    ${HOME-NUMBER_INPUT}    CTRL+a BACKSPACE
    Input Text    ${HOME-NUMBER_INPUT}    ${TEL_HOME}
    Press Keys    ${MOBILE-NUMBER_INPUT}    CTRL+a BACKSPACE
    Input Text    ${MOBILE-NUMBER_INPUT}    ${TEL_MOB}
    Press Keys    ${WORK-NUMBER_INPUT}    CTRL+a BACKSPACE
    Input Text    ${WORK-NUMBER_INPUT}    ${TEL_WORK}

    Press Keys    ${WORK-EMAIL_INPUT}    CTRL+a BACKSPACE
    Press Keys    ${WORK-EMAIL_INPUT}    BACKSPACE
    Input Text    ${WORK-EMAIL_INPUT}    ${EMAIL_WORK}
    Press Keys    ${OTHER-EMAIL_INPUT}    CTRL+a BACKSPACE
    Press Keys    ${OTHER-EMAIL_INPUT}    BACKSPACE
    Input Text    ${OTHER-EMAIL_INPUT}    ${EMAIL_OTHER}

    Click Button    ${SAVE-CONTACT-DETAILS_BUTTON}
    Sleep     2s

    Click Button    ${ADD-ATTACHMENT_BUTTON_CONTACTDETAILS}
    Sleep    500ms
    Choose File    ${FILE_ATTACHMENT_INPUT}    ${JS_IMAGE}
    Input Text    ${COMMENT_TEXT-AREA}    ${COMMENT}
    Click Button    ${SAVE-ATTACHMENT_BUTTON_CONTACTDETAILS}

    Sleep     2s