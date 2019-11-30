*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTest
    Log    Login, Sign Up, Search Function Test
    
LoginTest
    Open Browser    https://www.codecademy.com/    firefox
    Set Selenium Implicit Wait    5
    Sleep    2
    Click Element    xpath=/html/body/div[1]/div/header/div/div/div[2]/div[1]/div[2]/div/a
    Input Text    id=user_login    your@email.com
    Input Password    id=login__user_password    <yourpassword>
    Click Element    id=user_submit
    Sleep    10
    CLose Browser
    Log    Login Test Completed
    
SignUpTest
    Open Browser     https://www.codecademy.com/    firefox
    Set Selenium Implicit Wait    5
    Sleep    2
    Click Element    id=sign-up
    Input Text    id=sign_up_form_email    some@email.com
    Input Password    id=sign_up_form_password    1234567890
    Click Element    xpath=//*[@id="sign_up_form_submit"]
    Sleep    10
    Close Browser
    Log    Sign Up test Complete

SearchTest
    Open Browser    https://www.codecademy.com/    firefox
    Set Selenium Implicit Wait    5
    Sleep    2
    Click Element    id=sign-up
    Click Element    xpath=/html/body/div[1]/div/header/div[1]/div/div[2]/div[1]/div[2]/div/button
    Input Text    class=input__ELDaJDCKd6A2DOpNV6mXM    python
    Press Keys    class=input__ELDaJDCKd6A2DOpNV6mXM    ENTER
    Sleep    10
    Close Browser
    Log    Search Function Complete
    Log    All Function is tested    

