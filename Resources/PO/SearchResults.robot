*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Search for the result
    [Arguments]  ${name}
    Click Button    //button[.//text()='Consent']
    Click Element    //*[@id="orbit-search-button"]
    Wait Until Page Contains Element    //*[@id="search-input"]
    Input Text    //*[@id="search-input"]    ${name} 
    Click Button    //button[@data-testid='test-search-submit']


Verify search valid result
    Location Should Be    https://www.bbc.co.uk/search?q=England&page=1

Verify search invalid result
    Page Should Not Contain    mmmmmm

