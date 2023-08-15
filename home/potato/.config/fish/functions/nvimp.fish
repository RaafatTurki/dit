function nvimp
  set query $argv[1]
  set plguins_root ~/.local/share/nvim/lazy
  set plugin_path (ls $plguins_root | fzf -1 -q $query)
  $EDITOR "$plguins_root/$plugin_path"
end
