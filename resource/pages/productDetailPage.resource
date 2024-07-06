*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Add Item To Cart
    Wait Until Element Is Visible    ${productDetails.productQuantityUpButton}

    FOR    ${counter}    IN RANGE    5
        Click Element  ${productDetails.productQuantityUpButton}
    END

    Click Element  ${productDetails.addToCartButton}