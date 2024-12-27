#!/bin/bash
uninstall_for_fcitx() {
    rm -f ~/.config/fcitx/table/better-wubi.{conf,mb,png}

    dbus-send --type=method_call --dest=org.fcitx.Fcitx /inputmethod org.fcitx.Fcitx.InputMethod.Restart
}
uninstall_for_fcitx5() {
    rm -f ~/.local/share/fcitx5/inputmethod/better-wubi.{conf,main.dict,png}

    dbus-send --type=method_call --dest=org.fcitx.Fcitx5 /controller org.fcitx.Fcitx.Controller1.Restart
}
if command -v fcitx &>/dev/null; then
    uninstall_for_fcitx
elif command -v fcitx5 &>/dev/null; then
    uninstall_for_fcitx5
else
    echo 'fcitx or fcitx5 not installed'
    exit 1
fi
