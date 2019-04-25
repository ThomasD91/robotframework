*** Settings ***
Library    SeleniumLibrary
Resource    Keywords/MDPkey.robot
Resource    Variables/MDPvar.robot

Test Setup    Browser starten en maximalizeren
Test Teardown    Close browser

*** Test Cases ***

Zoek aansluiting
    Login C-ARM
    Zoek aansluiting    871689200000000001    

