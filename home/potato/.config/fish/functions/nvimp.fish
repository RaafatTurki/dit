function nvimp
  set query $argv[1]
  set plguins_root ~/.local/share/nvim/lazy
  set plugin_path (ls $plguins_root | fzf -1 -q $query)
  cd "$plguins_root/$plugin_path"
  # $EDITOR "$plguins_root/$plugin_path"
  $EDITOR
end
