@echo off

set "step="
set "step=%step% install/user"
set "step=%step% install/update"
set "step=%step% install/locale"

set "step=%step% install/curl"
set "step=%step% install/wget"
set "step=%step% install/docker"
set "step=%step% install/vscode-server"
set "step=%step% install/vscode-extension"

set "step=%step% install/cache-curl"
set "step=%step% install/less"
set "step=%step% install/man"
set "step=%step% install/neovim"
set "step=%step% install/remove"
set "step=%step% install/vim"
