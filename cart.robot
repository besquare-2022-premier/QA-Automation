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
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div/div   30      ***till loginpage ***
  Click Element   //*[@id="root"]/div/div/div/div[1]/div[2]/div/form/div[2]/a   
  Input Text   //*[@id="email"]  jia.jun@besquare.com.my  30
  Input Password  //*[@id="password"]  Pufferfish@2023   30
  Click Button  css:button[type=submit]

# This are the steps to view the searched item


   Wait Until Element Is Visible    css:li input[placeholder="Search here"]    30
   Input Text    css:li input[placeholder="Search here"]    Genshin
   Press Keys    css:li input[placeholder="Search here"]    RETURN


# Choosing an item to add in the cart
  
  Wait Until Element Is Visible   //*[@id="root"]/div[2]/div/main/section[1]/div/div[2]/div/div/div[1]/div[1]/a/div/img   30
  Click Image  //*[@id="root"]/div[2]/div/main/section[1]/div/div[2]/div/div/div[1]/div[1]/a/div/img
  Click Button   //*[@id="root"]/div[2]/main/div[1]/div[2]/section[1]/div/div/button 