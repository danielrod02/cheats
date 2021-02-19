#!/bin/bash

# The most important git subcommands are
# init
# clone
# status
# add
# commit
# branch
# merge
# rebase
# checkout
# mv
# rm
# stash
# restore
# reset
# remote
# fetch
# push
# pull
# submodule
# config
# show
# log
# cherry-pick
# reflog
# revert
# grep
# apply

# Concepts and things to know
# refspec
# revisions
# pathspec
# reflog

# To read about the spec, valid section and variable definitions and format about the config file of git:
#       https://git-scm.com/docs/git-config#_configuration_file

# Please note that words index, stage, and cache are the same thing in Git: they are used interchangeably.

# First to initialize a git repo, you use the "init" subcommand
git init
git init --template some_dir # So the repo will be pre-populated
        # with some files (the history of the repo, object database, etc is not copied, only the files)
git init --bare # To create a bare repo (no branch is checked out to the working tree)
git init --initial-branch main # To change the name of the initial branch (which is master)
git init -b main

# You can clone a remote repo (it can be a repo on your local computer)
git clone git@github.com:danielrod02/git-practice.git
git clone --local /path/to/some/local/repo

# Get the status of the repo (what branch is checked out, whats the status of 
# the files, what files have been added, removed, modified...)
git status -sb # -s is for "short status", and to -b show branch info

# to add files to your staging area or "stage" them use the `git add subcommand`
# the "staging area" and the "index" mean the same thing in the git parlance
git add path/to/file/or/glob
git add -A # add all the created (not yet tracked) and modified files (stage deletions, moves and renames too)
git add --all # add all the created (not yet tracked) and modified files (stage deletions, moves and renames too)
git add --interactive # interactively stage (add to index) changes (you can use this option with `commit`, but not `-i`)
git add -i # interactively stage (add to index) changes
        # TYPE 'h' to get help.
git add -p # if you want to only stage a subset of the changes you've already made
        # you can do so using this command (stage patches interactively)
        # TYPE '?' TO GET HELP

# to "unstage" staged files use this:
git restore --staged path/to/file/or/glob
# when using the `restore` subcommand, by default, if --staged is given, the contents are restored from HEAD, 
#otherwise from the index. Use --source to restore from a different commit.
git config --global alias.unadd 'restore --staged' # to "create" the unadd sub command

# VISIT #https://git-scm.com/docs/git#_reset_restore_and_revert to see what are the differences
# between restore, reset and revert (which are similar commands). In short:
#       revert: is about making a new commit that reverts the changes made by other commits
#       restore: is about restoring files in the working tree from either the index or another commit. This command 
#               does not update your branch. The command can also be used to restore files in the index from another commit.
#       reset: is about updating your branch, moving the tip in order to add or remove commits from the branch. 
#               This operation changes the commit history.

# to delete a tracked file and commit that deletion to your repository history use:
git rm /path/to/file/or/glob
# to rename/move a file and stage that change, use:
git mv old-name new-name

# to commit whats in you're stage area:
git commit
git commit -m 'Type message here'
git commit --all
git commit -am 'Type message here' # the `-a` or `--all` option commits ALL changed files (that are already being tracked). 
# The `a` or `--all` options can spare you the bother to stage those changed files.
git commit --include path/to/file path/to/other/file...
git commit -i path/to/file path/to/other/file... # `-i` `--include` includes the specified files in the commit
git commit --only path/to/file path/to/other/file...
git commit -o path/to/file path/to/other/file... # include ONLY this files
git commit --patch || git commit -p # interactively add patches/hunks to the commit

# checkout vs restore vs reset
# The reset command overwrites three trees: the WORKING TREE, the tree that is in the INDEX and the HEAD tree (the tree 
# referred by the commit that is being pointed to by the branch that HEAD is on; it actually moves the branch ref). It 
# does this in a specific order, stopping when you tell it to:
#       Move the branch HEAD points to (stop here if --soft)
#       Make the index look like HEAD (stop here unless --hard). THIS IS THE DEFAULT if u dont specify a a flag. this is `--mixed`
#       Make the working directory look like the index (this is --hard).

