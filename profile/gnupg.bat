@echo off

set "step="
set "step=%step% install/user"
set "step=%step% install/update"
set "step=%step% install/locale"

set "step=%step% install/curl"
set "step=%step% install/cache-curl"
set "step=%step% install/git"
set "step=%step% install/gnupg"
set "step=%step% install/less"
set "step=%step% install/man"
set "step=%step% install/micromamba"
set "step=%step% install/openssh-client"
set "step=%step% install/python"
set "step=%step% install/remove"
set "step=%step% install/vim"
set "step=%step% install/xz"
