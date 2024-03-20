# essential
alias s='sudo'
alias se='sudo -E'
alias x='chmod +x'
alias aa='paru'
alias gg='gitui'
alias cb="xsel --input --clipboard"
# alias cb="xclip -selection clipboard"
alias neo="neofetch"

alias jctl="journalctl -p 3 -xb --no-pager"
alias jctl-boot='journalctl -p 3 -b --no-pager'
alias mimetype='xdg-mime query filetype'

# listings
alias lspath="echo $PATH | tr ':' '\n'"
alias lsdu='du -h -a --max-depth=0 -- * | sort -rh'
alias lsusers="cat /etc/passwd | cut -d : -f 1"
alias lskernelparams="cat /proc/cmdline | tr ' ' '\n'"
alias lsenv="env | sort"
alias lsfont='fc-list : family | sort | fzf'
alias lslib32="aa -Qsq | grep lib32 | fzf | xargs pacman -Qi"
alias lspcifzf="lspci | fzf --preview-window='top:50%:nowrap' --preview=\"echo {} | grep -o '[0-9a-zA-Z][0-9a-zA-Z]:[0-9a-zA-Z][0-9a-zA-Z]\.[0-9a-zA-Z]' | xargs -I[] lspci -k -s [] | grep -z --color=always -e '[0-9a-zA-Z][0-9a-zA-Z]:[0-9a-zA-Z][0-9a-zA-Z]\.[0-9a-zA-Z]'\""

alias lsxdisplay="xdpyinfo | grep -e 'dimensions' -e 'resolution'"
alias lsxprop="xprop -notype | grep -e '^WM' -e '^_NET' -e '^_GTK' | sort"


# online
alias tb="nc termbin.com 9999"
alias weather="curl wttr.in"
alias utf8-demo='curl https://www.cl.cam.ac.uk/~mgk25/ucs/examples/UTF-8-demo.txt'


# misc
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias stealegram="cd ~/desk/stealegram/ && ./stealegram"
alias create-android-debugstore='keytool -keyalg RSA -genkeypair -alias androiddebugkey -keypass android -keystore debug.keystore -storepass android -dname "CN=Android Debug,O=Android,C=US" -validity 9999 -deststoretype pkcs12'
# alias win="bottles-cli run -b main -e"


# live aliases
alias live-ssh-agent-keys='watch ssh-add -l'
alias live-tree='watch -c tree -C'

# info
alias winid="wmctrl -l | awk '/./{line=\$0} END{print \$1;}'"
alias pactl-running-src="pactl list short sources | grep 'RUNNING' | cut -f 2"
alias pactl-running-sink="pactl list short sinks | grep 'RUNNING' | cut -f 2"

alias xkeys="xev -rv | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", \$5, \$8 }'"
# alias xkeys="xev -id (wmctrl -l | awk '/./{line=\$0} END{print \$1;}') | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", \$5, \$8 }'"

# alias kssh='kitty +kitten ssh'

# e aliases
# alias nvimp="e nvimp -q"
# alias notes="e notes -q"
# alias bins="e bin -q"
# alias wines="e wines -q"

# alias nvimc="e nvimc -o 'devour neovide' -q"
# alias gd="e godot -o 'nvimgd init'"
# alias gdnvim="e godot -o 'nvimgd init_nvim'"
# alias gdgodot="e godot -o 'godot -e'"
# alias gdgodot="e godot -o 'devour godot -e'"
# alias gdplay="e godot -o godot"
# alias gitc="$EDITOR $XDG_CONFIG_HOME/git/config"
alias profc="$EDITOR ~/.profile"
alias xprofc="$EDITOR ~/.xprofile"

alias nvims='nvim -c "SessionLoad"'
alias senvims='sudo -E nvim -c "SessionLoad"'

