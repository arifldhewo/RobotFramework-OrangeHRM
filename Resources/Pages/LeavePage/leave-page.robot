*** Settings ***
Library    SeleniumLibrary
Resource    ../SidePage/side-page.robot


*** Variables ***
${APPLY_ELEMENT}               xpath://*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[1]
${LEAVE-TYPE_SELECT}           xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[1]
${FROM-DATE_INPUT}             xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/div/div/input
${TO-DATE_INPUT}               xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/div/div/input
${DURATION_SELECT}             xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div/div/div[2]/div/div/div[1]
${COMMENT_TEXTAREA_LEAVEPAGE}  xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[4]/div/div/div/div[2]/textarea
${SAVE_BUTTON_LEAVEPAGE}

${LEAVE_ELEMENT}               xpath://*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[2]
${CANCEL-FIRST_LIST}           css:.oxd-table-body > div:nth-of-type(1) .oxd-button

*** Keywords ***

Input Leave Data To Apply And Submit
    [Arguments]    ${LEAVE_TYPE}    ${FROM_DATE}    ${TO_DATE}    ${COMMENT}    ${DURATION}
    Click Element    ${APPLY_ELEMENT}
    Sleep    2s
    # Input Text      ${LEAVE-TYPE_SELECT}    ${LEAVE_TYPE}
    Input Text      ${FROM-DATE_INPUT}    ${FROM_DATE}
    Press Keys      ${TO-DATE_INPUT}    CTRL+a BACKSPACE
    Press Keys      ${TO-DATE_INPUT}    BACKSPACE
    Input Text      ${TO-DATE_INPUT}    ${TO_DATE}
    # Input Text    ${DURATION_SELECT}    ${DURATION}
    Input Text      ${COMMENT_TEXTAREA_LEAVEPAGE}    ${COMMENT}
    # Click Button    ${SAVE_BUTTON_LEAVEPAGE}

Cancel Leave 
    Click Element    ${LEAVE_ELEMENT}
    Sleep    2s
    Click Button    ${CANCEL-FIRST_LIST}
    Sleep    2s
    