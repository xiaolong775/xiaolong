***Settings***
Library      AppiumLibrary
Library      BuiltIn
Library      Collections
Library      String
***Keywords***

***Variables***
${y}    1799

***Test Cases***
Open_Application
     Close All Applications
#    Run Keyword If     devices==b10157e7        Open Application  http://127.0.0.1:4723/wd/hub    platformName=Android   platformVersion=12   deviceName=b10157e7   appPackage=com.fsc.civetphone    appActivity=com.fsc.civetphone.app.fragment.main.CivetMainActivity   automationName=UiAutomator2      noReset=true

#...        ELSE    
     Open Application  http://127.0.0.1:4723/wd/hub    platformName=Android   platformVersion=12   deviceName=b10157e7   appPackage=com.fsc.civetphone    appActivity=com.fsc.civetphone.app.fragment.main.CivetMainActivity   automationName=UiAutomator2      noReset=true

#Foxconn3
#     Click Element   //*[@resource-id='com.fsc.civetphone:id/tv_oa_title' and @text='員工日常應用']/following-sibling::*[@resource-id='com.fsc.civetphone:id/tv_oa_edit']

#Foxconn4
#     Wait Until Page Contains Element    //*[@text='通讯录']
#     Click Element    //*[@text='通讯录']
#     Sleep  3 seconds
#     Click Element    //*[@text='频道']
     #  Sleep  3 seconds
     # Click Element    //*[@text='推荐']
     # Sleep  3 seconds
     # Click Element    //*[@resource-id='com.fsc.civetphone:id/right_test' and @text='104/106线上客服阿信']
# Foxconn5
#      Wait Until Page Contains Element    //*[@resource-id='com.fsc.civetphone:id/actionbar_search']
#      Click Element   //*[@resource-id='com.fsc.civetphone:id/actionbar_search']
#      Wait Until Page Contains Element    //*[@resource-id='android:id/search_src_text']
#      Input text    //*[@resource-id='android:id/search_src_text']   富士康
#      # Wait Until Page Contains Element    //*[@resource-id='com.fsc.civetphone:id/layout_main']
#      Sleep  3  seconds
#      ${fk}     Get Webelements     //*[@resource-id='com.fsc.civetphone:id/layout_main']/descendant::*[@resource-id='com.fsc.civetphone:id/tv_title']
#      Log To Console    ${fk}
#      sleep  3  seconds
#      ${text_list}    Create List  
#      Sleep  3  seconds  
#      FOR  ${o}  IN  @{fk}
#             ${fsk}    Get Element Attribute    ${o}    text
#             Log To Console   ${fsk}
#             Append To List   ${text_list}    ${fsk}
#      END
#      Sleep  3  seconds
#      Log To Console    ${text_list}

# foxconn6
#      sleep  3  seconds
#      Click Element    //*[@text='应用中心']
#      Wait Until Page Contains Element    //*[@text='应用中心']
#      Click Element    //*[@text='应用中心']
#      Sleep  3  seconds
#      Click Element    //*[@class='android.widget.TextView' and @text='富圈圈']/parent::*[@class='android.view.View']/child::*[@text='员工福利']/following-sibling::*[@text='取得']
# foxconn7
#           Wait Until Page Contains Element   //*[@text='消息']
#           Click Element    //*[@text='消息']
#           Wait Until Page Contains Element   //*[@text='聊天']
#           Click Element    //*[@text='聊天']
#           ${time}    Create List
#           Sleep  3  seconds
#           ${time1}    Get Webelements    com.fsc.civetphone:id/tv_time
#           Sleep  2  seconds
#           Log To Console    ${time1}
#           FOR  ${e}  IN  @{time1}
#              ${t}    Get Element Attribute   ${e}    text
#              Append To List  ${time}    ${t}
#           END
#           Log To Console    ${time}
#           Log To Console    ${time}[0]
# Foxconn8
#       Sleep  3  seconds
#      #  #  ${size}    Get Element Size   //*[@resource='com.fsc.civetphone:id/oa_fast_personnalinfo_layout']
#      #  #  Log To Console    ${size}
#       FOR   ${i}  IN RANGE   2
#            Swipe    535    1987     535    232    1000
#        # Swipe To Specific Area    //*[@text='自订我的首页']    1000
#       END
#      sleep  2  seconds
#      Click Element    //*[@text='自订我的首页']
#      sleep  2  seconds
#      Click Element   //*[@text='查看示例']
#      sleep  2  seconds
#      ${location}    Get Element Location    //*[@resource-id='com.fsc.civetphone:id/activity_main']
#      Log To Console    ${location}[x]
#      ${size}    Get Element Size    //*[@resource-id='com.fsc.civetphone:id/activity_main']
#      Log To Console    ${size}[height]

#      ${x}    Set Variable    ${location}[x]
#      ${xx}    Set Variable    ${size}[width]
#      ${XXX}    Evaluate    ${x}+${xx}

#      Log To Console    ${x}

# # #     Log To Console    ${X}
# # #不区分大小写

#       ${y}=    Set Variable    ${location}[y]
#       ${yy}=   Set Variable     ${size}[height]  
#       ${Y}=    Evaluate    ${y}+${yy}/2

#       Log To Console    ${Y}  
#       ${yx}=   Evaluate    ${XXX}-100
#       ${zx}=   Evaluate    ${x}+123 
#       Log To Console    ${zx}     
#       sleep  2  seconds    
#       Swipe    ${yx}    ${Y}    ${zx}    ${Y}    2000  
# Foconn9
#       Sleep  5  seconds
#       Click Element    //*[@resource-id='com.fsc.civetphone:id/tv_oa_title' and @text='员工日常应用']/following-sibling::*[@resource-id='com.fsc.civetphone:id/tv_oa_edit']
#       Sleep  5  seconds
#       Click Element    //*[@resource-id='com.fsc.civetphone:id/drag_title' and @text='排班记录']/parent::*[@resource-id='com.fsc.civetphone:id/drag_item']/child::*[@resource-id='com.fsc.civetphone:id/drag_img']
# Foxconn10
#      wait Until Page Contains Element    //*[@text='通讯录']
#      Click Element   //*[@text='通讯录']
#      ${aa}     Create List

#      sleep  3  seconds
#      FOR   ${i}   IN RANGE    4    7 
#           ${TTT}    Get Webelements    //*[@resource-id='com.fsc.civetphone:id/tv_groupname' and @text='T']/parent::*[@class='android.widget.LinearLayout']/following-sibling::*[@resource-id='com.fsc.civetphone:id/layout_main' and @index='${i}']/child::*[@resource-id='com.fsc.civetphone:id/iv_name'] 
#           Append To List    ${aa}     ${TTT}  
#      END
#      Log To Console   ${aa}
#      sleep  3  seconds
#      # @{aa}    Evaluate    ${aa}
#      # Log To Console    ${TTT}
#      # ${TTK}    Create List

#      sleep  2  seconds

#      FOR  ${c}  IN  @{aa}
#          ${kk}      Get Element Attribute      ${c}      text
#           Append To List    ${TTK}   ${kk}
#      END 
#      Log To Console    ${TTK}   
Click 
     Click Element    //*[@text='您好，123漢字']