alias nvimc="cd $XDG_CONFIG_HOME/nvim && nvims"
alias sshc="cd $HOME/.ssh && nvims"
alias gitc="cd $XDG_CONFIG_HOME/git && nvims"
alias fishc="cd $XDG_CONFIG_HOME/fish && nvims"
alias x11c="cd $XDG_CONFIG_HOME/x11/ && nvims"
alias hlwmc="cd $XDG_CONFIG_HOME/herbstluftwm/ && nvims"
alias tmuxc="cd $XDG_CONFIG_HOME/tmux/ && nvims"
alias bins="cd ~/.local/bin && nvims"
alias notes="cd ~/files/docs/notes && nvims"

# alias gtk_inspect='GTK_DEBUG=interactive '

# improved aliases
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias fdisk='fdisk --color=auto'
alias free='free -h'
alias tree='tree -C'
alias du='du -h'
alias less="$LESSPAGER"
alias echo='echo -n'
alias rg='rg --hidden'
alias lsblk="lsblk -o NAME,FSTYPE,FSSIZE,FSAVAIL,FSUSE%,MOUNTPOINT,LABEL"
# alias cp='cp -i'
# alias mv='mv -i'
# alias rm='rm -i'

# XDG base dir compliance aliases
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
alias irssi="irssi --config=$XDG_CONFIG_HOME/irssi/config --home=$XDG_DATA_HOME/irssi"
# alias yarn="yarn --use-yarnrc '$XDG_CONFIG_HOME/yarn/config'"

# finds
alias find-node-modules="find . -name 'node_modules' -type d -prune -print | xargs du -chs"
alias find-and-clean-node-modules="find . -name 'node_modules' -type d -prune -print -exec gio trash '{}' \;"
# alias pkgfile-update='sudo pkgfile -u'

# pacman
# alias pac-info='paru -Qsq | fzf | xargs paru -Qi'
# alias pac-files='paru -Qsq | fzf | xargs paru -Ql'
# alias pac-pkgbuild='paru -Qsq | fzf | xargs paru -Gp'
alias pac-clean='sudo pacman -Rns (pacman -Qtdq)'
alias pac-sort-mirrors="curl -s 'https://archlinux.org/mirrorlist/?country=TR&country=DE&use_mirror_status=on' | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -v -n 8 - > /etc/pacman.d/mirrorlist"
# cat m | rankmirrors -v -p -r "community" -
alias pac-diff='DIFFPROG="nvim -d $1" sudo -E pacdiff'
alias pac-unlock='sudo rm /var/lib/pacman/db.lck'

# launchers
alias get-audio='yt-dlp --extract-audio -f bestaudio'
alias get-video='yt-dlp -f bestvideo+bestaudio'
# alias get-video='youtube-dl -f best '
# alias screen_key='screenkey -s small -p fixed -g 500x80+1420+1000 --opacity .5 --font Terminus --no-systray -t 0.5'
# alias nv='devour neovide --multiGrid --disowned'
# alias xe='Xephyr -br -ac -noreset -screen 1900x1000 :2'
# alias xe-run='DISPLAY=:2'
# alias x11vnc='x11vnc -nevershared -xkb -wait 20 -noxdamage -forever -noxcomposite -rfbauth ~/.config/x11/x11vnc_pass'
# alias x11vnc-set-pass='x11vnc -storepasswd .config/x11/x11vnc_pass'
# alias cava-mpd='cava -p ~/.config/cava/config_mpd'

# python
alias pip-install-req='pip install -r requirements.txt'
# alias pip-make-all-req='pip freeze > requirements.txt'
# alias pip-fzf='pip list - | fzf'
# alias pip-self-update='python -m pip install --upgrade pip'
alias pnpm-update='npm add -g pnpm'
# alias venv='python -m venv'



if test (command -v lsd)
  alias ls='lsd'
else if test (command -v exa)
  alias ls='exa'
end

if test (command -v fd)
  alias find='fd'
end

if test (command -v herbstclient)
  alias hc='herbstclient'
end

# if test (command -v duf)
#   alias df='duf -hide special'
# end
