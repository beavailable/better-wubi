#!/bin/bash
uninstall_for_fcitx() {
    rm -f /usr/share/fcitx/table/better-wubi.mb /usr/share/fcitx/table/better-wubi.conf

    sudo -Eu $SUDO_USER bash <<EOF
dbus-send --type=method_call --dest=org.fcitx.Fcitx /inputmethod org.fcitx.Fcitx.InputMethod.Restart
EOF
}
uninstall_for_fcitx5() {
    rm -f /usr/share/libime/better-wubi.main.dict /usr/share/fcitx5/inputmethod/better-wubi.conf

    sudo -Eu $SUDO_USER bash <<EOF
fcitx5-remote -e && fcitx5-remote -c
EOF
}
if [ $EUID != 0 ]; then
    echo 'please run it with root permissions'
    exit 1
fi
if which fcitx &>/dev/null; then
    uninstall_for_fcitx
elif which fcitx5 &>/dev/null; then
    uninstall_for_fcitx5
else
    echo 'fcitx or fcitx5 not installed'
    exit 1
fi
