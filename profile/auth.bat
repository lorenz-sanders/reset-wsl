@echo off

set "step="
set "step=%step% install/user"
set "step=%step% install/gnupg"
set "step=%step% install/patch"
set "step=%step% install/config"

set "step=%step% install/update"
set "step=%step% install/locale"

set "step=%step% install/wget"
set "step=%step% install/vscode-server"

set "step=%step% install/git"
set "step=%step% install/less"
set "step=%step% install/man"
set "step=%step% install/oathtool"
set "step=%step% install/remove"
set "step=%step% install/vim"
