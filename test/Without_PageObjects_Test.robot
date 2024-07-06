*** Settings ***
Test Tags  POM
Library  SeleniumLibrary
Resource   ../resource/utils/openBrowser.resource
Variables  ../resource/locators/homeLocators.yml
Variables  ../resource/locators/authenticationLocators.yml
Variables  ../resource/locators/productDetailsLocators.yml
Variables  ../resource/locators/myAccountLocators.yml
Variables  ../resource/locators/cartLayerlocators.yml
Test Setup  Abrir Browser
Test Teardown  Close All Browsers

*** Test Cases ***
Realizar Compra
    
    ## Home - Clicando no Botão Sign In
    Wait Until Element Is Visible  xpath=${home.loginButton}
    Click Element  xpath=${home.loginButton}

    ## Authentication - Realizar Login
    Wait Until Element Is Visible  xpath=${authentication.inputEmail}
    Input Text  xpath=${authentication.inputEmail}  text=${USERNAME}
    Wait Until Element Is Visible  xpath=${authentication.inputPassword}
    Input Text  xpath=${authentication.inputPassword}  text=${PASSWORD}
    Click Button  xpath=${authentication.submitLoginButton}

    ## My Account - Retornar para a Home
    Wait Until Element Is Visible  xpath=${myAccount.headerLogo}
    Click Element  xpath=${myAccount.headerLogo}

    #Home : Selecionar um produto
    Scroll Element Into View    xpath=${home.products}
    Wait Until Element Is Visible  xpath=${home.products}
    Click Element  xpath=${home.products}

    ## Product Detail : Adicionar item ao carrinho
    Wait Until Element Is Visible    xpath=${productDetails.productQuantityUpButton}

    FOR    ${counter}    IN RANGE    5
        Click Element  xpath=${productDetails.productQuantityUpButton}
    END

    Click Element  xpath=${productDetails.addToCartButton}

    ## Cart Layer
    Wait Until Element Is Visible  xpath=${cart.cartLayer}

    Element Should Contain  xpath=${cart.cartLayerMsg}  expected=Product successfully added to your shopping cart
