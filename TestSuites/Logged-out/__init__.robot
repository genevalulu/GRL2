***Settings***
Documentation                                           Running Test on BR88

#Calls the Keyword `MAIN SETUP` from the utils.robot on the MAIN_LIB Directory.
Suite Setup                                             Logged Out Test Setup


#Calls the Keyword `MAIN TEARDOWN` from the utils.robot on the MAIN_LIB Directory.
Suite Teardown                                          Close all Browsers


# Force the tags to all the test suites on this directory.
Force Tags                                              br88            br88-web        web


#Import the SeleniumLibrary to use the selenium keywords; check https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html.
Library                                                 SeleniumLibrary       
Library                                                 String


#Import from Resources
Resource                                                ../../../../Resources/resource.robot


#Import keywords,variables and elements locator from local_resources.
Resource                                                ../../local_resources/account.txt
Resource                                                ../../local_resources/vars.robot
Resource                                                ../../local_resources/keys.robot
Resource                                                ../../local_resources/elems.robot


***Keywords***
Logged Out Test Setup
    Open test Browser and go to the link
    Close Popup                                         ${perm_modal_close}                         ${modal_close_button}