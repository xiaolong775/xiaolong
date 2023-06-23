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

Foxconn
     ${text_value}    Get Element Attribute     //*[@resource-id='com.fsc.civetphone:id/Bg']     text
          log to console   ${text_value}
Foxconn1
     ${text_value1}     Get Element Attribute    //*[@resource-id='com.fsc.civetphone:id/custom_value']    text
          log to console   ${text_value1} 
Foxconn2
     ${text_value2}     Get Element Attribute    //*[@resource-id='com.fsc.civetphone:id/custom_value']    text
          log to console   ${text_value2} 
Foxconn3
     ${loc}      Get Element Location   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[4]/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.ImageView
     ${y1}      Evaluate     int(${loc}[y])
          log to console   ${y1}
      Should Be Equal As Strings    ${y}       ${y1}
#    ${text_value3}     Get Element Attribute    //*[@resource-id='com.fsc.civetphone:id/tv_oa_edit']    text
#       log to console   ${text_value3} 
Foxconn4
     Click Element   //*[@text='通讯录']
     Sleep  3 seconds
     Click Element   //*[@text='频道']
     Sleep  3 seconds
     Click Element   //*[@text='推荐']
     Sleep  3 seconds
     ${text_value4}     Get Element Attribute    //*[@resource-id='com.fsc.civetphone:id/right_test']    text
          log to console   ${text_value4}
Foxconn5
     ${text_value5}     Get Element Attribute    //*[@resource-id='com.fsc.civetphone:id/right_test']    text
          log to console   ${text_value5}          
Foxconn6
     ${text_value6}     Get Element Attributs     //*[]