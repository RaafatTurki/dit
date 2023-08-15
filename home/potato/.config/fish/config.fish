# avim: syntax=sh

if status is-interactive

  # General
  set fish_greeting
  # starship init fish | source
  # zoxide init fish | source
  # set python_auto_venv

  # fish_vi_key_bindings
  # fish_default_key_bindings

  source ~/.config/fish/aliases.fish

  # pip fish completion start
  # function __fish_complete_pip
  #   set -lx COMP_WORDS (commandline -o) ""
  #   set -lx COMP_CWORD ( \
  #   math (contains -i -- (commandline -t) $COMP_WORDS)-1 \
  #   )
  #   set -lx PIP_AUTO_COMPLETE 1
  #   string split \  -- (eval $COMP_WORDS[1])
  # end
  # complete -fa "(__fish_complete_pip)" -c pip
  # pip fish completion end

  # SESSIONS_PATH=$(nvim --headless -c 'lua print(Sessions.sessions_path) vim.cmd.quit()')
  # echo $SESSIONS_PATH

  # function __fish_complete_nvims
  # end

  # nvim sessions completion
  # find "$HOME/sectors" -name '.venom.json' -type f -exec dirname "{}" \;
  # complete -f -c nvims -a (find "$HOME/sectors" -name '.venom.json' -type f -exec dirname "{}" \; | xargs)
  # complete -f -c nvims -a (find $nvim_sessions_dir -printf '%P\n' | xargs)
  # complete -f -c cds -a (find $nvim_sessions_dir -printf '%P\n' | xargs)

  alias nvimc='nvims ~/.config/nvim'
  alias fishc='nvims ~/.config/fish'
  alias x11c='nvims ~/.config/x11/'
  alias hlwmc='nvims ~/.config/herbstluftwm/'
  alias bins='nvims ~/.local/bin'
  alias notes='nvims ~/files/docs/notes'
  
  # completions that shouldn't be here
  # complete -f -c win -a (find . -name *.exe -type f -printf '%P\n')
  
  # if test (command -v step-cli)
  #   step-cli completion fish
  # end

  complete -c sshot -f
  complete -c sshot -a 'clip' -d 'Take a screenshot and save it into clipboard'
  complete -c sshot -a 'save' -d 'Take a screenshot and save into ~/Pictures/screenshots'
  complete -c sshot -a 'decode' -d 'Take a screenshot and save its decoded content into clipboard (qrcodes and barcodes)'
  complete -c sshot -a 'help' -d 'Print a short help text and exit'
end

# pnpm
set -gx PNPM_HOME "/home/potato/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
