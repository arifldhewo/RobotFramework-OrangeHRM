*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Pages/LoginPage/login-page.robot
Resource    ../Resources/Settings/global-variable.robot
Resource    ../Resources/Pages/DashboardPage/dashboard-page.robot
Resource    ../Resources/Pages/NavPage/nav-page.robot
Resource    ../Resources/Pages/SidePage/side-page.robot
Resource    ../Resources/Pages/MyInfoPage/my-info-page.robot
Resource    ../Resources/Pages/LeavePage/leave-page.robot
Resource    ../Resources/Pages/AdminPage/job-page.robot


*** Variables ***

*** Keywords ***

Initialization Browser
    Open Browser    url=${URL}    browser=${CHROME}
    Maximize Browser Window

User Already Login
    Input Credentials    USERNAME=Admin    PASSWORD=admin123
    Click Login Button
    Verify User Already on Dashboard


*** Test Cases ***

Login with correct Username and Password
    Initialization Browser
    User Already Login
    Close Browser

Apply Leave
    Initialization Browser
    User Already Login
    Click To Leave Page
    Input Leave Data To Apply And Submit   
    ...    LEAVE_TYPE=CAN - Bereavement    
    ...    FROM_DATE=2024-01-05     
    ...    TO_DATE=2024-01-05    
    ...    COMMENT=CUTI    
    ...    DURATION=All Days
    Close Browser

Cancel Leave
    Initialization Browser
    User Already Login
    Click To Leave Page
    Cancel Leave
    Close Browser

Update Personal Details
    Initialization Browser
    User Already Login
    Click To My Info Page
    Input Credentials Data On Personal Details And Submit  
    ...    FIRST_NAME=Danny
    ...    MIDDLE_NAME=Simala
    ...    LAST_NAME=Winters
    ...    EMPLOYEE_ID=0001
    ...    OTHER_ID=0001
    ...    DRIVER_LICENSE=912712943
    ...    LICENSE_EXPIRE=2024-06-01
    ...    MARITAL_STATUS=Single
    ...    DOB=2004-01-01
    Close Browser

Update Contact Details
    Initialization Browser
    User Already Login
    Click To My Info Page
    Click To Contact Details
    Input Credentials Data On Contact Details Page And Submit    
    ...    STREET_1=Jln H Ilyas    
    ...    STREET_2=RT005/002    
    ...    CITY=Jakarta Selatan    
    ...    STATE/PROVINCE=DKI Jakarta    
    ...    ZIP/POSTAL-CODE=12260    
    ...    TEL_HOME=021 0284 1237    
    ...    TEL_MOB=+6288888888888    
    ...    TEL_WORK=021 12371 1237    
    ...    EMAIL_WORK=lalalal@example.com     
    ...    EMAIL_OTHER=lalalal@example.org    
    ...    COMMENT=Test 1234
    Close Browser

Add Job Title
    Initialization Browser
    User Already Login
    Click To Admin Page
    Input Add Job Title And Submit it    
    ...    JOB_TITLE=Cleaning Services    
    ...    JOB_DESC=Cleaning A Whole Building
    Close Browser

Logout
    Initialization Browser
    User Already Login
    Logout
    Close Browser