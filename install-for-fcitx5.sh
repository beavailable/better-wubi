#!/bin/bash
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

libime_tabledict <(./convert.py fcitx5) $dict

pattern="s/^Name\[zh_CN]=五笔字型\$/Name[zh_CN]=better-wubi/;s?^File=.+\$?File=$dict?"
sed -E "$pattern" $conf_wbx >$conf

sudo -Eu $SUDO_USER bash <<EOF
fcitx5-remote -e && fcitx5-remote -c
EOF
