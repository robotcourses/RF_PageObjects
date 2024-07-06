*** Settings ***
Test Tags  POM2
Test Setup  Abrir Browser
Resource    ../base.resource
Test Teardown  Close All Browsers

*** Test Cases ***
Cenário: Realizar Compra
    Click On Login Button
    Do Login
    Return To Home
    Select a product    productName=Printed Chiffon Dress
    Add Item To Cart
    Validate Product Message Added in Cart Layer