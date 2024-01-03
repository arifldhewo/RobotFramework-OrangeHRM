*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${FIRST_NAME_INPUT}              name:firstName
${MIDDLE_NAME_INPUT}             name:middleName
${LAST_NAME_INPUT}               name:lastName
${NICK_NAME_INPUT}               xpath://div[@class='orangehrm-edit-employee-content']//form[@class='oxd-form']/div[1]//input[@class='oxd-input oxd-input--active']

${EMPLOYEE-ID_INPUT}             xpath://div[@class='orangehrm-edit-employee-content']//form[@class='oxd-form']/div[2]/div[1]/div[1]//input[@class='oxd-input oxd-input--active']
${OTHER-ID_INPUT}                xpath://div[@class='orangehrm-edit-employee-content']//div[@class='oxd-form-row']/div[1]/div[2]//input[@class='oxd-input oxd-input--active']
${DRIVER_LICENSE_INPUT}          xpath://div[@class='orangehrm-edit-employee-content']//div[2]/div[2]//div[2]/input[@class='oxd-input oxd-input--active']
${LICENSE_EXPIRE_INPUT}          xpath://div[@class='orangehrm-edit-employee-content']//div[@class='oxd-grid-3 orangehrm-full-width-grid']/div[2]//div[@class='oxd-date-wrapper']//input[@class='oxd-input oxd-input--active']
${SSN_NUMBER_INPUT}              xpath://div[@class='orangehrm-edit-employee-content']//div[3]/div[1]//input[@class='oxd-input oxd-input--active']
${SIN_NUMBER_INPUT}              xpath://div[@class='orangehrm-edit-employee-content']//div[@class='oxd-form-row']/div[3]/div[2]//input[@class='oxd-input oxd-input--active']
${NATIONALITY_INPUT}             xpath://div[@class='orangehrm-edit-employee-content']//div[@class='oxd-input-group oxd-input-field-bottom-space']/div[.='American']
${MARITAL-STATUS_INPUT}          xpath://div[@class='orangehrm-edit-employee-content']//div[@class='oxd-input-group oxd-input-field-bottom-space']/div[.='Single']
${DOB_INPUT}                     xpath://div[@class='orangehrm-edit-employee-content']//div[3]/div[2]/div[@class='oxd-grid-item oxd-grid-item--gutters']/div[@class='oxd-input-group oxd-input-field-bottom-space']/div[2]
${MALE_RADIO}                    xpath://div[@class='--gender-grouped-field']/div[.='Male']
${FEMALE_RADIO}                  xpath://div[@class='--gender-grouped-field']/div[.='Female']
${MILITARY-SERVICE_INPUT}        xpath://div[@class='orangehrm-edit-employee-content']//div[4]//input[@class='oxd-input oxd-input--active']
${SMOKER_CHECKBOX}               xpath://div[@class='orangehrm-edit-employee-content']/div[@class='orangehrm-horizontal-padding orangehrm-vertical-padding']//div[@class='oxd-checkbox-wrapper']//input[1]
${SAVE-PERSONAL-DETAILS_BUTTON}  xpath://div[@class='orangehrm-edit-employee-content']/div[@class='orangehrm-horizontal-padding orangehrm-vertical-padding']//button[@class='oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space']

${BLOOD-TYPE_INPUT}              xpath://div[@class='orangehrm-custom-fields']//div[@class='oxd-input-group oxd-input-field-bottom-space']/div[.='-- Select --']
${SAVE-CUSTOM-FIELDS_BUTTON}     xpath://div[@class='orangehrm-custom-fields']//button[@class='oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space']

${ADD_BUTTON_ATTACHMENT}         css:.oxd-button--text
${FILE_ATTACHMENT_INPUT}         css:.oxd-file-input
${COMMENT_TEXT-AREA}             css:.oxd-textarea
${CANCEL_BUTTON}                 css:.oxd-button--ghost
${SAVE-ADD_BUTTON}               xpath://button[2]


*** Keywords ***

Input Credentials Data On Personal Details
    [Arguments]    ${FIRST_NAME}    ${MIDDLE_NAME}    ${LAST_NAME}    ${NICK_NAME}
    Sleep    3s
    Press Keys    ${FIRST_NAME_INPUT}    CTRL+a DELETE
    Input Text    ${FIRST_NAME_INPUT}    ${FIRST_NAME}
    Press Keys    ${MIDDLE_NAME_INPUT}    CTRL+a DELETE
    Input Text    ${MIDDLE_NAME_INPUT}    ${MIDDLE_NAME}
    Press Keys    ${LAST_NAME_INPUT}    CTRL+a DELETE
    Input Text    ${LAST_NAME_INPUT}    ${LAST_NAME}
    Input Text    ${NICK_NAME_INPUT}    ${NICK_NAME}
    Click Button    locator=${SAVE-PERSONAL-DETAILS_BUTTON}
