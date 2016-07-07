# Makes git auto completion faster favouring for local completions
__git_files () {
    _wanted files expl 'local files' _files
}

# Remove all merged branches
alias git-clean="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"

# Removes all branches other than master
alias git-clean-slate="git branch | grep -v 'master' | xargs git branch -D"
