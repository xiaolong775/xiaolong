***Settings***
Library      AppiumLibrary
Library      BuiltIn
Library      Collections
Library      String
***Keywords***

***Variables***
${y}    1798
***Test Cases***
Open_Application
     Close All Applications
#    Run Keyword If     devices==b10157e7        Open Application  http://127.0.0.1:4723/wd/hub    platformName=Android   platformVersion=12   deviceName=b10157e7   appPackage=com.fsc.civetphone    appActivity=com.fsc.civetphone.app.fragment.main.CivetMainActivity   automationName=UiAutomator2      noReset=true

#...        ELSE    
     Open Application  http://127.0.0.1:4723/wd/hub    platformName=Android   platformVersion=13   deviceName=358dcaee   appPackage=com.fsc.civetphone    appActivity=com.fsc.civetphone.app.fragment.main.CivetMainActivity   automationName=UiAutomator2      noReset=true

xiaoxi
    sleep  3 seconds
    Click Element  //*[@text="消息"]
    sleep  3 seconds
    Click Element  //*[@text="袁明飞"]
    sleep  2 seconds
    FOR  ${item}   IN RANGE   3318
        Click Element   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout[3]/android.widget.ImageButton
        sleep  2 seconds
        Click Element   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/androidx.viewpager.widget.ViewPager/android.widget.GridView/android.widget.LinearLayout[5]/android.widget.ImageView
        sleep   2 seconds
        Click Element   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.ImageView
        sleep  4 seconds
        Click Element   //*[@text="确定"]
        sleep  3 seconds
    END
   
     