# REMEMBER: 
#       `checkout` (by default):
#               changes what branch HEAD is pointing to
#               updates the index with the contents of the last commit of that branch and 
#               updates the working tree to match the index
#               is working-directory safe; it will check to make sure it’s not blowing away files that have changes
#                       to them (UNLIKE `reset`)
#       `reset`: 
#               changes what commit a certain branch is pointing to (stops here if --soft)
#               Make the index look like HEAD (stop here unless --hard)
#               Make the working directory look like the index (this is --hard)
#               git reset can also be used to restore the index, overlapping with git restore
#               with --hard will simply replace everything across the board without checking (UNLIKE `checkout`)
#       `restore`:
#               is about restoring files in the working tree from either the index or another commit, OR
#               restore files in the index from another commit.
#               IS NOT meant to move branches or the HEAD or any ref in general.
#               By default, if --staged is given, the contents are restored from HEAD, otherwise from the index. 
#               Use --source to restore from a different commit.

# IMPORTANT NOTE: the `restore` and `switch` commands were created to replace the swiss army `checkout`. The team of developers of
#       git thought that splitting the functionality of `checkout` between `switch` and `restore` would improve usability.
#       So, again, `restore` is about restoring files in the working tree or in the index (and only that), and switch 
#       is about "checking out" branches (and only that).
#       |  BEFORE                               |  AFTER
#       |---------------------------------------|-------------------------
#       | git checkout master                   | git switch master
#       | git checkout some-tag -- path/to/file | git restore --source some-tag path/to/file

# `git reset` can also be used to restore the index, overlapping with `git restore`
# `reset` is meant to move the tip of a branch, `checkout` moves HEAD
# (HEAD is a symbolic ref... normally it wont directly point to a commit, it will indirectly do so through a branch).
# CHECK THIS TABLE https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified#_summary_8

## branch CRUD
####### BLOCK ######## This block has to be revised
# create branch
git branch new-branch
git checkout -b new-branch # creates and checkouts to "new-branch"
# rename branch
git branch --move
git branch -m
# delete branch
git branch --delete branch-to-delete
git branch -d branch-to-delete
git branch -D branch-to-delete # force deletion (even if the branch hasnt been merged)
# copy branch (and its reflog)
git branch --copy
git branch -c branch-to-copy name-of-copy-branch
####### BLOCK ########

git remote add remote-name remote-url
git remote rm remote-name

# to delete a remote branch and the matching remote-tracking branch (without deleting the corresponding local tracking 
# branch nor updating the config file)
git push --delete origin remote-branch-name
git push -d origin remote-branch-name # same as above


# to delete remote-tracking branch
git branch --remote --delete remote-branch-name
git branch -r -d remote-branch-name

# there are several ways to set upstream branches:
####### BLOCK ######## This block has to be revised
git push --set-upstream origin local-branch-name
git push -u origin local-branch-name:upstream-branch-name # when you use push, if the branch didnt exist in the remote then is created
# 
git branch --set-upstream-to upstream-branch-name tracking-branch
git branch -u upstream-branch-name tracking-branch
# the next couple is useful when you're creating a new branch
git branch --track 
git branch -t 
# to unset upstreams branches:
git branch --unset-upstream local-tracking-branch
####### BLOCK ######## 

# REMEMBER: An upstream branch is not the same as a remote tracking branch
# the terms remote-tracking branch, tracking branch, remote brach and upstream branch DONT mean the same.
# Its easy to confuse them, but remember:
#       - REMOTE-TRACKING BRANCHES are references to the state of remote branches. They’re local (and read-only) references 
#               that you can’t move; Git moves them for you whenever you do any network communication
#       - TRACKING BRANCHES are local branches that have a direct relationship to a remote branch. 
#               If you’re on a tracking branch and type `git pull`, Git automatically knows which server to fetch 
#               from and which branch to merge in
#       - UPSTREAM BRANCHES are remote branches (local to the remote) tracked by tracking branches (they are 
#               not necessarily named the same as their tracking branches). Git saves the info of whats the upstream 
#               branch of a tracking branch in the .git/config file using this format:
#                       [branch "local-branch-name"]
#                               remote = "remote-name"
#                               merge = "refs/heads/upstream-branch-name"
#       - REMOTE BRANCHES are simply that, branches that live in the remote and that are local to the remote.

