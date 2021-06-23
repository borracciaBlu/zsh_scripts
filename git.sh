alias git-dev-pull="git co develop && git pull"
alias git-mast-pull="git co master && git pull"
alias git-main-pull="git co main && git pull"

function getLastFilesChanged {
    LAST_HASH=$(git log --oneline | awk '{print $1}' | head -n 1)
    git diff-tree --no-commit-id --name-only -r $LAST_HASH;
}

alias git-last-files-changed="getLastFilesChanged"
