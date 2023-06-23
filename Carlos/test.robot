***Settings***
Library      AppiumLibrary
Library      BuiltIn
Library      Collections
Library      String
***Keywords***
***Variables***
***Test Cases***
iOS_deviceSettings_and_launchApp
    Open Application   http://127.0.0.1:4723/wd/hub    platformName=iOS   platformVersion=15.4   deviceName=iPhone-091    app=com.foxconn.Civet    udid=00008030-000044683A63802E    xcodeOrgId=VL3BSC7NCH    automationName=xcuitest    xcodeSigningId=iPhoneDeveloper    clearSystemFiles=true

# foxconn
    # Sleep  1  seconds
    # Click Element    xpath=(//XCUIElementTypeStaticText[@name="中央資訊 | 中央資訊"])[2]
    # Sleep  3  seconds
    # Click Element    //*[@name='我的二维码']
foxconn2
    Sleep  2  seconds
    Click Element    xpath=(//XCUIElementTypeStaticText[@name="无"])[6]
    
