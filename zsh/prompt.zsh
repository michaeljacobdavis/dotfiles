#Load themes from custom prompts (themes) in ~/.zsh.prompts
autoload promptinit
fpath=($HOME/dotfiles/zsh/prezto-themes $fpath)
promptinit

#Select the prompt
prompt node
