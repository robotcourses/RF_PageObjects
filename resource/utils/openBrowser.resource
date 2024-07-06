*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Abrir Browser
    Open Browser
    ...  url=https://automationtest.shop/index.php
    ...  browser=edge
    
    Maximize Browser Window
