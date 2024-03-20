#!/usr/bin/env bash

# function appendpath
#     set PATH $PATH:$1
# end

# appendpath $HOME/bin

# execute .bashrc if it exists
# [[ -f ~/.bashrc ]] && . ~/.bashrc


# prompt
PS1='\u \w | '
# eval "$(starship init bash)"

# finds binaries in $PATH
bin_path() {
  command -v "$1"
}

append_path() {
  export PATH=$PATH:$1
}

prepend_path() {
  export PATH=$1:$PATH
}

append_manpath() {
  export MANPATH=$MANPATH:$1
}

append_infopath() {
  export INFOPATH=$INFOPATH:$1
}

export VK_DRIVER_FILES=/usr/share/vulkan/icd.d/nvidia_icd.json

# fail safes
export USER=${USER:-$(whoami)}
export HOME=${HOME:-"/home/$USER"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-"$HOME/.config"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-"$HOME/.cache"}
export XDG_DATA_HOME=${XDG_DATA_HOME:-"$HOME/.local/share"}
export XDG_STATE_HOME=${XDG_STATE_HOME:-"$HOME/.local/state/"}
append_path "$HOME/.local/bin"
# prepend_path $HOME/.local/bin_drop_ins/
# prepend_path $HOME/.local/bin/
append_path "$HOME/.local/share/cargo/bin/"
append_path "$HOME/.local/share/go/bin/"
append_path "$HOME/.luarocks/bin/"
append_path "$XDG_CONFIG_HOME/luarocks/bin/"
append_path "$XDG_CONFIG_HOME/composer/vendor/bin/"
# more xdg support
export XDG_DATA_DIRS=/usr/local/share:/usr/share
# export XDG_DATA_DIRS=/usr/local/share:/usr/share:~/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share

# android
export ANDROID_HOME="$HOME/.android/android-sdk"
export ANDROID_SDK_ROOT="$HOME/.android/android-sdk"
export ANDROID_NDK="$HOME/.android/android-ndk"

append_path "$ANDROID_SDK_ROOT/emulator"
append_path "$ANDROID_SDK_ROOT/platform-tools"
# append_path "$ANDROID_SDK_ROOT/cmdline-tools/latest/bin"

#latex
export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texlive/texmf-config"

TEXLIVE="$XDG_DATA_HOME/texlive/2023/"
append_path "$TEXLIVE/bin/x86_64-linux"
append_manpath "$TEXLIVE/texmf-dist/doc/man"
append_infopath "$TEXLIVE/texmf-dist/doc/info"


# env
export SHELL=$(bin_path bash)
# export TERM="xterm-256color"
# export TERM="xst-256color"
export AUR_HELPER=$(bin_path paru)
# export TERM_SHELL=$(bin_path fish)
export EDITOR=$(bin_path nvim)
export SYSTEMD_EDITOR=$(bin_path nvim)
export VISUAL=$EDITOR
export LESSPAGER="$(bin_path less) -R -S -X -e"
# export PAGER=$(bin_path nvim)
export PAGER="$LESSPAGER"
export MANPAGER="$(bin_path nvim) +Man!"
export PARU_PAGER="$(bin_path nvim) +Man!"
# export GIT_PAGER="$(bin_path nvim) +AnsiEsc"
# export GIT_PAGER=$(bin_path less)
# export GIT_PAGER=$(bin_path less -r)
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
# export USERSHARES_DIR="/var/lib/samba/usershares"
# export USERSHARES_GROUP="sambashare"

export TERMINAL="env SHELL=fish $(bin_path st)"
# export TERMINAL=$(bin_path kitty)
export FM=$(bin_path thunar)
export READER=$(bin_path zathura)
export BROWSER=$(bin_path firefox)
# export LAUNCHER="$(bin_path rofi) -show drun"
# export LAUNCHER="$(bin_path jgmenu_run)"
# export AUDIO_MIXER=$(bin_path pavucontrol)
# export AUDIO_PLAYER=$(bin_path pragha)
# export MUSIC_CLIENT="$TERMINAL -e $(bin_path ncmpcpp)"
# export MUSIC_SERVER=$(bin_path mpd)
export SCREENSHOT=$(bin_path cshot)
# export SXHKD_SHELL=$SHELL
export COLOR_PICKER=$(bin_path color-picker)
# export SYSMON=$(bin_path btop)

