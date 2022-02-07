#!/bin/bash
uninstall_for_fcitx() {
    rm -f ~/.config/fcitx/table/better-wubi.conf ~/.config/fcitx/table/better-wubi.mb

    dbus-send --type=method_call --dest=org.fcitx.Fcitx /inputmethod org.fcitx.Fcitx.InputMethod.Restart
}
uninstall_for_fcitx5() {
    rm -f ~/.local/share/fcitx5/inputmethod/better-wubi.conf ~/.local/share/fcitx5/inputmethod/better-wubi.main.dict

    fcitx5-remote -e && fcitx5-remote -c
}
if which fcitx &>/dev/null; then
    uninstall_for_fcitx
elif which fcitx5 &>/dev/null; then
    uninstall_for_fcitx5
else
    echo 'fcitx or fcitx5 not installed'
    exit 1
fi
