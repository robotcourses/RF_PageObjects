*** Settings ***
## Bibliotecas
Library    SeleniumLibrary

## Locators
Variables    resource/locators/authenticationLocators.yml
Variables    resource/locators/cartLayerLocators.yml
Variables    resource/locators/homeLocators.yml
Variables    resource/locators/myAccountLocators.yml
Variables    resource/locators/productDetailsLocators.yml

## Pages
Resource    resource/pages/authenticationPage.resource
Resource    resource/pages/cartLayerPage.resource
Resource    resource/pages/homePage.resource
Resource    resource/pages/myAccountPage.resource
Resource    resource/pages/productDetailPage.resource

## Utils
Resource    resource/utils/customKeywords.resource
Resource    resource/utils/openBrowser.resource

*** Variables ***
${USERNAME}  teste@robotcourses.com.br
${PASSWORD}  BHIrSzM0