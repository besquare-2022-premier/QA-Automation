*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Open Merch-Paradise and view the homepage


# This step is to view the homepage without signing up

  Open Browser    https://www.merch-paradise.xyz     Chrome
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[1]/div[2]/img  20
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[2]/div[2]/div  20
  Click Button   //*[@id="root"]/div/div/div[1]/div[1]/div/button[2]
  Wait Until Page Contains Element  //*[@id="root"]/div/div/main/section[2]/div/div  20
   



#   This step is to view the homepage after logging in

#   Open Browser    https://www.merch-paradise.xyz     Chrome
#   Wait Until Element Is Visible   //*[@id="root"]/div/div/div[1]/div[2]/img  20
#   Wait Until Element Is Visible   //*[@id="root"]/div/div/div[2]/div[2]/div  20
#   Click Button  //*[@id="root"]/div/div/div[1]/div[1]/div/button[1]  
#   Wait Until Element Is Visible   //*[@id="root"]/div/div/div/div   30
#   Click Link   //*[@id="root"]/div[2]/div/div/div[1]/div[2]/div/form/div[2]/a
#   Input Text   //*[@id="email"]  lashweenraj@besquare.com.my      30
#   Input Password   //*[@id="password"]  Lashween28!   30
#   Click Button  //*[@id="root"]/div/div[2]/div/div[2]/form/div[3]/button  
