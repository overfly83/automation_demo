*** Settings ***
Test Teardown     close all browsers
Library           BJRobot    screenshot_root_directory=screenshot

*** Test Cases ***
Search Testing2
    open browser    http://www.baidu.com    chrome    alias=aa
    maximize browser window
    title should contain    百度一下
    set value by id    kw    test
    click element by id    su
    open browser    http://www.bing.com    ie    alias=bb
    title should contain    全球搜索
    maximize browser window
    switch browser    aa
    set window size    1024    768
    find element by partial link text    JavaScript
    close browser
    switch browser    bb
    set value by id    sb_form_q    msa cdc test
    click element by id    sb_form_go
    find element by xpath    //li[@class='b_algo' and @data-bm='6']
    close browser

Search Testing failed2
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
