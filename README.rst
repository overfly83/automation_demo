BJRobot框架安装使用指南
------------
1. 安装 python 2.7+，不支持python3.0+，链接https://www.python.org/

2. 在环境变量PATH中加入C:\\Python27 和 C:\\Python27\\Scripts，具体目录可以根据你安装python时指定的目录

3. 运行命令行窗口，CD到C:\\Python27\\Scripts， 在该目录下执行命令 easy_install pip

4. 在命令行窗口运行pip install robotframework-bjrobot

5. 在想要创建自动化测试项目的盘符下执行命
   令行git clone https://github.com/overfly83/automation_demo.git AUTOMATION
   
6. 在目录AUTOMATION下可以通过RIDE打开robot脚本创建关键字和测试用例。



RIDE的安装
------------

1. 安装wxpython， 对于版本 python2.7.13需要安装链接http://sourceforge.net/projects/wxpython/files/wxPython/2.8.12.1/

2. 在命令行窗口运行pip install robotframework-ride

3. 在命令行窗口运行ride.py打开RIDE，在RIDE中打开目录AUTOMATION，开始项目实施。
