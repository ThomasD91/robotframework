*** Settings ***
Library    SeleniumLibrary    
Library    String
Resource    ../Variables/MDPvar.robot
Resource    ../Locators/MDPLoc.robot
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
    ${LOC}    Replace String    ${klik_juiste_EAN}   EAN_nummer   ${EAN}
    Click Element    ${LOC}    