# checking out (switching branches now on)
git checkout branch-name
git switch branch-name
git checkout -b new-branch # creates a new branche named 'new-branch' from HEAD and checkout to that branch
git sw --create new-branch # same as a above
git sw -c new-branch # same as above

# STASHING
# `git stash save` is being deprecated in favour of the existing alternative git stash push
git stash # shorthand to push an entry to the stash
git stash push # same as above
git stash push -m 'TYPE stash message here'
# List the entries in the stash
git stash list
# apply a stash to the workdir
git stash apply
git stash apply stash@{n}
# drop a stash
git stash drop # drops the last stash (stash@{0})
git stash pop # applies and drop the lastest stash
git stash pop stash@{n} # applies and drop the specified stash


# REWRITING HISTORY
# ██████╗ ███████╗██╗    ██╗██████╗ ██╗████████╗██╗███╗   ██╗ ██████╗                
# ██╔══██╗██╔════╝██║    ██║██╔══██╗██║╚══██╔══╝██║████╗  ██║██╔════╝                
# ██████╔╝█████╗  ██║ █╗ ██║██████╔╝██║   ██║   ██║██╔██╗ ██║██║  ███╗               
# ██╔══██╗██╔══╝  ██║███╗██║██╔══██╗██║   ██║   ██║██║╚██╗██║██║   ██║               
# ██║  ██║███████╗╚███╔███╔╝██║  ██║██║   ██║   ██║██║ ╚████║╚██████╔╝               
# ╚═╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝                
                                                                                   
# ██╗  ██╗██╗███████╗████████╗ ██████╗ ██████╗ ██╗   ██╗
# ██║  ██║██║██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗╚██╗ ██╔╝
# ███████║██║███████╗   ██║   ██║   ██║██████╔╝ ╚████╔╝ 
# ██╔══██║██║╚════██║   ██║   ██║   ██║██╔══██╗  ╚██╔╝  
# ██║  ██║██║███████║   ██║   ╚██████╔╝██║  ██║   ██║   
# ╚═╝  ╚═╝╚═╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝   ╚═╝   
# rewritting history

# The main tool for rewriting history is the `git rebase` (and `git rebase -i`) subcommand
# It allows you to:
#       REORDER COMMITS
#       SQUASH COMMITS
#       SPLIT COMMITS
#       DELETE COMMITS
#       CHANGE COMMIT MESSAGE
#       HOW TO UNMERGE?

git rebase -i HEAD~3 # REMEMBER that every commit in the range HEAD~3..HEAD with a changed message and all of 
#       its descendants will be rewritten.
git rebase -i <some-commit-id>
# The simplest way to squash commits is using `reset`: https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified#_squashing_2

# In general, DONT REWRITE COMMITS THAT ARE THE DIRECT PREVIOUS COMMIT OF MERGE COMMITS.
# ALWAYS REVISE YOUR COMMITS MESSAGE (AND FOREMOST YOUR COMMIT CONTENTS) BEFORE MERGING. EDITING LINES OF WORKS THAT HAVE BEEN
# MERGED CAN BE VERY MESSY

# YOU HAVE STILL TO GAIN PROFICIENCY WITH THE REBASE TOOL



#  ██████╗██╗  ██╗███████╗██████╗ ██████╗ ██╗   ██╗    ██████╗ ██╗ ██████╗██╗  ██╗
# ██╔════╝██║  ██║██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝    ██╔══██╗██║██╔════╝██║ ██╔╝
# ██║     ███████║█████╗  ██████╔╝██████╔╝ ╚████╔╝     ██████╔╝██║██║     █████╔╝ 
# ██║     ██╔══██║██╔══╝  ██╔══██╗██╔══██╗  ╚██╔╝      ██╔═══╝ ██║██║     ██╔═██╗ 
# ╚██████╗██║  ██║███████╗██║  ██║██║  ██║   ██║       ██║     ██║╚██████╗██║  ██╗
#  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝       ╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝
# cherry-pick cherry pick
# Applies the specified commit on top of HEAD

