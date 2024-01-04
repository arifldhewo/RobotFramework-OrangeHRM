*** Settings ***
Library    SeleniumLibrary
Resource    ../../Settings/global-variable.robot

*** Variables ***
${FIRST_STATE_JOB_LI}    xpath://li[(text() = 'Job ' or . = 'Job ')]
${SECOND_STATE_JOB_LI}   xpath://li[(text() = 'Job Titles' or . = 'Job Titles')]
${ADD_BUTTON}            xpath://button[@type = 'button' and (text() = ' Add ' or . = ' Add ')]
${JOB-TITLE_INPUT}       xpath://div[@id='app']/div/div[2]/div[2]/div/div/form/div/div/div[2]/input
${JOB-DESC_TEXTAREA}     xpath://div[@id='app']/div/div[2]/div[2]/div/div/form/div[2]/div/div[2]/textarea
${FILE-UPLOAD_INPUT}     css:.oxd-file-input
${NOTE_TEXTAREA}         xpath://div[@id='app']/div/div[2]/div[2]/div/div/form/div[4]/div/div[2]/textarea
${CANCEL_BUTTON}         xpath://button[@type = 'button' and (text() = ' Cancel ' or . = ' Cancel ')]
${SUBMIT_BUTTON}         xpath://button[@type='submit']
${SUCCESSFULL_MESSAGE_STATUS}    xpath://div[@id='oxd-toaster_1']/div

*** Keywords ***

Input Add Job Title And Submit it
    [Arguments]    ${JOB_TITLE}    ${JOB_DESC}
    Sleep    2s
    Click Element    ${FIRST_STATE_JOB_LI}
    Click Element    ${SECOND_STATE_JOB_LI}
    Sleep    2s
    Click Button    ${ADD_BUTTON}
    Sleep    1s
    Input Text    ${JOB-TITLE_INPUT}    ${JOB_TITLE} 
    Input Text    ${JOB-DESC_TEXTAREA}    ${JOB_DESC}
    Choose File    ${FILE-UPLOAD_INPUT}    ${JS_IMAGE}
    Input Text    ${NOTE_TEXTAREA}    ${JOB_DESC}
    Click Button    ${SUBMIT_BUTTON}
    Wait Until Element Is Visible    ${SUCCESSFULL_MESSAGE_STATUS}