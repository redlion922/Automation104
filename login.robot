*** Settings ***
Library  Selenium2Library

*** Variables ***
${account}    
${password}    
*** Test Cases ***
Login104
    Open Browser    https://www.104.com.tw/jobs/main/    chrome
    Wait Until Element Is Visible    //a[@onclick="login_get();gcn('_login');return false;"]
    Click Element    //a[@onclick="login_get();gcn('_login');return false;"]
    Wait Until Element Is Visible    //input[@id='username']
    Input Text    //input[@id='username']    ${account}
    Wait Until Element Is Visible     //input[@id='password']
    Input Text    //input[@id='password']    ${password}
    Wait Until Element Is Visible    //button[@id='submitBtn']
    Click Element    //button[@id='submitBtn']
    Wait Until Element Is Visible    //a[@onclick="gcn('_logout');"]
    Wait Until Element Is Visible    //a[@id='name_link']
    ${userName}    Get Text    //a[@id='name_link']
    Click Element    //a[@id='name_link']
    Wait Until Element Is Visible    //a[@onclick="gcn('_sso2');"]
    Click Element    //a[@onclick="gcn('_sso2');"]
    Go To    https://pda.104.com.tw/
    Wait Until Element Is Visible    //div[@class='h2 mb-3']
    Element Text Should Be    //div[@class='h2 mb-3']    ${userName}
    Wait Until Element Is Visible    //a[@onclick="gcn('_logout');"]
    Click Element    //a[@onclick="gcn('_logout');"]
    Close Browser


*** Keywords ***
