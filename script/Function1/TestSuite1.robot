*** Settings ***
Test Teardown     close all browsers
Library           BJRobot    screenshot_root_directory=screenshot    #
Resource          ../../KEYWORD/百度搜索.robot
Resource          ../../KEYWORD/必应搜索.robot

*** Test Cases ***
Search Testing
    open browser    http://www.baidu.com    chrome    \    aa
    maximize browser window
    title should contain    百度一下
    set value by id    kw    test
    click element by id    su
    open browser    http://www.bing.com    ie    \    bb
    title should contain    全球搜索
    maximize browser window
    switch browser    aa
    set window size    1024    768
    find element by partial link text    JavaScript
    close browser
    switch browser    bb
    set value by id    sb_form_q    msa cdc test
    click element by id    sb_form_go
    find element by xpath    //li[@class='b_algo' and @data-bm='7']
    close browser

Search Testing failed
    open browser    http://www.baidu.com    chrome    alias=aa
    maximize browser window
    title should contain    百度一下
    set value by id    kw    test
    click element by id    su
    open browser    http://www.bing.com    ie    alias=bb
    maximize browser window
    title should contain    全球搜索
    switch browser    aa
    find element by partial link text    JavaScript
    switch browser    bb
    set value by id    sb_form_q    msa cdc test
    click element by id    sb_form_go
    find element by xpath    //li[@class='b_algo' and @data-bm='61']
    close browser

user keyword usage
    打开百度搜索    ie    aa
    最大化浏览器
    检查浏览器抬头    百度一下
    百度搜索    test
    根据搜索链接验证搜索结果    JavaScript
    设置浏览器大小    1024    768
    打开必应搜索    chrome    bb
    最大化浏览器
    检查浏览器抬头    全球搜索
    切换浏览器    aa
    设置浏览器大小    1024    768
    最大化浏览器
    根据搜索链接验证搜索结果    JavaScript
    切换浏览器    bb
    必应搜索    msa cdc test
    根据XPATH判断搜索结果    //li[@class='b_algo' and @data-bm='7']
