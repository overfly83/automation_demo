*** Keywords ***
打开百度搜索
    [Arguments]    ${browser}    ${alias}
    open browser    http://www.baidu.com    ${browser}    \    ${alias}

最大化浏览器
    maximize browser window

百度搜索
    [Arguments]    ${value}=testvalue
    set value by id    kw    ${value}
    click element by id    su

检查浏览器抬头
    [Arguments]    ${title}
    title should contain    ${title}

设置浏览器大小
    [Arguments]    ${length}    ${width}
    set window size    ${length}    ${width}

根据搜索链接验证搜索结果
    [Arguments]    ${partiallinktext}
    find element by partial link text    ${partiallinktext}

关闭浏览器
    close browser

切换浏览器
    [Arguments]    ${alias}
    switch browser    ${alias}
