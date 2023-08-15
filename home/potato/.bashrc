black="\[\033[0;30m\]"
red="\[\033[0;31m\]"
green="\[\033[0;32m\]"
yellow="\[\033[0;33m\]"
blue="\[\033[0;34m\]"
magenta="\[\033[0;35m\]"
cyan="\[\033[0;36m\]"
white="\[\033[0;37m\]"

brblack="\[\033[1;30m\]"
brred="\[\033[1;31m\]"
brgreen="\[\033[1;32m\]"
bryellow="\[\033[1;33m\]"
brblue="\[\033[1;34m\]"
brmagenta="\[\033[1;35m\]"
brcyan="\[\033[1;36m\]"
brwhite="\[\033[1;37m\]"
rc="\[\033[0m\]"

function git_branch() {
  local branch_name="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
  if [ -n "$branch_name" ]; then
    # Check if the repository is dirty
    if [ -n "$(git status --porcelain)" ]; then
      echo "$branch_name$red.$rc"
    else
      echo "$branch_name$green.$rc"
    fi
  fi
}

function get_exit_code() {
  local exit_code=$?
  if [ $exit_code -ne 0 ]; then
    echo "$exit_code$red.$rc"
  fi
}

function ssh_hostname() {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo "$bryellow\h$rc:"
  fi
}

export PS1="$blue$(ssh_hostname)\w $(git_branch)$(get_exit_code)$rc "

alias ls="ls --color=auto"
