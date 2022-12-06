*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Open Merch-Paradise and Log in

  Open Browser    https://www.merch-paradise.xyz     Chrome
  Maximize Browser Window  
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[1]/div[2]/img  30
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[2]/div[2]/div  30
  Click Button  //*[@id="root"]/div/div/div[1]/div[1]/div/button[1]  
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div/div   30
  Click Link   //*[@id="root"]/div[2]/div/div/div[1]/div[2]/div/form/div[2]/a
  # Click Element  //*[@id="root"]/div/div/div/div/form/a
  # Wait Until Element Is Visible       //*[@id="root"]/div/div[2]/div/div[2]/form  30
  Input Text   //*[@id="email"]  jia.jun@besquare.com.my  30
  Input Password   //*[@id="password"]  chicken   30
  Click Button  //*[@id="root"]/div/div[2]/div/div[2]/form/div[3]/button  