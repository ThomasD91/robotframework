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
    
    
Verifieer text
    ${response}    Get Text    ${error_message}  
    Should Be Equal As Strings    ${response}   Invalid username or password
Login CARM
    [Arguments]  ${Username}    ${Password}    ${result}
    Input Text    ${username_loc}    ${Username} 
    Input Password    ${password_loc}      ${Password}
    Click Button    ${loginbutton_loc}
    Sleep    2
    Run Keyword If    ${result}==Fail    Verifieer text      
    Else
        Element Should Be Visible    ${menuitem_MDP_loc}   
       
        
    