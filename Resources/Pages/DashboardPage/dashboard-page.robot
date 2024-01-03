*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DASHBOARD_TEXT}    css:.oxd-text--h6


*** Keywords ***
Verify User Already on Dashboard
    Wait Until Element Contains    locator=${DASHBOARD_TEXT}    text=Dashboard