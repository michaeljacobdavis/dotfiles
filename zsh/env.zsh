# Fix Node Version Manger
source ~/.nvm/nvm.sh

# Disable zsh autocorrect
unsetopt correct_all

# Java Env
eval "$(jenv init -)"

# Todo
export TODO_DB_PATH=~/Dropbox/Apps/Todo/todo.json
export TODO_FORMAT=simple

# Personal bin
export PATH=$HOME/bin:$PATH

# Source from current dir node_modules
export PATH="./node_modules/.bin:$PATH"

