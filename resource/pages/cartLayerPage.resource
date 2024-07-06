*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Validate Product Message Added in Cart Layer
    Wait Element Should Contain Text    ${cart.cartLayerMsg}    Product successfully added to your shopping cart