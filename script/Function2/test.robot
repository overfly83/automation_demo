*** Settings ***
Test Teardown     close all browsers
Library     BJRobot


*** Test Cases ***
test_demo
    [Tags]  regression
     Open Application  http://127.0.0.1:4723/wd/hub  platformName=Android  platformVersion=4.2.2  deviceName=tesddt  app=${CURDIR}/../../demoapp/OrangeDemoApp.apk  automationName=appium  appPackage=com.netease.qa.orangedemo  appActivity=MainActivity
     close application
