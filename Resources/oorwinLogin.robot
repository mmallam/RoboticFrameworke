*** Settings ***
Library  SeleniumLibrary
#Library  AngularJSLibrary
Variables  ../PageObjects/Locators.py


*** Keywords ***
OPEN MY BROWSER
    [Arguments]     ${SiteUrl}  ${Browser}
    open browser    ${SiteUrl}  ${Browser}
    #wait for angular
    maximize browser window

CLICK ON HOMEPAGESIGNIN
    click element ${btn_HomePageSignIn}

ENTER USERNAME
    [Arguments]  ${username}
    input text   ${txt_loginUserName}   ${username}
    #input text   ${txt_loginUserName_ng}   ${username}

ENTER PASSWORD
    [Arguments]  ${password}
    input text   ${txt_loginPassword}   ${password}

CLICK SIGNIN
    click element  ${btn_signIn}

CLOSE MY BROWSER
    close all browsers