

# Will return non-zero status if the current directory is not managed by git
function is_in_git_repo() {
  git rev-parse HEAD > /dev/null 2>&1
}

function gt() {
  # "Nothing to see here, move along"
  is_in_git_repo || return

  # Pass the list of the tags to fzf-tmux
  # - "{}" in preview option is the placeholder for the highlighted entry
  # - Preview window can display ANSI colors, so we enable --color=always
  # - We can terminate `git show` once we have $LINES lines
  git tag --sort -version:refname |
    fzf-tmux --multi --preview-window right:70% \
             --preview 'git show --color=always {} | head -'$LINES
}

############

# Then we bind it to a key.

# To clean
# bindkey -M '"\er": redraw-current-line'
# Script for declaring justification for commit unknown

############
# Pushes it to Github repo
# Script accepts argument for added text
function 4q20bq_pushing_github_random_commit() {
    local memorandum
    memorandum="$*"
    git add .
    git commit -m "Random commit. $memorandum"
    git push -u origin master
    tig
}

# TODO Ascertain what this is about
# $HOME/60o_Flow_Qiuy/20_Content/nq_transferring/jqj_repos/oq_zsh
