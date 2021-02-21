# GIT TUTORIAL/CHEATSHEET  

<div align="center"><img src="imgs/git-logo1.png" alt="Git Logo"></div>

This is a simple tutorial/cheatsheet of Git. Here are some of the most basic git commands, plus some quick tips, tricks, __how-to's__ and guides.  

Please note that this is not a comprehensive and proper introduction to git concepts and git itself. This is more like a quick refresher on how to perform some concrete actions in git. If you're just beggining to use git, [here](#recommended-resources) is a list of useful resources. Personally, i'd recommend [Pro Git](https://git-scm.com/book/en/v2), from the official website of Git.  

# INDEX

* [WHAT IS GIT?](#what-is-git)
* [GIT CONFIG](#git-config)
  * [Git `config` files](#git-config-files)
  * [Basic config commands](#basic-config-commands)
* [TRACKING/IGNORING FILES](#trackingignoring-files)
  * [`git add`](#git-add)
  * [`.gitignore` and glob patterns](#gitignore-and-glob-patterns)
* [RECORDING/COMMITING CHANGES](#recordingcommiting-changes)
  * [Committing from staging area (the index)](#committing-from-staging-area-the-index)
  * [Skipping the staging area](#skipping-the-staging-area)
* [CHECKING FILE STATUS](#checking-file-status)
  * [`git status`](#git-status)
* [STASHING](#stashing)
  * [Pushing a stash](#pushing-a-stash)
  * [Listing stash entries](#listing-stash-entries)
  * [Applying a stash](#applying-a-stash)
  * [`git stash show -p`](#git-stash-show--p)
  * [Dropping a stash entry](#droping-a-stash-entry)
* [CREATING/DESTROYING BRANCHES](#creatingdestroying-branches)
* [MERGING/REBASING](#mergingrebasing)
* [CHECKING OUT](#checking-out)
* [UNDOING THINGS](#undoing-things)
* [GIT REVISIONS](#git-revisions)
* [REMOTES](#remotes)
* [TAGGING](#tagging)
  * [List tags](#list-tags)
  * [Delete tags](#delete-tags)
* [ALIASES](#aliases)
  * [Useful aliases](#useful-aliases)
* [REVIEWING HISTORY](#reviewing-history)
* [`git reset`](#git-reset)
* [COMMON GIT WORKFLOWS](#common-git-workflows)
* [GITHUB TIPS & TRICKS](#github-tips--tricks)
* [SUBMODULES](#submodules)
* [GIT HOOKS](#git-hooks)
* [GETTING HELP](#getting-help)
* [RECOMMENDED RESOURCES](#recommended-resources)
  * [Git Book](https://git-scm.com/book/en/v2)
  * [Git HowTo](https://githowto.com/)
  * [Atlassian Git Tutorials](https://atlassian.com/git/tutorials)
  * [Git Docs](https://git-scm.com/docs)
  * [Github Cheatsheet](https://training.github.com/downloads/github-git-cheat-sheet/)
  * [Github Docs](https://docs.github.com/en/github)
  * [User Manual](https://git-scm.com/docs/user-manual)  

# WHAT IS GIT?

Git is a version control system (CVS), that is, it tracks the state and the changes made to your project through the different stages of development. Using a CVS like Git will give you the ability to readily revert the state of your project to a former one if needed, integrate changes in a cleaner way, and provides tools to work, modify and develop in a tiny and organized manner.

# GIT CONFIG

## Git `config` files

Git reads it's configuration from different files:  
`--sytem ` -> Linux: `[path]/etc/gitconfig` - Windows: `C:/Program Files/Git/etc/gitconfig`  
`--global` -> Linux: `~/.gitconfig` or `~/.config/git/config` - Windows: `C:/Users/<USER_NAME>/.gitconfig`  
`--local ` -> Linux, Windows: `.git/config`  

For all-users-wide configuration use the `--system` flag.  
For per-user configuration use `--global`.  
For per-repository configuration use `--local`.  

To show your configuration settings use the command:  
```bash
git config --list
git config --list --show-origin # To show from which file the values are being readed
```

## Basic config commands

To set the your username, email and editor:  
```bash
git config [--(system|global|local)] user.name "John Doe"
git config [--(system|global|local)] user.email johndoe@example.com
git config [--(system|global|local)] core.editor emacs
```
**NOTE**: If you want to use Notepad++ as your editor on windows pass the value `"'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"`.  

To set `main` as the deafult branch name (from version 2.28):  
```bash
git config --global init.defaultBranch main
```

# TRACKING/IGNORING FILES

## `git add`

To start tracking files and to stage files for them to be included on your next commit use:  
```bash
git add file1 [file2, file3...]
git add * # To record all the changes on your repo
git add -A # To record all the changes on your repo
git add -i # To start staging files interactively
```  
Where file*n* is a [pathspec](https://git-scm.com/docs/gitglossary#Documentation/gitglossary.txt-aiddefpathspecapathspec). Effectively it *adds* the file(s) to the stage area (often referred to as the [index](https://git-scm.com/docs/gitglossary#Documentation/gitglossary.txt-aiddefindexaindex)).

## `.gitignore` and glob patterns

A `.gitignore` file can be placed at the top folder of your repo to tell git to ignore files that you don't want to track. You can also place `.gitignore` files in any subdirectories of your repo to ignore files specifically in those folders (and their subfolders).  

You can find pre-made `.gitignore` files suitable for many type of projects and languages on [this repo](https://github.com/github/gitignore).

The rules are really simple:
- Blank lines and lines starting with `#` are ignored.
- To ignore a single file just write it's name on a single line.
- Start patterns with `/` so as to avoid the pattern to applied recursively.
- End patterns with `/` to specify a directory.
- `!` is put in front of the pattern to negate it.
- The `*` matches zero or more characters (any character).
- `?` matches a single character.
- Enclose a group of characters between square brackets to match any of the characters inside e.g. `[abc]` matches `a` or `b` or `c`. You can match all the characters not listed between the brackets putting `!` at the beggining.
- Hyphens can be used inside character groups to specify ranges e.g. `[1-5]` would match any number between `1` and `5`.
- Two asterisks on a path means to match nested directories e.g. `path/**/to/file` would match `path/to/file`, `path/a/to/file`, `path/a/b/to/file`... and so on.
- Prefix any of the mentioned wildcard characters (`*`, `?`, `/`) with a backslash (`\`) for them to be treated as a literal character instead of a special one.

You can find examples on [this page](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository#_ignoring).

# RECORDING/COMMITING CHANGES

## Committing from staging area (the index)

To record the changes that you've staged use the command:
```bash
git commit
git commit -m 'This is your message' # To prevent the text editor from launching. Write the message inline
```

## Skipping the staging area

The staging area can be skipped using:
```bash
git commit -a # Commit all modifications, staged and not staged
git commit -i file1 [file2, file3...] # Commit staged changes and (the probably not staged files) file1 [file2, file3...]
git commit -am 'This is the commit message'
```

You can stage and commit changes interactively using:
```bash
git commit --interactive
```

This command will commit **only** the files and changes specified as arguments. Staged files not passed to the 'o' option will remain on the stage area:
```bash
git commit -o file1 [file2, file3...]
git commit file1 [file2, file3...] # You can omit the '-o' option. This will have the same effect
```

You can see the full list of options you can pass to `git commit` [here](https://git-scm.com/docs/git-commit).

# CHECKING FILE STATUS

## `git status`

To see if the files on your repo have been modified/deleted/renamed and which files and changes are on your staging area, use:
```bash
git status
git status -s # Show status in short format
git status [options] -- path-to-file-or-directory # To restrict the output to one file/folder
```  

The output of the short status includes two columns: the right column indicates name of the file and the left tells the status of the file using the characters. The left character indicates the state of the file as for the staging area and the right one refers to the working-tree
```
?? -> New files that aren’t tracked
A  -> Staged new file priorly not tracked (will be oficially tracked after commit)
 M -> Modified, not staged
M  -> Modified and staged (not modified since it was staged)
MM -> The file was modified, staged and then modified again (there are changes that are both staged and unstaged)
```

Detailed documentation can be found [here](https://git-scm.com/docs/git-status).

# STASHING

## Pushing a stash

Since Git won't let you check out to another branch should there is uncommitted changes, if you're working on a certain branch and, before finishing that work, you need to switch to another branch so as to develop something more urgent then you have two options: commit unfinished work so you can check out to another branch (which is not ideal) vs stashing your work.

To create a new [stash entry](https://git-scm.com/docs/gitglossary#Documentation/gitglossary.txt-aiddefstashastashentry) use:
```bash
git stash push 
git stash # You can omit the 'push'
git stash push -m 'Write a stash message'
git stash -- file1 [file2, file3...] # To stash the changes of only certain files. globs are valid. DON'T FORGET THE '--'
```

## Listing stash entries

```bash
git stash list
```

## Applying a stash

To apply a stash use:
```bash
git stash apply # To apply the last pushed stash, that is, stash@{0}
git stash apply stash@{n} # Where n points to a specific stash
git stash apply n # Same than above
```

If you want to apply a stash end immediatly drop it:
```bash
git stash pop # To apply the last pushed stash, that is, stash@{0}
git stash pop stash@{n} # Where n points to a specific stash
git stash pop n # Same than above
```

## `git stash show -p`

You can view the diff between the stash's content and the commit from which the stash was created using:
```bash
git stash show -p stash@{n}
git stash show -p # same as above but with 'stash@{0}'
```

## Droping a stash entry

To delete or remove a stash entry use:
```bash
git stash drop # Drops last stash
git stash drop stash@{n}
```

More info can be found [here](https://git-scm.com/book/en/v2/Git-Tools-Stashing-and-Cleaning), and detailed documentation [here](https://git-scm.com/docs/git-stash).

# CREATING/DESTROYING BRANCHES



# MERGING/REBASING

### WORK_IN_PROGRESS

# CHECKING OUT

### WORK_IN_PROGRESS

# UNDOING THINGS

### WORK_IN_PROGRESS

# GIT REVISIONS

### WORK_IN_PROGRESS

# REMOTES

### WORK_IN_PROGRESS

# TAGGING

There are two type of tags: `lightweight` and `annotated`. `lightweight` tags are just like pointers to a commit, nothing more. On the other hand, `annotated` tags are stored as [full objects in the database](https://git-scm.com/docs/user-manual#the-object-database), what that entails won't be fully explained here, but in practice, one advantage of creating `annotated` tags is that you can attach a message and additional metadata.

To create a `lightweight` tag:
```bash
git tag <tag-name>
git tag <tag-name> [commit | branch | object]
```

To create an `annotated` tag:
```bash
git tag -a <tag-name> # Editor will launch
git tag -a <tag-name> -m "Message"
```

To show the metadata stored along with an `annotated` tag:
```bash
git show <tag-name>
```

Git doesn't push tags to remotes automatically. You'll have to use:
```bash
git push origin <tag-name>
git push origin --tags # To push all your tags
```

You can check out tags, for example:
```bash
git checkout v4.4
```

## List tags

To list all tags:
```bash
git tag
git tag --list
git tag -l
```

Glob patterns are allowed:
```bash
git tag -l <pattern>
```

## Delete tags

```bash
git tag -d <tag-name>
git push <remote> :refs/tags/<tagname> # To delete tag in a remote
git push origin --delete <tagname> # To delete tag in a remote
```

More info [here](https://git-scm.com/book/en/v2/Git-Basics-Tagging). Documentation can be found [here](https://git-scm.com/docs/git-tag).

# ALIASES

The scope of the aliases can be set using the flags `--system`, `--global` and `--local` (as with any other config variable).  
```bash
git config [--global|--system|--local] alias.<alias> '<aliased-command>'
git config [--global|--system|--local] alias.<alias> '!<aliased-external-command>' # To alias external commands
```

Afterwards, to invoke aliased commands:
```bash
git <alias> [arguments]
```

## Useful aliases

```bash
git config --global alias.h 'log --oneline --graph --all' # Stylized graph-like commit history
git config --global alias.hv 'log --oneline --graph --all --stat' # Stylized graph-like commit history with stats
git config --global alias.cam 'commit -am'
git config --global alias.unadd 'restore --staged'
git config --global alias.st 'status -sb' # Short status
git config --global alias.sub 'submodule'
git config --global alias.ch 'checkout'
git config --global alias.gh '!gh' # Github cli
```

# REVIEWING HISTORY

### WORK_IN_PROGRESS

# `git reset`

### WORK_IN_PROGRESS

# COMMON GIT WORKFLOWS

### WORK_IN_PROGRESS

# GITHUB TIPS & TRICKS

### WORK_IN_PROGRESS

# SUBMODULES

### WORK_IN_PROGRESS

# GIT HOOKS

### WORK_IN_PROGRESS

# GETTING HELP

### WORK_IN_PROGRESS

# RECOMMENDED RESOURCES

* [Git Book](https://git-scm.com/book/en/v2)
* [Git HowTo](https://githowto.com/)
* [Atlassian Git Tutorials](https://atlassian.com/git/tutorials)
* [Git Docs](https://git-scm.com/docs)
* [Github Cheatsheet](https://training.github.com/downloads/github-git-cheat-sheet/)
* [Github Docs](https://docs.github.com/en/github)
* [User Manual](https://git-scm.com/docs/user-manual)
