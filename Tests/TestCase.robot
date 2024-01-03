*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Pages/LoginPage/login-page.robot
Resource    ../Resources/Settings/global-variable.robot
Resource    ../Resources/Pages/DashboardPage/dashboard-page.robot
Resource    ../Resources/Pages/NavPage/nav-page.robot
Resource    ../Resources/Pages/SidePage/side-page.robot
Resource    ../Resources/Pages/MyInfoPage/my-info-page.robot


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

Update Personal Details
    Initialization Browser
    User Already Login
    Click To My Info Page
    Input Credentials Data On Personal Details    FIRST_NAME=Clear    MIDDLE_NAME=ElementText    LAST_NAME=BuatAPAAAAA?????    NICK_NAME=DUHHH

Logout
    Initialization Browser
    User Already Login
    Logout
    Close Browser