*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${DROPDOWN_FIRST_STATE}    css:.oxd-userdropdown
${LOGOUT_LIST}             xpath://li[.='Logout']

*** Keywords ***

Logout
    Click Element    locator=${DROPDOWN_FIRST_STATE}
    Click Element    locator=${LOGOUT_LIST}
    Sleep     2s