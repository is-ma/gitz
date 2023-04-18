export VISUAL=vim  # use VIM instead of nano as a default editor

# Original list: https://gist.github.com/gwing33/1650826
##########################################################
################# G I T    A L I A S E S #################
##########################################################


########## basic commands ##########
alias gs='git status -s'                  # Show untracked files and differences between HEAD & WD, WD & INDEX.
alias sgs='sudo git status -s'
alias ga='git add'                        # Add files to staged area.
alias sga='sudo git add'
alias gaa='git add -A'                    # Add files to staged area (all files).
alias sgaa='sudo git add -A'
alias gc='git commit -m'                  # Commit staged files with a message.
alias sgc='sudo git commit -m'
alias gca='git commit -am'                # Commit all modified, tracked files. With a message.
alias sgca='sudo git commit -am'
alias gaac='git add -A && git commit -m'  # Common combination.
alias sgaac='sudo git add -A && sudo git commit -m'
alias gcd='git commit --amend'            # Add more files to last commit or edit the commited message.
alias sgcd='sudo git commit --amend'
alias gt='git tag'                        # Usage: gt v1.0; gt -d v1.0 (delete tag); tag after commit: gt v1.2 fceb02.
alias sgt='sudo git tag'
alias gap='git add --patch'               # Edit the hunks; delete added lines for later commits. [+ -> delete]
alias sgap='sudo git add --patch'


########## information ##########
alias gl='git log --oneline --graph --decorate --all -n 10'           # Top 10, complete info.
alias gl3='git log --oneline -n 3'                                    # Top 3, simplified.
alias gll='git log --oneline --graph --decorate --all'                # All git log, complete info.
alias gl3s='git log --oneline --graph --decorate --all -n 3 --stat'    # Top 3, with stats.
alias gd='git diff'            # Modifs on tracked files (WD, not staged) above HEAD. Usages: gd; gd <OLD> <NEW>.
alias gds='git diff --staged'  # INDEXED modifs above HEAD (WD not included).
alias gdh='git diff HEAD'      # Modifs [WD+INDEX] above HEAD.
alias gsh='git show'           # (+ID|<none>) Show commit modifications on ID/HEAD.
alias gfh='git log -p'         # (+filename) Outputs the file history patches for each log entry.
alias gg='git grep'            # "search", searches inside your repository; -e se[aeiou]rch, use regexp to search.


########## branches ##########
alias gco='git checkout'                    # Jump to branches or IDs. Add '-b' to create a new branch; (+file) remove changes from WD;
                                            # with -f, throw away local changes (WD & INDEX), like <gxj>.
alias sgco='sudo git checkout'
alias gb='git branch'                       # (opc BranchName) Show local branches; all (-a);
                                            # rename (-m) OLD NEW; delete it (-d, -D) or <god> for remote.
alias sgb='sudo git branch'
alias gm='git merge'                        # (+COMMIT) Merge current branch to COMMIT (fast-forward) or use --no-ff flag.
alias sgm='sudo git merge'
alias god='git push --delete origin'        # (+tagName) Goes to origin and delete tags/branches.
alias sgod='sudo git push --delete origin'
alias grb='git rebase'                      # (+NEW_BASE) Rebase current branch on top of NEW_BASE.
alias sgrb='sudo git rebase'
alias grbo='git rebase --onto'              # (+NEW_BASE +OLD_BASE) Mount current branch on top of NEW_BASE (from OLD_BASE);
					    # you can also use it to remove some commits from the current branch (without «gri»).
alias sgrbo='sudo git rebase --onto'
alias grbc='git rebase --continue'          # Popular rebase option.
alias sgrbc='sudo git rebase --continue'
alias gri='git rebase -i'                   # (+COMMIT/--root) Redesign history interactively from COMMIT.
alias sgri='sudo git rebase -i'
alias gria='git rebase -i --autosquash'     # (+COMMIT/--root) Uses 'squash! msg' or 'fixup! msg' to format <gri>.
alias sgria='sudo git rebase -i --autosquash'
alias gp='git push && git push --tags'      # Pushes commits and tags in one command.
alias sgp='sudo git push && sudo git push --tags'
alias gpf='git push -f && git push --tags'  # Force push to mimic current branch.
alias sgpf='sudo git push -f && sudo git push --tags'
alias gf='git fetch -p'                     # Usage: gf john (-p prune tracking); -a to fetch all; uses "origin" by default.
alias sgf='sudo git fetch -p'
# git push <remote> <branch>                # Push branch to remote.
# git pull                                  # Equivalent of git fetch (get remote data) and git merge (merge to your branch).


########## stash commands ##########
alias gss='git stash save'              # Save uncommited changes (adds an ID message).
alias gsl='git stash list'              # List your stashed stuff.
alias gsp='git stash pop'               # Takes (and delete) the top of the list stash.


########## config ##########
# git config --global --edit            # Stores configuration in ~/.gitconfig
# git config --local --edit             # (default) Stores configuration in .git/config
# git config --local user.name "Example"
# git config --local user.email "user@example.org"
# git config --local --list             # Shows the .git/config configuration
# git config --global --list            # Shows the ~/.gitconfig configuration


########## undoing things ##########
alias gcn='git clean -n'                         # Removes custom/all untracked files (-n for dry-run).
alias sgcn='sudo git clean -n'
alias gcf='git clean -f'                         # Removes custom/all untracked files (-f to force).
alias sgcf='sudo git clean -f'
alias gr='git reset'                             # (+stagedFile, empty) Unstage stagedFile or all files (--mixed by default).
alias sgr='sudo git reset'
alias grp='git reset --patch'                    # Edit the hunks; make up added lines for the next commit. [+ -> ' ']
alias sgrp='sudo git reset --patch'
alias gxj='git reset --hard'                     # (+ID, empty) Jumps to ID or removes modified files in WD & INDEX.
alias sgxj='sudo git reset --hard'
alias gxb='git reset HEAD^ --soft'               # Go back 1 commit, keeps modifications in INDEX.
alias sgxb='sudo git reset HEAD^ --soft'
alias gob='git push origin +origin/HEAD^:master' # Go back 1 commit in origin/master.
alias sgob='sudo git push origin +origin/HEAD^:master'
alias grv='git revert'                           # (+ID ID2 ID3) Creates a new commit reverting IDs (or HEAD).
alias sgrv='sudo git revert'
alias grl='git rev-list -n 1 HEAD --'            # (+FILE_PATH) Get the ID of the deleted commit; then «gco ID^».
alias sgrl='sudo git rev-list -n 1 HEAD --'
# git checkout [--] (.|file)                     # Un-do file changes in WD (use -- when it doesn't work, paths for example),
                                                 # or use '.' to undo all WD (same as git checkout -f or git reset --hard).


########## final references ##########
# git init            # Initialize repository. Add --bare for "storage facility" without a working dir.
# git remote          # Use it alone or with [add, rm] +repo; -v for details.
# git rm              # Untrack files; "git rm --cached" can unstage untracked-files.
# git mv              # Rename tracked-files.
# git reflog          # Revive lost snapshots.
# git archive         # Removes the .git dir; it gives you a simple snapshot to share/backup,
                      # ex: git archive master --format=zip --output=../website-20170130.zip


########## reference: Insert a commit before the root commit in Git ##########
########## https://stackoverflow.com/a/647451 ##########
## first you need a new empty branch; let's call it `newroot`
# git checkout --orphan newroot
# git rm -rf .

## then you apply the same steps
# git commit --allow-empty -m 'root commit'
# git rebase --onto newroot --root master
# git branch -d newroot
