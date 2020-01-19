*** Settings ***
Library    SeleniumLibrary      

*** Variables ***
${Browser}  chrome
${URL}  https://www.facebook.com/
@{Credentials}  hmandimarwa@live.fr   lailehailaallah
&{Variables}    login=hmandimarwa@live.fr  password=lailehailaallah


*** Test Cases ***
My First Test
    Log    Hello    
    
First Selenium Test
    Open Browser    https://www.google.com  ${Browser}
    Set Browser Implicit Wait    4
    Input Text    name=q    Test my first application
    Press Keys    name=q    ENTER   
   # Click Button  class=gNO89b      
    Sleep    2     
    Close Browser   
    Log    Test completed   
    
Login Test
    Open Browser     ${URL}  ${Browser}
    Maximize Browser Window
    Set Browser Implicit Wait    5 
    LoginK
    Sleep    3  
    Log   ${TEST_NAME}     
    ${Value} =  Get Text    xpath=//html[@id='facebook']//div[@id='userNav']//li//div[@class='linkWrap noCount']
    Should Be Equal    ${Value}    Marwa Hm
    Close Browser    
    

*** Keywords ***
LoginK
    Clear Element Text    id=email
    Input Text    id=email    @{Credentials}[0]  
    Clear Element Text    id=pass 
    Input Password    id=pass    &{Variables}[password]   
    Click Button    id=u_0_b 