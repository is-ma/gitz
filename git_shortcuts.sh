export VISUAL=vim  # use VIM instead of nano as a default editor

# Original list: https://gist.github.com/gwing33/1650826
##########################################################
################# G I T    A L I A S E S #################
##########################################################


########## basic commands ##########
alias gs='git status -s'
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit -m'
alias gca='git commit -am'
alias gcm='git commit --amend' # Add more files to last commit or edit the commited message
alias gt='git tag'             # usage: gt -a v1.0; gt -d v1.0 (delete tag); tag after commit: gt v1.2 fceb02
                               # remove online tag: git push --delete origin [tagName] (view branch removing);
                               # to delete all tags: tag | xargs git tag -d


########## information ##########
alias gs='git status -s'
alias gl='git log --oneline --graph --decorate --all -n 10'           # top 10, complete info
alias gl3='git log --oneline -n 3'                                    # top 3, simplified
alias gls='git log --oneline --graph --decorate --all -n 3 --stat'    # top 3, with stats
alias gll='git log --oneline --graph --decorate --all'                # all git log, complete info
alias gd='git diff'            # Modifs on tracked files (WD) above HEAD (could be staged). Usages: gd; gd <OLD> <NEW>
alias gds='git diff --staged'  # INDEXED modifs above HEAD that (could be commited)
alias gdh='git diff HEAD'      # Modifs [WD+INDEX] above HEAD
alias gsh='git show'           # Show commit modifications: gsh [COMMIT|file]
alias gfh='git log -p'         # (+filename) Outputs the file history patches for each log entry


########## branches ##########
alias gco='git checkout'                # Jump to branches or IDs. Add '-b' create a new branch (opc FromBranch)
                                        # with -f, throw away local changes
alias gb='git branch'                   # (opc BranchName) Show local branches, delete it (-d, -D), remote (-r),
                                        # all (-a), rename branches with "gb -m develop developing"
alias gm='git merge'                    # (+COMMIT) Merge current branch to COMMIT (fast-forward) or use --no-ff flag
alias gr='git rebase'                   # (+COMMIT) Rebase current branch on top of COMMIT
alias gri='git rebase -i'               # (+COMMIT) Re-design history interactively from COMMIT. Add --root to use it.
alias gp='git push'                     # Use -f to mimic current branch; delete branches: gp --delete origin branchName
alias gpt='git push && git push --tags' # Pushes commits and tags in one command
alias gf='git fetch -p'                 # Usage: gf john (-p prune tracking); -a to fetch all; uses "origin" by default
# git pull                              # Fetches & merges (use it with care), --rebase opt is a great one-command tool


########## stash commands ##########
alias gss='git stash save'                    # Save uncommited changes (add an ID message)
alias gsl='git stash list'                    # Your list of stashed stuff
alias gsp='git stash pop'                     # Takes (and delete) the top of the list stash


########## config ##########
# git config --global --edit
# git config --local --edit
# git config --local user.name "Example"
# git config --local user.email "user@example.org"


########## undoing things ##########
alias gcn='git clean -n'             # Removes custom/all untracked files (-n for dry-run)
alias gcf='git clean -f'             # Removes custom/all untracked files (-f to force)
# git reset ID                       # Moves current branch to ID and
                                           # --soft keep changes in INDEX
                                           # --mixed (default) keep changes in working dir
                                           # --hard discard changes in working dir and INDEX
# git reset [HEAD] --soft            # it does nothing
# git reset [HEAD] [--mixed]         # it unstage all files
# git reset [HEAD] --hard            # it just removes modified files in working dir and INDEX
# git reset [HEAD] stagedFile        # it unstage a staged file
# git reset HEAD^ --soft             # go back 1 commit in time, keeps modifications in INDEX
# git reset HEAD^ [--mixed]          # go back 1 commit in time, keeps modifications in WD
# git reset HEAD^ --hard             # go back 1 commit in time but destroy your WD and INDEX files
# git checkout [--] (.|file)         # Un-do file changes in WD (use -- when it doesn't work, paths for example),
                                     # or use '.' to undo all WD (same as git checkout -f or git reset --hard)

########## final references ##########
# git init            # Initialize repository. Add --bare for "storage facility" without working dir
# git remote          # Use it alone or with [add, rm] +repo, -v for details
# git rm              # Untrack files; "git rm --cached" can unstage untracked-files
# git mv              # Rename tracked-files
# git reflog          # Revive lost snapshots
# git archive         # Removes the .git dir; it gives you a simple snapshot you to share/backup,
                      # Ex: git archive master --format=zip --output=../website-20170130.zip

