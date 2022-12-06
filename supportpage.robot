*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Open Merch-Paradise and check the support page



#   This is to view the  support page after logging in
  Open Browser    https://www.merch-paradise.xyz     Chrome
  Maximize Browser Window  
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[1]/div[2]/img  30
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[2]/div[2]/div  30
  Click Button  //*[@id="root"]/div/div/div[1]/div[1]/div/button[1]  
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div/div   30      ***till loginpage ***
  Click Element   //*[@id="root"]/div/div/div/div[1]/div[2]/div/form/div[2]/a   
  Input Text   //*[@id="email"]  saakjskajsk@besquare.com.my
  Input Password  //*[@id="password"]  saakjskajsk
  Click Button   //*[@id="root"]/div/div[2]/div/div[2]/form/div[3]/button
  Wait Until Element Is Visible    //a[text()="Support"]  30
  Click Link  //*[@id="root"]/div[2]/div/div[1]/div/nav/div[3]/ul/li[2]/a

