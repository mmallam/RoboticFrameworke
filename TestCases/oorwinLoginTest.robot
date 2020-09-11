*** Settings ***
Library  SeleniumLibrary
#Library  AngularJSLibrary
Resource    ../Resources/oorwinLogin.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      https://github.com/
${user}         ############USERNAME################
${pwd}          ####PASSWORD############################
${Images}       C:/Users/Oorwin/PycharmProjects/Automation/Screenshots
#${firstName}    Krishna
#${lastName}     ML
#${jobTitle}     Sr.DevOps Developer
#${empDrop}      Full Time
#${email}        krishnam5@oorwin.com
#${dob}          15/06/1998
#${city}         Hyderabad City

*** Test Cases ***
LOGINTEST
    OPEN MY BROWSER     ${SiteUrl}      ${Browser}
    SLEEP  2
    ENTER USERNAME      ${user}
    capture page screenshot     ${Images}/1.Username.png
    ENTER PASSWORD      ${pwd}
    capture page screenshot     ${Images}/2.Password.png
    SLEEP  2
    CLICK SIGNIN
    capture page screenshot     ${Images}/3.SignIn.png
    SLEEP  20
    CLOSE MY BROWSER