git cherry-pick some-commit-sha1
git cherry-pick commit-sha1-1 commit-sha1-2 commit-sha1-3
git cherry-pick --mainline 3 merge-commit # the -m or --mainline flag is needed if the commit is a merge commit
#       because you do not know which side of the merge should be considered the mainline. This option specifies the 
#       parent number (starting from 1) of the mainline and allows cherry-pick to replay the change relative to the specified parent
git cherry-pick -x commit-sha1-1 # When recording the commit, append a line that says "(cherry picked from commit …​)" to 
#       the original commit message in order to indicate which commit this change was cherry-picked from
git cherry-pick --edit master # let you edit the commit message prior to committing
git cherry-pick -e dev-branch # let you edit the commit message prior to committing

# GIT REVISIONS

# REMEMBER: reflog info is local. Is not pushed to the repo
git rev-parse HEAD@{4} # the fourth commit previously pointed by HEAD (uses the reflog)
git rev-parse HEAD~ # the first parent of the current commit
git rev-parse HEAD~5 # traverses the first parents the number of times you specify (5 in this case)
git rev-parse some-branch^ # the parent of HEAD
git rev-parse some-tag^4 # assuming `some-tag` points to a commit that has at least 4 parent commits, returns the sha-1 of 
#       the 4th parent. The `^n` operator is only relevant for merge commits
git rev-parse HEAD~3^2 # second parent of the grand-grandparent of the current commit

# Commit ranges:
git log master..experiment # all commits reachable from experiment that aren’t reachable from master
git log master...experiment # specifies all the commits that are reachable by either of two references but not by both of them
git log experiment...master # same as above


# ███████╗██╗   ██╗██████╗ ███╗   ███╗ ██████╗ ██████╗ ██╗   ██╗██╗     ███████╗███████╗
# ██╔════╝██║   ██║██╔══██╗████╗ ████║██╔═══██╗██╔══██╗██║   ██║██║     ██╔════╝██╔════╝
# ███████╗██║   ██║██████╔╝██╔████╔██║██║   ██║██║  ██║██║   ██║██║     █████╗  ███████╗
# ╚════██║██║   ██║██╔══██╗██║╚██╔╝██║██║   ██║██║  ██║██║   ██║██║     ██╔══╝  ╚════██║
# ███████║╚██████╔╝██████╔╝██║ ╚═╝ ██║╚██████╔╝██████╔╝╚██████╔╝███████╗███████╗███████║
# ╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚══════╝

# to add a submodule
git submodule add git@github.com:useraname/some-rep.git

# when cloning a submodule you must run two commands to populate the submodule's folder: `git submodule init` to initialize 
# your local configuration file, and `git submodule update` to fetch all the data from that project and check out the 
# appropriate commit listed in your superproject
git clone git@github.com:useraname/some-rep-w-submodules.git
git submodule init # initializes local config file
git submodule update # fetches data and checkouts
# you can consolidate the effect of running `init` and `update` using this command:
git submodule update --init
git submodule update --init --recursive
# OR, you can pass de --recurse-submodules flag when cloning
git clone --recurse-submodules git@github.com:useraname/some-rep-w-submodules.git # automatically initializes local config and 
#       updates submodule contents (recursively)
# to update the contents of the submod
git submodule update
git submodule update --remote # Instead of using the superproject’s recorded SHA-1 to update the submodule, use the status 
#       of the submodule’s remote-tracking branch
git config -f .gitmodules submodule.submod.branch stable-branch # make the submod to checkout to the stable-branch when using `update`
# the easiest way though:
git pull --recurse-submodules 

# IT IS RECOMMENDED TO SET THE CONFIGURATION OPTION submodule.recurse TO true, so everytime you pull, submodules are automatically
# updated

# check submodules status
git submodule status