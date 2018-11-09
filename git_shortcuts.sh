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
alias gcm='git commit --amend'        # add more files to last commit or edit the commited message
alias gt='git tag'                    # usage: gt -a v1.0; gt -d v1.0 (delete tag); tag after commit: gt v1.2 fceb02
alias gtd='git push --delete origin'  # (+tagName) remove online tag in origin


########## information ##########
alias gs='git status -s'
alias gl='git log --oneline --graph --decorate --all -n 10'           # top 10, complete info
alias gl3='git log --oneline -n 3'                                    # top 3, simplified
alias gls='git log --oneline --graph --decorate --all -n 3 --stat'    # top 3, with stats
alias gll='git log --oneline --graph --decorate --all'                # all git log, complete info
alias gd='git diff'            # modifs on tracked files (WD) above HEAD (could be staged). Usages: gd; gd <OLD> <NEW>
alias gds='git diff --staged'  # INDEXED modifs above HEAD that (could be commited)
alias gdh='git diff HEAD'      # modifs [WD+INDEX] above HEAD
alias gsh='git show'           # show commit modifications: gsh [COMMIT|file]
alias gfh='git log -p'         # (+filename) Outputs the file history patches for each log entry


########## branches ##########
alias gco='git checkout'                # jump to branches or IDs. Add '-b' create a new branch (opc FromBranch)
                                        # (+filename) remove it from WD; with -f, throw away local changes
alias gb='git branch'                   # (opc BranchName) Show local branches, delete it (-d, -D) or gtd for remote
                                        # remote (-r), all (-a), rename branches with "gb -m develop developing"
alias gm='git merge'                    # (+COMMIT) Merge current branch to COMMIT (fast-forward) or use --no-ff flag
alias grb='git rebase'                  # (+COMMIT) Rebase current branch on top of COMMIT
alias gri='git rebase -i'               # (+COMMIT) Re-design history interactively from COMMIT. Add --root to use it.
alias gp='git push'                     # use -f to mimic current branch; delete branches: gp --delete origin branchName
alias gpt='git push && git push --tags' # pushes commits and tags in one command
alias gf='git fetch -p'                 # usage: gf john (-p prune tracking); -a to fetch all; uses "origin" by default
alias gpu='git pull'                    # fetches & merges (use it with care), --rebase opt is a great one-command tool


########## stash commands ##########
alias gss='git stash save'              # save uncommited changes (add an ID message)
alias gsl='git stash list'              # your list of stashed stuff
alias gsp='git stash pop'               # takes (and delete) the top of the list stash


########## config ##########
# git config --global --edit
# git config --local --edit
# git config --local user.name "Example"
# git config --local user.email "user@example.org"


########## undoing things ##########
alias gcn='git clean -n'             # removes custom/all untracked files (-n for dry-run)
alias gcf='git clean -f'             # removes custom/all untracked files (-f to force)
alias gxu='git reset'                # (+stagedFile, empty) unstage stagedFile or all files
alias gxj='git reset --hard'         # (+ID, empty) jumps to ID or removes modified files in working dir and INDEX
alias gxb='git reset HEAD^ --soft'   # go back 1 commit in time, keeps modifications in INDEX
# git checkout [--] (.|file)         # un-do file changes in WD (use -- when it doesn't work, paths for example),
                                     # or use '.' to undo all WD (same as git checkout -f or git reset --hard)

########## final references ##########
# git init            # initialize repository. Add --bare for "storage facility" without working dir
# git remote          # use it alone or with [add, rm] +repo, -v for details
# git rm              # untrack files; "git rm --cached" can unstage untracked-files
# git mv              # rename tracked-files
# git reflog          # revive lost snapshots
# git archive         # removes the .git dir; it gives you a simple snapshot you to share/backup,
                      # ex: git archive master --format=zip --output=../website-20170130.zip

