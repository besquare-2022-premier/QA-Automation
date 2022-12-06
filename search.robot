*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Open Merch-Paradise and view the searched item

# This steps are until logging into the homepage

  Open Browser    https://www.merch-paradise.xyz     Chrome
  Maximize Browser Window  
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[1]/div[2]/img  30
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[2]/div[2]/div  30
  Click Button  //*[@id="root"]/div/div/div[1]/div[1]/div/button[1]  
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div/div   30    
  Click Element   //*[@id="root"]/div/div/div/div[1]/div[2]/div/form/div[2]/a   
  Input Text   //*[@id="email"]  saakjskajsk  
  Input Password  //*[@id="password"]  saakjskajsk
  Click Button  css:button[type=submit]

 # This are the steps to view the searched item


   Wait Until Element Is Visible    css:li input[placeholder="Search here"]    30
   Input Text    css:li input[placeholder="Search here"]    Genshin
   Press Keys    css:li input[placeholder="Search here"]    RETURN