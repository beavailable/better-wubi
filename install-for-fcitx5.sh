#!/bin/bash
gen_formatted_dict() {
    cat - better-wubi.dict <<EOF
;fcitx 版本 0x03 码表文件
键码=abcdefghijklmnopqrstuvwxy
码长=4
拼音=@
拼音长度=4
[组词规则]
e2=p11+p12+p21+p22
e3=p11+p21+p31+p32
a4=p11+p21+p31+n11
[数据]
EOF
}

if [ $EUID != 0 ]; then
    echo 'please run it with root'
    exit 1
fi
if ! which libime_tabledict &>/dev/null; then
    echo 'libime_tabledict not found'
    exit 1
fi
dict=/usr/share/libime/better-wubi.main.dict
conf_wbx=/usr/share/fcitx5/inputmethod/wbx.conf
conf=/usr/share/fcitx5/inputmethod/better-wubi.conf

libime_tabledict <(gen_formatted_dict) $dict

pattern="s/^Name\[zh_CN]=五笔字型\$/Name[zh_CN]=better-wubi/;s?^File=.+\$?File=$dict?"
sed -E "$pattern" $conf_wbx >$conf

sudo -Eu $SUDO_USER bash <<EOF
fcitx5-remote -e && fcitx5-remote -c
EOF
