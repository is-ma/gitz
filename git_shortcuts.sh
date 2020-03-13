export VISUAL=vim  # use VIM instead of nano as a default editor

# Original list: https://gist.github.com/gwing33/1650826
##########################################################
################# G I T    A L I A S E S #################
##########################################################


########## basic commands ##########
alias gs='git status -s'                  # Show untracked files and differences between HEAD & WD, WD & index.
alias ga='git add'                        # Add files to staged area.
alias gaa='git add -A'                    # Add files to staged area (all files).
alias gc='git commit -m'                  # Commit staged files with a message.
alias gca='git commit -am'                # Commit all modified, tracked files. With a message.
alias gaac='git add -A && git commit -m'  # Common combination.
alias gcm='git commit --amend'            # Add more files to last commit or edit the commited message.
alias gt='git tag'                        # Usage: gt v1.0; gt -d v1.0 (delete tag); tag after commit: gt v1.2 fceb02.
alias gah='git add --patch'               # Edit the hunks; stage only the (+) lines.


########## information ##########
alias gl='git log --oneline --graph --decorate --all -n 10'           # Top 10, complete info.
alias gl3='git log --oneline -n 3'                                    # Top 3, simplified.
alias gll='git log --oneline --graph --decorate --all'                # All git log, complete info.
alias gls='git log --oneline --graph --decorate --all -n 3 --stat'    # Top 3, with stats.
alias gd='git diff'            # Modifs on tracked files (WD, not staged) above HEAD. Usages: gd; gd <OLD> <NEW>.
alias gds='git diff --staged'  # INDEXED modifs above HEAD (WD not included).
alias gdh='git diff HEAD'      # Modifs [WD+INDEX] above HEAD.
alias gsh='git show'           # (+ID|<none>) Show commit modifications on ID/HEAD.
alias gfh='git log -p'         # (+filename) Outputs the file history patches for each log entry.


########## branches ##########
alias gco='git checkout'                    # Jump to branches or IDs. Add '-b' to create a new branch; (+file) remove changes from WD;
                                            # with -f, throw away local changes (WD & staged), like <gxj>.
alias gb='git branch'                       # (opc BranchName) Show local branches; remove (-r), all (-a);
                                            # rename (-m) OLD NEW; delete it (-d, -D) or <god> for remote.
alias gm='git merge'                        # (+COMMIT) Merge current branch to COMMIT (fast-forward) or use --no-ff flag.
alias god='git push --delete origin'        # (+tagName) Goes to origin and delete tags/branches.
alias grb='git rebase'                      # (+COMMIT) Rebase current branch on top of COMMIT.
alias grbc='git rebase --continue'          # Popular rebase option.
alias gri='git rebase -i'                   # (+COMMIT/--root) Redesign history interactively from COMMIT.
alias gria='git rebase -i --autosquash'     # (+COMMIT/--root) Uses 'squash! msg' or 'fixup! msg' to format <gri>.
alias gp='git push && git push --tags'      # Pushes commits and tags in one command.
alias gpf='git push -f && git push --tags'  # Force push to mimic current branch.
alias gf='git fetch -p'                     # Usage: gf john (-p prune tracking); -a to fetch all; uses "origin" by default.
                                            # tip: for long term changes, its probably best to merge, but for smaller changesets,
                                            #      history will stay cleaner with rebase.


########## stash commands ##########
alias gss='git stash save'              # Save uncommited changes (adds an ID message).
alias gsl='git stash list'              # List your stashed stuff.
alias gsp='git stash pop'               # Takes (and delete) the top of the list stash.


########## config ##########
# git config --global --edit            # Stores configuration in ~/.gitconfig
# git config --local --edit             # (default) Stores configuration in .git/config
# git config --local user.name "Example"
# git config --local user.email "user@example.org"


########## undoing things ##########
alias gcn='git clean -n'             # Removes custom/all untracked files (-n for dry-run).
alias gcf='git clean -f'             # Removes custom/all untracked files (-f to force).
alias gr='git reset'                 # (+stagedFile, empty) Unstage stagedFile or all files.
alias grh='git reset --patch'        # Edit the hunks; stage only the " " lines.
alias gxj='git reset --hard'         # (+ID, empty) Jumps to ID or removes modified files in WD & INDEX.
alias gxb='git reset HEAD^ --soft'   # Go back 1 commit, keeps modifications in INDEX.
alias grv='git revert'               # (+ID ID2 ID3) Creates a new commit reverting IDs (or HEAD).
# git checkout [--] (.|file)         # Un-do file changes in WD (use -- when it doesn't work, paths for example),
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