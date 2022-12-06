*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Open Merch-Paradise and register a new account

  Open Browser    https://www.merch-paradise.xyz     Chrome
  Maximize Browser Window  
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[1]/div[2]/img  20
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[2]/div[2]/div  20
  Click Button  //*[@id="root"]/div/div/div[1]/div[1]/div/button[1]
  Input Text     //*[@id="email"]  Lashweenraj@gmail.com
  Click Button   //*[@id="root"]/div[2]/div/div/div[1]/div[2]/div/form/div[2]/button

#   Close Browser