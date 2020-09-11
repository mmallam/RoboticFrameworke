*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    open browser    ${SiteUrl}      ${Browser}
    maximize browser window

EnteruserName
    [Arguments]       ${username}
    input text      ${txt_loginUserName}    ${username}

Enterpassword
     [Arguments]        ${password}
     input text     ${txt_loginPassword}    ${password}

Click SignIn
     click button  ${btn_signIn}

Close Browser
    close all browsers

