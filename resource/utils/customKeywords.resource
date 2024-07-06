*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Wait And Click Element
    [Arguments]    ${locator}

    Scroll Element Into View    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

Wait And Input Text
    [Arguments]    ${locator}    ${text}

    Wait Until Element Is Visible    ${locator}
    Input Text    ${locator}    ${text}

Wait Element Should Contain Text
    [Arguments]    ${locator}    ${expectedText}

    Wait Until Element Is Visible  ${locator}
    Element Should Contain  ${locator}  ${expectedText}