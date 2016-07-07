# Makes git auto completion faster favouring for local completions
__git_files () {
    _wanted files expl 'local files' _files
}

# Remove all merged branches
alias git-clean="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"
