# Fix Node Version Manger
source ~/.nvm/nvm.sh

# Disable zsh autocorrect
unsetopt correct_all

# Java Env
eval "$(jenv init -)"

# rbenv
eval "$(rbenv init -)"

# Todo
export TODO_DB_PATH=~/Dropbox/Apps/Todo/todo.json
export TODO_FORMAT=simple

# Personal bin
export PATH=$HOME/bin:$PATH

# Android Emulator
export ANDROID_HOME=/usr/local/opt/android-sdk

# Source from current dir node_modules
export PATH="./node_modules/.bin:$PATH"

# Postgres Bindings
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
