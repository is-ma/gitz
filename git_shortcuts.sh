export VISUAL=vim  # use VIM instead of nano as a default editor

# Original list: https://gist.github.com/gwing33/1650826
##########################################################
################# G I T    A L I A S E S #################
##########################################################


########## basic commands ##########
alias gs='git status -s'
alias ga='git add'                        # Add to staged area.
alias gap='git add -p'                    # Edit the hunks; keep (+), discard everything else.
alias gaa='git add -A'
alias gc='git commit -m'                  # You could add (--allow-empty).
alias gca='git commit -am'
alias gaac='git add -A && git commit -m'  # Common combination.
alias gcm='git commit --amend'            # Add more files to last commit or edit the commited message.
alias gt='git tag'                        # Usage: gt v1.0; gt -d v1.0 (delete tag); tag after commit: gt v1.2 fceb02.
alias god='git push --delete origin'      # (+tagName) Goes to origin and delete tags/branches.


########## information ##########
alias gl='git log --oneline --graph --decorate --all -n 10'           # Top 10, complete info.
alias gl3='git log --oneline -n 3'                                    # Top 3, simplified.
alias gls='git log --oneline --graph --decorate --all -n 3 --stat'    # Top 3, with stats.
alias gll='git log --oneline --graph --decorate --all'                # All git log, complete info.
alias gd='git diff'            # Modifs on tracked files (WD) above HEAD (could be staged). Usages: gd; gd <OLD> <NEW>.
alias gds='git diff --staged'  # INDEXED modifs above HEAD that (could be commited).
alias gdh='git diff HEAD'      # Modifs [WD+INDEX] above HEAD.
alias gsh='git show'           # Show commit modifications: gsh [COMMIT|file].
alias gfh='git log -p'         # (+filename) Outputs the file history patches for each log entry.


########## branches ##########
alias gco='git checkout'                    # Jump to branches or IDs. Add '-b' create a new branch (opc FromBranch).
                                            # (+filename) Remove changes from WD; with -f, throw away local changes,
					    # (-p) interactively discard hunks.
alias gb='git branch'                       # (opc BranchName) Show local branches, delete it (-d, -D) or god for remote,
                                            # remote (-r), all (-a), rename branches with "gb -m develop developing".
alias gm='git merge'                        # (+COMMIT) Merge current branch to COMMIT (fast-forward) or use --no-ff flag.
alias grb='git rebase'                      # (+COMMIT/+COMMIT +FROM) Rebase current branch on top of COMMIT, if +FROM is
                                            # specified it will first make a 'git checkout +FROM' and then the rebase.
alias gri='git rebase -i'                   # (+COMMIT/--root/empty) Re-design history interactively from COMMIT.
alias gria='git rebase -i --autosquash'     # (+COMMIT/--root/empty) Uses 'squash! msg' or 'fixup! msg' to format gri.
alias gp='git push && git push --tags'      # Pushes commits and tags in one command; (-f) to mimic current branch.
alias gpf='git push -f && git push --tags'  # Force push to mimic current branch.
alias gf='git fetch -p'                     # Usage: gf john (-p prune tracking); -a to fetch all; uses "origin" by default.
alias gpu='git pull'                        # Fetches & merges (use it with care), --rebase opt is a great one-command tool.


########## stash commands ##########
alias gss='git stash save'              # Save uncommited changes (add an ID message).
alias gsl='git stash list'              # Your list of stashed stuff.
alias gsp='git stash pop'               # Takes (and delete) the top of the list stash.


########## config ##########
# git config --global --edit            # Stores configuration in ~/.gitconfig
# git config --local --edit             # (default) Stores configuration in .git/config
# git config --local user.name "Example"
# git config --local user.email "user@example.org"


########## undoing things ##########
alias gre='git revert'               # (+ID, empty) Creates a new commit reverting +ID (or HEAD).
alias gcn='git clean -n'             # Removes custom/all untracked files (-n for dry-run).
alias gcf='git clean -f'             # Removes custom/all untracked files (-f to force).
alias gr='git reset'                 # (+stagedFile, empty) Unstage stagedFile or all files,
alias grp='git reset -p'             # Edit the hunks; dicard what you want to commit next.
alias gxj='git reset --hard'         # (+ID, empty) Jumps to ID or removes modified files in working dir and INDEX.
alias gxb='git reset HEAD^ --soft'   # Go back 1 commit in time, keeps modifications in INDEX.
alias grv='git revert'               # (+ID) Reverts ID; (ID ID2 ID3) reverts ids; (BASE..ID) FROM BASE up to ID.
# git checkout [--] (.|file)         # Un-do file changes in WD (use -- when it doesn't work, paths for example),
                                     # or use '.' to undo all WD (same as git checkout -f or git reset --hard).

########## final references ##########
# git init            # Initialize repository. Add --bare for "storage facility" without working dir.
# git remote          # Use it alone or with [add, rm] +repo, -v for details.
# git rm              # Untrack files; "git rm --cached" can unstage untracked-files.
# git mv              # Rename tracked-files.
# git reflog          # Revive lost snapshots.
# git archive         # Removes the .git dir; it gives you a simple snapshot you to share/backup,
                      # ex: git archive master --format=zip --output=../website-20170130.zip

