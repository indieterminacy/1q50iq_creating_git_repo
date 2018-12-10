#!/usr/bin/zsh

# Simple repo creation and committing tool
function 1q50iq_create_repo_add_all() {
    local twt
    # TODO Provide terminal input should the message parameter be empty
    twt="$*"
    # TODO Add validation that git exists
    git init
    git add .
    git commit -m "Starting repo: $twt"

    pwd
    tree -C
    # TODO Add validation that k exists
    k
    # TODO Add prompt for pushing to repository
}
