*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    Test_Suite.xlsx    sheet_name=Sheet1
Library    OperatingSystem
Library    lower.py
Suite Setup    Browser Open
Test Template    LoginTest
Suite Teardown    Browser close


*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
LoginTest as ${Username} and ${Password}


*** Keywords ***
LoginTest
    [Arguments]    ${Username}    ${Password}
    
    ${lowerUsername}=    lowerusername    ${Username}    
    Sleep    5s
    Input Text    name=username   ${lowerUsername}
    Sleep    5s
    Input Text    name=password   ${Password}
    Sleep    5s
    Click Button    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    5s
    Template Logic    ${Username}    ${Password}

Template Logic
    [Arguments]    ${Username}    ${Password}

    IF    ("${Password}" == "admin123" and "${Username}" == "Admin")
        Location Should Be    https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
        Wait Until Element Is Visible    xpath=//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span
        Click Element    xpath=//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span
        Click Link    Logout
        Sleep    5s


    ELSE
        Location Should Be    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login        
        
    END
        

Browser Open
    Open Browser    ${URL}    Chrome
    Maximize Browser Window


Browser close
    Close Browser