***Settings***
# Resource    ./Resource/f_keyword.robot
# Resource    ./Resource/f_variables.robot
# Library     test.py
Library     AppiumLibrary
Library     BuiltIn
Library     Collections
Library     String
Library     DateTime
Suite Setup        Pre-work 
Suite Teardown      Close All Applications

***Variables***
@{newer_guide}   如何使用
@{question}      热门问题      相信服务      账号      讯息      好友      生活频道
@{reach_us}      提报问题       意见建议      我的列表      客服热线       生活频道开通申请      生活频道开发指南
@{discussion}     功能讨论区  


&{section}  新手导引=${newer_guide}
...         常见问题=${question}
...         联系我们=${reach_us}
...         功能讨论区=${discussion}


***Keywords***
Check_Subtitle
     
      ##常见问题
     Log To Console       ${section}
     Click Element     //*[@text="${first_title}"]
     Sleep   5 seconds
     ${gets}  Get Webelements   //*[@resource-id='android:id/title']       
     ${gets_len}     Get Length     ${gets}
     FOR    ${i}    IN RANGE    0      ${gets_len}
      ${word}      get element attribute     ${gets}[${i}]  text
      ${word}     Evaluate    "${word}".strip(" ")
      Should Be Equal As Strings    ${section}[${first_title}][${i}]      ${word}
     END
     Click A Point   999 999 10000

Pre-work
     Close All Applications
     Open Application  http://127.0.0.1:4723/wd/hub    platformName=Android   platformVersion=12   deviceName=b10157e7   appPackage=com.fsc.civetphone    appActivity=com.fsc.civetphone.app.fragment.main.CivetMainActivity   automationName=UiAutomator2      noReset=true
     ##新手导引
     Click Element   //*[@text='我的']
     Sleep   5 seconds
     #滑行底部
     Swipe     505   1630   505   816    
     Sleep   5 seconds   
     #点击帮助与回覆
     Click Element     //*[@text='帮助与回覆']
     Sleep   5 seconds


***Test Cases***


Newer_guide
   
     Click Element     //*[@text="新手导引"]
     ${word}    Get Element Attribute     xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView    text
     Should Be Equal As Strings    ${section}[新手导引][0]      ${word}
     Click A Point   999 999 1000
Question   
     ##常见问题
     Check_Subtitle    常见问题
Reach_us
     ##联系我们
     Check_Subtitle    联系我们
Discussion  
     ##功能讨论区
     Click Element   //*[@text='功能讨论区']
     Sleep  5 seconds
     ${word}    Get Element Attribute      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.TextView   text
     Should Be Equal As strings    ${section}[功能讨论区][0]    ${word}