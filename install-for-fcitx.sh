#!/bin/bash
if [ $EUID != 0 ]; then
    echo 'please run it with root permissions'
    exit 1
fi
if ! which txt2mb &>/dev/null; then
    echo 'txt2mb not found'
    exit 1
fi
dict=better-wubi.mb
conf_wbx=/usr/share/fcitx/table/wbx.conf
conf=/usr/share/fcitx/table/better-wubi.conf

txt2mb <(./convert.py fcitx) /usr/share/fcitx/table/$dict

pattern="s/^(UniqueName=).+\$/\1better-wubi/;s/^(Name.*=).+\$/\1better-wubi/;s?^File=.+\$?File=$dict?"
sed -E "$pattern" $conf_wbx >$conf

sudo -Eu $SUDO_USER bash <<EOF
qdbus org.fcitx.Fcitx /inputmethod Restart >/dev/null
EOF
