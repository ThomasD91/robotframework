*** Settings ***
Library    SeleniumLibrary    
Resource    ../Variables/MDPvar.robot
*** Keywords ***
Browser starten en maximalizeren
    Open Browser    ${URL}     ${BROWSER} 
    Maximize Browser Window

Login C-ARM
    Input Text    xpath=.//*[contains(@id,'UserNameInput')]    @{Credentials}[0]
    Input Password   xpath=.//*[contains(@id,'PasswordInput')]    @{Credentials}[1]
    Click Button    xpath=.//*[contains(@id,'LoginButton')]
    Sleep    2
    
Zoek aansluiting
    [Arguments]    ${EAN}
    Click Element   xpath=.//*[contains(text(),'MDP')]
    Input Text     xpath=.//*[contains(@id,'MeteringPointEAN_Input')]    ${EAN}
    Click Button    xpath=.//*[contains(@id,'Search_Btn')] 
    Sleep    3
    Click Element    xpath=.//*[contains(text(),'${EAN}')]