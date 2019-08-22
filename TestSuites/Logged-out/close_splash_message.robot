***Settings***
Documentation                                   Close Splash Message while logged out.
Resource                                        ../../local_resources/elems.robot
Resource                                        ../../local_resources/vars.robot

Library                                         SeleniumLibrary

Suite Setup                                     Go to br88

Suite Teardown                                  Close Browser

***Variables***



***Keywords***
Go to br88
    Open Browser                                ${website_url}                  chrome
    Maximize Browser Window
    Sleep                                       00:10

***Test Cases***
Verify Splash Message
    Wait until page contains element            ${donotshow}                    timeout=10s
    Capture Page Screenshot                     filename=verifysplashmessage.png

Close Splash Message
    Click Element                               ${donotshow}
    Capture Page Screenshot                     filename=verifydonotshow.png
    Click Element                               ${splashclose}
    Capture Page Screenshot                     filename=closesplashmessage.png