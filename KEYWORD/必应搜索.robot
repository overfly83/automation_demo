*** Keywords ***
打开必应搜索
    [Arguments]    ${browser}    ${alias}
    open browser    http://www.bing.com    ${browser}    \    ${alias}

根据XPATH判断搜索结果
    [Arguments]    ${xpath}
    find element by xpath    ${xpath}

必应搜索
    [Arguments]    ${value}
    set value by id    sb_form_q    ${value}
    click element by id    sb_form_go
