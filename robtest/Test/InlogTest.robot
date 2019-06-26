*** Settings ***
Library    SeleniumLibrary
Resource    Keywords/MDPkey.robot
Test Template    Login CARM


Test Setup    Browser starten en maximalizeren
Test Teardown    Close browser

*** Test Cases ***    USERNAME    PASSWORD    Result
Invalid username         invalid    ${Credentials}[1]    Fail
Invalid password        ${Credentials}[0]    invalid     Fail        
Invalid pass and user   invalid    invalid    Fail  
Valid credentials    ${Credentials}[0]    ${Credentials}[1]    Succes
    
    

