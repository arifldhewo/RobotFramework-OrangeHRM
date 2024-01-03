*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Pages/LoginPage/login-page.robot
Resource    ../Resources/Settings/global-variable.robot
Resource    ../Resources/Pages/DashboardPage/dashboard-page.robot
Resource    ../Resources/Pages/NavPage/nav-page.robot


*** Variables ***

*** Keywords ***

*** Test Cases ***
Login with correct Username and Password
    Open Browser    url=${URL}   browser=chrome
    Input Credentials    USERNAME=Admin    PASSWORD=admin123
    Click Login Button
    Verify User Already on Dashboard
    Close Browser

Logout
    Open Browser    url=${URL}   browser=chrome
    Input Credentials    USERNAME=Admin    PASSWORD=admin123
    Click Login Button
    Verify User Already on Dashboard
    Logout
    Close Browser