*** Settings ***
Test Teardown     close all applications
Library           BJRobot

*** Test Cases ***
test_demo
    [Tags]    regression
    Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    platformVersion=4.2.2    deviceName=tesddt    app=${CURDIR}/../../demoapp/ContactManager.apk    automationName=appium
    ...    appPackage=com.example.android.contactmanager
    Click Element Mobile    id=com.example.android.contactmanager:id/addContactButton
    Input Text Mobile    id=com.example.android.contactmanager:id/contactNameEditText    appium user
    Input Text Mobile    id=com.example.android.contactmanager:id/contactPhoneEditText    55555555555555
    Input Text Mobile    id=com.example.android.contactmanager:id/contactEmailEditText    demo@io.com
    Click Element Mobile    accessibility_id=Save
    close application
