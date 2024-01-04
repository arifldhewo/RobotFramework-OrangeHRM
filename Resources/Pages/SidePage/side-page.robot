*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${MYINFO_LIST}             xpath://a[.='My Info']
${PERSONALDETAILS_TEXT}    xpath://h6[.='Personal Details']
${LEAVE_LINK}              xpath://*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[3]/a

*** Keywords ***

Click To My Info Page
    Click Link    locator=${MYINFO_LIST}
    Wait Until Element Is Visible    locator=${PERSONALDETAILS_TEXT}

Click To Leave Page
    Click Link     ${LEAVE_LINK}
    Sleep    2s