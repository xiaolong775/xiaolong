*** Settings ***

Library     AppiumLibrary
Library     BuiltIn
Library     Collections
Library     String


*** Test Cases ***

Open_Application
#     Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    deviceName=LMX210c697a88a   appPackage=com.fsc.civetphone   appActivity=com.fsc.civetphone.app.ui.SplashActivty       automationName=UiAutomator2    noReset=true
     Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    deviceName=LMX210c697a88a   appPackage=com.fsc.civetphone    appActivity=com.fsc.civetphone.app.fragment.main.CivetMainActivity   automationName=UiAutomator2     newCommandTimeout=300       fullReset=false     and noReset=false