# theming
export XCURSOR_THEME=Breeze_Snow
# export GTK_THEME=Adwaita:dark
# export QT_STYLE_OVERRIDE=adwaita-dark

# telegram
# export QT_QPA_PLATFORMTHEME=gtk3
export QT_QPA_PLATFORMTHEME=qt5ct
# export QT_QPA_PLATFORMTHEME=qt6ct
# export QT_QPA_PLATFORMTHEME=gtk2
# export TDESKTOP_I_KNOW_ABOUT_GTK_INCOMPATIBILITY=1
# export TDESKTOP_DISABLE_DESKTOP_FILE_GENERATION=1

# c#
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# java
export _JAVA_AWT_WM_NONREPARENTING=1

# lua
export LUA_PATH='/usr/share/lua/5.4/?.lua;/usr/share/lua/5.4/?/init.lua;/usr/lib/lua/5.4/?.lua;/usr/lib/lua/5.4/?/init.lua;./?.lua;./?/init.lua;/home/potato/.luarocks/share/lua/5.4/?.lua;/home/potato/.luarocks/share/lua/5.4/?/init.lua'
export LUA_CPATH='/usr/lib/lua/5.4/?.so;/usr/lib/lua/5.4/loadall.so;./?.so;/home/potato/.luarocks/lib/lua/5.4/?.so'

# unclutter home
export HISTFILE="$XDG_DATA_HOME/bash_history"
export LESSHISTFILE="$XDG_DATA_HOME/lesshst"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export GTK_RC_FILES=$XDG_CONFIG_HOME/gtk-1.0/gtkrc
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export STARSHIP_CACHE=$XDG_CACHE_HOME/starship
export PARALLEL_HOME=$XDG_CONFIG_HOME/parallel
export XINITRC=$XDG_CONFIG_HOME/x11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/x11/xserverrc
export ICEAUTHORITY=$XDG_CACHE_HOME/ICEauthority
# export GNUPGHOME=$XDG_CONFIG_HOME/gnupg
export CUDA_CACHE_PATH=$XDG_CACHE_HOME/nv

export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export npm_config_prefix=$HOME/.local
export NODE_REPL_HISTORY=$XDG_CACHE_HOME/node_repl_history
export NPM_HOME=$XDG_DATA_HOME/npm
export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export CARGO_HOME=$XDG_DATA_HOME/cargo
export GOPATH=$XDG_DATA_HOME/go
export PYTHONSTARTUP=$XDG_CONFIG_HOME/python/pythonrc
export GRADLE_USER_HOME=$XDG_DATA_HOME/gradle
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export OMNISHARPHOME="$XDG_CONFIG_HOME"/omnisharp
export W3M_DIR="$XDG_DATA_HOME"/w3m
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME"/ripgrep/ripgreprc
# export RUST_SRC_PATH=$RUSTUP_HOME/toolchains/nightly-$(uname -m)-unknown-linux-gnu/lib/rustlib/src/rust/src


# activate gtk3 no csd if available
GTK3_NO_CSD_SO=/usr/lib/libgtk3-nocsd.so.0
if [ -e $GTK3_NO_CSD_SO ]; then
  export GTK_CSD=0
  export LD_PRELOAD=$GTK3_NO_CSD_SO
fi

# eliminate the staircase effect
stty onlcr

# Autostart tbsm on tty 1
# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
# if [ "${XDG_VTNR}" -eq 1 ]; then
#   # no exec because we want to keep the tty console alive
#   xinit
# else
#   # setfont /usr/share/kbd/consolefonts/ter-v18n.psf.gz
#   clear
#   exec fish -C 'logo'
# fi
