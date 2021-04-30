#!/bin/bash
install_for_fcitx() {
    local dict conf_wbx conf pattern
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
}
install_for_fcitx5() {
    local dict conf_wbx conf pattern
    if ! which libime_tabledict &>/dev/null; then
        echo 'libime_tabledict not found'
        exit 1
    fi
    dict=/usr/share/libime/better-wubi.main.dict
    conf_wbx=/usr/share/fcitx5/inputmethod/wbx.conf
    conf=/usr/share/fcitx5/inputmethod/better-wubi.conf

    libime_tabledict <(./convert.py fcitx) $dict

    pattern="s/^(Name.*=).+\$/\1better-wubi/;s?^File=.+\$?File=$dict?"
    sed -E "$pattern" $conf_wbx >$conf

    sudo -Eu $SUDO_USER bash <<EOF
fcitx5-remote -e && fcitx5-remote -c
EOF
}
if [ $EUID != 0 ]; then
    echo 'please run it with root permissions'
    exit 1
fi
if which fcitx &>/dev/null; then
    install_for_fcitx
elif which fcitx5 &>/dev/null; then
    install_for_fcitx5
else
    echo 'fcitx or fcitx5 not installed'
    exit 1
fi
