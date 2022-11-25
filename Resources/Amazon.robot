*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot

*** Keywords ***

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded

    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  id=nav-search-submit-button
    Wait Until Page Contains  results for "Ferrari 458"

Select Product from Search Results
    Click Link  //div[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[7]/div/div/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains  Add to Cart

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Proceed to checkout

Begin Checkout
    Click Link  css=#sc-buy-box-ptc-button > span > input
    Page Should Contain Element  class=action-inner
    Element Text Should Be  class=action-inner Sign in
