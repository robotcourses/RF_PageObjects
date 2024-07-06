*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Click On Login Button
    Wait And Click Element    ${home.loginButton}

Select A Product
    [Arguments]    ${productName}

    Wait And Click Element    ${home.products.format(product='${productName}')}