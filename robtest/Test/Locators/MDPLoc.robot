*** Variables ***
#Locators Loginscherm
${username_loc}    xpath=.//*[contains(@id,'UserNameInput')]
${password_loc}    xpath=.//*[contains(@id,'PasswordInput')] 
${loginbutton_loc}    xpath=.//*[contains(@id,'LoginButton')]
${error_message}    xpath=.//*[contains(@id,'block_wtSanitizedHtml2')]

#Locators MDP
${menuitem_MDP_loc}    xpath=.//*[contains(text(),'MDP')]    
${invoerveld_MPEAN_loc}    xpath=.//*[contains(@id,'MeteringPointEAN_Input')]
${buttonzoeken_MDP}    xpath=.//*[contains(@id,'Search_Btn')] 
${klik_juiste_EAN}    xpath=.//*[contains(text(),'EAN_nummer')]    



    

