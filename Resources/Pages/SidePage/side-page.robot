*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${MYINFO_LIST}             xpath://a[.='My Info']
${PERSONALDETAILS_TEXT}    //h6[.='Personal Details']


*** Keywords ***

Click To My Info Page
    Click Link    locator=${MYINFO_LIST}
    Wait Until Element Is Visible    locator=${PERSONALDETAILS_TEXT}

