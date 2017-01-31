BJRobot框架简介
-------------------------------------------------------------------------------------------------------------------------
1. 跨平台，灵活配置，到处执行。可安装在包括Windows, Linux, Mac OSX的所有操作系统上。
2. 跨浏览器，支持IE, Chrome，Firefox，Edge等正式版本的浏览器，在一个实时测试用例执行的会话中支持不同浏览器同时执行。
3. 平行执行，支持同时执行多浏览器执行不同测试案例，并且使用不同类型的浏览器。
4. 集成报表汇总，测试集群完成后可生成高级汇总报表，并且高亮测试通过率。
5. 错误诊断，提供错误信息日志和测试报告的集成，并且嵌入失败测试步骤的清晰截图，让错误诊断工作轻松进行。
6. 中文支持，全套测试框架支持中文。让中文测试工作人员可以掌握并使用自动化测试框架。
7. 持续集成，框架提供持续集成接口，可以与调度工具无缝集成，在无人员监控的情况下自动执行每日测试案例并提交测试报告。
8. 支持移动平台应用，本框架集成了Appium框架，兼容安卓，苹果的原生以及混合型（webview）应用测试环境。
9. 具体用法请参阅 `BJRobot的关键字文档 <https://overfly83.github.io/BJRobot.html>`_ ,针对移动测试，由于测试环境比较复杂，请分别参考 `IOS <http://appium.io/slate/en/tutorial/ios.html>`_ 和 `Android <http://appium.io/slate/en/tutorial/android.html>`_ 应用测试环境的搭建指南。
   

BJRobot框架安装使用指南
-------------------------------------------------------------------------------------------------------------------------
1. 安装 python 2.7+，不支持python3.0+，链接https://www.python.org/

2. 在环境变量PATH中加入C:\\Python27 和 C:\\Python27\\Scripts，具体目录可以根据你安装python时指定的目录

3. 运行命令行窗口，CD到C:\\Python27\\Scripts， 在该目录下执行命令 easy_install pip

4. 升级pip 8.1.1至9.0.1 执行命令： python -m pip install --upgrade pip

5. 在命令行窗口运行如下指令

   pip install robotframework-bjrobot
   
   更新框架指令为 pip install -U robotframework-bjrobot
   
   
6. CD至目标目录（安装自动化测试项目）下执行命令行
   git clone https://github.com/overfly83/automation_demo.git AUTOMATION
   在当前目录下为生成名为AUTOMATION的自动化测试项目。
   
7. 在目录AUTOMATION下可以通过RIDE打开robot脚本创建关键字和测试用例。


如要搭建移动端测试环境还需要执行以下步骤

8. 安装appium server. 可以通过nodejs或者直接下载 `安装包<https://bitbucket.org/appium/appium.app/downloads/>`_

9. 安装最新的 JDK1.8 `here <http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>`_ , 配置JAVA_HOME环境变量，bin目录配置到PATH环境变量。

10. 安装 `Android SDK <http://developer.android.com/sdk/index.html>`_ 配置ANDROID_HOME环境变量，tools和platform-tools目录配置到PATH环境变量。

11. 安装 `Apache Ant <http://ant.apache.org/bindownload.cgi>`_ 配置ANT_HOME环境变量，bin目录配置到PATH环境变量。

12. 下载完Android SDK之后安装模拟器，4.2.2+，打开AVD Manager，创建--> 

    AVD Name = test

    Device= Nexus 4(4.7", 768 * 1280: xhdpi)

    Target=Android 4.4.2 - API Level 19

    CPU/ABI=Intel Atom (x86)

    Keyboard=勾选（hardware keyboard present）

    Skin=Skin with dynamic hardware controls

    Front Camera=None

    Back Camera=None

    Memory Options: RAM=2048 VM Heap=768

    保存设置，在执行用例之前需要启动模拟器

13. 在执行测试用例之前需要启动appium服务，可以直接启动appium.exe或者 使用命令行启动
Android终端

appium --avd test -a 127.0.0.1 -p 4723 --language "zh_CN" --locale "CN"

iOS终端

appium  -a 127.0.0.1 -p 4725 --platform-name "iOS" --native-instruments-lib --no-reset

14. 选中测试用例Function2/test.robot可以执行。

以上为Windows下使用安卓模拟器测试用例的环境配置步骤，如果需要在Mac操作系统下配置请直接参考 `此处 <http://appium.io/tutorial.html?lang=zh>`_

RIDE的安装
------------------------------------------------------------------------------------------------------------------------

1. 安装wxpython， 对于版本 python2.7.13需要安装链接http://sourceforge.net/projects/wxpython/files/wxPython/2.8.12.1/

2. 在命令行窗口运行pip install robotframework-ride

3. 在命令行窗口运行ride.py打开RIDE，在RIDE中打开目录AUTOMATION，开始项目实施。



业务层用户关键字创建指南（RIDE内操作）
------------------------------------------------------------------------------------------------------------------------
1. 在AUTOMATION目录下的KEYWORD目录上右键选择New Resource
2. 在New Resource File对话框中给关键字资源文件一个名字，通常给予功能模块名字。名字=<模块名字>, Format=ROBOT，点击OK
3. 在新建立的资源文件上右键选择New User Keyword，设置关键字名字和参数。自定义关键字下的参数设置可以由外部测试用例在调用该关键字时传入值，并被该自定义关键字下的子关键字读取。
4. 在自定义关键字下，可以调用底层框架robotframework-bjrobot框架的关键字来创建业务关键字。
5. 在Script下的测试套件（TestSuite1或者Test）点击右方Resource，加入以上创建完的关键字资源文件，后缀为Robot或者Txt（两种后缀文件名都可以。）
6. 在测试用例下，就可以调用自定义的业务关键字了。（按F5可以查阅所有关键字和其说明文档）

命令行接口
------------------------------------------------------------------------------------------------------------------------
Windows下

pybot.bat --outputdir e:/AUTOMATION/output script/Function1/desktop_browser.robot script/Function2/mobile.robot

Linux下

robot --outputdir e:/AUTOMATION/output script/Function1/desktop_browser.robot script/Function2/mobile.robot
