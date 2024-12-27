#!/bin/bash
install_for_fcitx() {
    local conf_wbx conf dict icon
    if ! command -v txt2mb &>/dev/null; then
        echo 'txt2mb not found'
        exit 1
    fi
    conf_wbx=/usr/share/fcitx/table/wbx.conf
    conf=~/.config/fcitx/table/better-wubi.conf
    dict=~/.config/fcitx/table/better-wubi.mb
    icon=~/.config/fcitx/table/better-wubi.png

    mkdir -p ~/.config/fcitx/table
    txt2mb <(./convert.py fcitx) $dict
    cp ./icon.png $icon
    sed -E -e "s/^(UniqueName=).+\$/\1better-wubi/" -e "s/^(Name.*=).+\$/\1better-wubi/" -e "s!^File=.+\$!File=$dict!" -e "s!^IconName=.+\$!IconName=$icon!" $conf_wbx >$conf

    dbus-send --type=method_call --dest=org.fcitx.Fcitx /inputmethod org.fcitx.Fcitx.InputMethod.Restart
}
install_for_fcitx5() {
    local conf_wbx conf dict icon
    if ! command -v libime_tabledict &>/dev/null; then
        echo 'libime_tabledict not found'
        exit 1
    fi
    conf_wbx=/usr/share/fcitx5/inputmethod/wbx.conf
    conf=~/.local/share/fcitx5/inputmethod/better-wubi.conf
    dict=~/.local/share/fcitx5/inputmethod/better-wubi.main.dict
    icon=~/.local/share/fcitx5/inputmethod/better-wubi.png

    mkdir -p ~/.local/share/fcitx5/inputmethod
    libime_tabledict <(./convert.py fcitx) $dict
    cp ./icon.png $icon
    sed -E -e "s/^(Name.*=).+\$/\1better-wubi/" -e "s!^File=.+\$!File=$dict!" -e "s!^Icon=.+\$!Icon=$icon!" $conf_wbx >$conf

    dbus-send --type=method_call --dest=org.fcitx.Fcitx5 /controller org.fcitx.Fcitx.Controller1.Restart
}
if command -v fcitx &>/dev/null; then
    install_for_fcitx
elif command -v fcitx5 &>/dev/null; then
    install_for_fcitx5
else
    echo 'fcitx or fcitx5 not installed'
    exit 1
fi
