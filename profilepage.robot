*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Open Merch-Paradise and update the profile details


#   This are the steps to view the profile page
  Open Browser    https://www.merch-paradise.xyz     Chrome
  Maximize Browser Window  
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[1]/div[2]/img  30
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div[2]/div[2]/div  30
  Click Button  //*[@id="root"]/div/div/div[1]/div[1]/div/button[1]  
  Wait Until Element Is Visible   //*[@id="root"]/div/div/div/div   30      ***till loginpage ***
  Click Element   //*[@id="root"]/div/div/div/div[1]/div[2]/div/form/div[2]/a   
  Input Text   //*[@id="email"]  lashweenraj@besquare.com.my
  Input Password  //*[@id="password"]  Lashween28!
  Click Button   //*[@id="root"]/div/div[2]/div/div[2]/form/div[3]/button
  Wait Until Element Is Visible  css:img[alt='User avatar']    30
  Click Element  css:img[alt='User avatar']   
  Click Element  //a[text()="Profile"]


  # This are the steps to edit the Firstname in the profile page

  Wait For Condition    return !!(document.querySelector('input[name=first_name]')?.value)
  Press Keys    css:input[name=first_name]    CTRL+a    DELETE
  Input Text   //*[@id="root"]/div[2]/div/div[2]/div/div[2]/form/div[1]/div[1]/input  Lashween
  Click Button  //*[@id="root"]/div[2]/div/div[2]/div/div[2]/form/div[3]/button


  # This are the steps to edit the user address in the profile page
 
  Click Element  //*[@id="root"]/div[2]/div/div[2]/div/div[1]/div/a[2]
  Wait For Condition    return !!(document.querySelector('input[name=address]')?.value)
  Press Keys    css:input[name=address]    CTRL+a    DELETE
  Input Text   //*[@id="root"]/div[2]/div/div[2]/div/div[2]/form/div[1]/input    amir subang fboy 123
  Click Button   //*[@id="root"]/div[2]/div/div[2]/div/div[2]/form/div[3]/button


# This are the steps to change the passwords.

 # Entering the old password

  Click Element  //*[@id="root"]/div[2]/div/div[2]/div/div[1]/div/a[4] 
  Wait For Condition    return !!(document.querySelector('input[name=password]'))
  Input Password   //*[@id="root"]/div[2]/div/div[2]/div/div[2]/form/div[1]/input   Lashween28!
 
 # Entering the new password
 
  Click Element  //*[@id="root"]/div[2]/div/div[2]/div/div[2]/form/div[2]/input
  Wait For Condition    return !!(document.querySelector('input[name=new_password]'))
  Input Password   //*[@id="root"]/div[2]/div/div[2]/div/div[2]/form/div[2]/input   Lashween2806!

# Entering the new password again

  Click Element  //*[@id="root"]/div[2]/div/div[2]/div/div[2]/form/div[3]/input
  Wait For Condition  return !!(document.querySelector('input[name=new_password_again'))
  Input Password  //*[@id="root"]/div[2]/div/div[2]/div/div[2]/form/div[3]/input   Lashween2806!
  Click Button   //*[@id="root"]/div[2]/div/div[2]/div/div[2]/form/div[4]/button
  
  
