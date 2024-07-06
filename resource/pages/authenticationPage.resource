*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Do Login
    Wait And Input Text    ${authentication.inputEmail}    ${USERNAME}
    Wait And Input Text    ${authentication.inputPassword}    ${PASSWORD}
    Wait And Click Element    ${authentication.submitLoginButton}