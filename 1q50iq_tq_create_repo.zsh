# Simple repo creation and committing tool
function 1q50iq_create_repo_add_all() {
    local memorandum
    memorandum="$*"
    git init
    git add .
    git commit -m "Starting repo. $memorandum"
    pwd
    tree -C
    k
}
