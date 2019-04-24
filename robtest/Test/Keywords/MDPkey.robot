*** Settings ***
Library    SeleniumLibrary    
Resource    ../Variables/MDPvar.robot

*** Variables ***
#Locators Loginscherm
${username_loc}    xpath=.//*[contains(@id,'UserNameInput')]
${password_loc}    xpath=.//*[contains(@id,'PasswordInput')] 
${loginbutton_loc}    xpath=.//*[contains(@id,'LoginButton')]

#Locators MDP
${menuitem_MDP_loc}    xpath=.//*[contains(text(),'MDP')]    
${invoerveld_MPEAN_loc}    xpath=.//*[contains(@id,'MeteringPointEAN_Input')]
${buttonzoeken_MDP}    xpath=.//*[contains(@id,'Search_Btn')] 

*** Keywords ***
Browser starten en maximalizeren
    Open Browser    ${URL}     ${BROWSER} 
    Maximize Browser Window

Login C-ARM
    Input Text    ${username_loc}   @{Credentials}[0]
    Input Password    ${password_loc}      @{Credentials}[1]
    Click Button    ${loginbutton_loc}
    Sleep    2
    
Zoek aansluiting
    [Arguments]    ${EAN}
    Click Element   ${menuitem_MDP_loc}
    Input Text     ${invoerveld_MPEAN_loc}    ${EAN}
    Click Button    ${buttonzoeken_MDP} 
    Sleep    3
    Click Element    xpath=.//*[contains(text(),'${EAN}')]