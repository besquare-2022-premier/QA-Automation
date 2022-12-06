*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Open Merch-Paradise and check the community page


#   This is until community page
  Open Browser    https://www.merch-paradise.xyz     Chrome
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[1]/div[2]/img  30
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[2]/div[2]/div  30
  Click Button  //*[@id="root"]/div/div/div[1]/div[1]/div/button[1]  
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div/div   30      

# To community page

  Click Element   //*[@id="root"]/div/div/div/div[1]/div[2]/div/form/div[2]/a   
  Input Text   //*[@id="email"]  ajskajsk
  Input Password  //*[@id="password"]  ajskajsk
  Click Button   //*[@id="root"]/div/div[2]/div/div[2]/form/div[3]/button
  Wait Until Element Is Visible    //a[text()="Community"]  30
  Click Link  //*[@id="root"]/div/div[2]/div[1]/div/nav/div[2]/ul/li[1]/a


#   Starting new thread

  Wait Until Element Is Visible   //*[@id="root"]/div/div[2]/div[2]/div[1]/img  10
  Input text    //*[@id="root"]/div/div[2]/div[2]/div[3]/form/input   Hello
  Click Button   //*[@id="root"]/div/div[2]/div[2]/div[3]/form/button



# Replying
  Wait Until Element Is Visible   //*[@id="root"]/div/div[2]  5
  Input Text    //*[@id="root"]/div/div[2]/div[2]/div[4]/div/div[1]/div[1]/form/input   Hi sayang
  Click Button  //*[@id="root"]/div/div[2]/div[2]/div[4]/div/div[2]/div[1]/form/button

  