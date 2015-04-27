#!/usr/bin/env bash
################################################################################
# @svaksha <3 devilish dotfile daemons! : http://svaksha.github.io/5vaksha
# Author: SVAKSHA || ALIAS definitions || UPDATED: 2015APR24
# COPYRIGHT © 2007-Now [SVAKSHA](http://svaksha.com/pages/Bio) All Rights Reserved.
# LICENSE :: [GNU AGPLv3 License](http://www.gnu.org/licenses/agpl.html)
# Permission is hereby granted, free of charge, to any person obtaining a copy 
# of this software and associated documentation files (the "Software"), to deal 
# in the Software without restriction, including without limitation the rights 
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
# copies of the Software, and to permit persons to whom the Software is 
# furnished to do so, subject to the following conditions:
# ALL copies of this work and repository forks must retain the Copyright, 
# LICENSE(.md) notice and this permission notice in substantial portions of the software. 
# See the [LICENSE.md](https://github.com/svaksha/5vaksha/blob/master/LICENSE.md) file.
################################################################################
#
# Moved all my additions into a separate "~/.bash_aliases" file.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
################################################################################
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# APT and APTITUDE commands
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias apt-install='sudo apt-get -fy install'
alias apt-policy='LANG=C apt-cache policy'
alias apt-purge='sudo apt-get --purge remove'
alias apt-search='apt-cache search'
alias apt-show='apt-cache show'
alias apt-up='sudo apt-get update && sudo apt-get upgrade'
alias apt-updist='sudo apt-get update && sudo apt-get dist-upgrade' # Update/Upgrade OS 
# WARNING : USE CAREFULLY 
alias apt-rm='sudo apt-get remove' # apt remove system dep files - USE CAREFULLY 
alias apt-autorm='sudo apt-get autoremove'  # apt remove system dep files - USE CAREFULLY
# END WARNING : USE CAREFULLY 



################################################################################
# BASH # BASH # BASH # BASH # BASH # BASH # BASH # BASH # BASH # BASH # BASH
################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# BASH reloaded
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias b='. ~/.bashrc' # DOT shortcut to reload bash
alias ba='source ~/.bashrc' # Another shortcut to reload bash
alias bas='source $HOME/.bashrc' # reload bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Change Dir 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias ..="cd .."        #go to parent dir
alias ...="cd ../.."    #go to grandparent dir
alias -- -="cd -"       #go to previous dir
alias cd..='cd ..'
alias clr='clear'    # Clear the terminal
alias cal='cal -3' #show 3 months by default

#-------------------------------------------------------------------------------
# EDIT 
#-------------------------------------------------------------------------------
alias ed-alias='sudo gedit $HOME/.bashrc_aliases'
alias ed-bash='sudo gedit $HOME/.bashrc'
alias ed-gitconf='sudo gedit $HOME/.gitconfig'
alias ed-gitignore='sudo gedit $HOME/.gitignore_global'

# Fire an editor
alias emacs='emacs24-gtk'
alias emacsfs='emacs24-gtk -fs'


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# HISTORY
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias h='history'
alias clr='cd ~; clear'
alias hcl='history -c; clear'     # clear all the history and screen
# alias h='history | grep'        # search history 

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# LIST
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias l.='ls -d .*'     #list hidden files
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
#alias ll='ls -lhrt'     # extra info compared to "l"
alias lld='ls -lUd */'  # list only directories
alias ls='ls --color=auto'
#alias lst='ls --color --time-style="+%b %d %Y %H:%M"' #replaced with bash script

# Display the contents of these files on the terminal.
alias s-alias='cat $HOME/.bash_aliases'
alias s-bash='cat $HOME/.bashrc'
alias s-gitc='cat $HOME/.gitconfig'


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# PATH, Proceses
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias p='ps aux | grep' # grep processes with [OPTION] PATTERN [FILE]
alias path='echo -e ${PATH//:/\\n}'

### various ping options. Read REF's for router/modem option.
# REF[1]: https://en.wikipedia.org/wiki/Maximum_transmission_unit
# REF[2]: http://www.richud.com/wiki/Network_MTU_Check
#-------------------------------------------------------------------------------
alias ping='ping 192.168.1.1' # ping dsl router
alias ping1='ping -M do -s 1452 google.com' # Error {From MyDslModem.local.lan (192.168.1.1) icmp_seq=1 Frag needed and DF set (mtu = 1460)}
alias ping2='ping -M do -s 1492 google.com'
alias ping3='ping 10.8.0.1 -M do -s 1432'

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias shr='shred -u'

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Processes yet again
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias t='top'
alias tl='tail'
alias temps='acpi -t'

#===============================================================================
# Grouping all SEARCH utils 
#===============================================================================
alias f='find . | grep'        # find file 
alias g='grep -R'              
alias gri="grep -i"            # ignore case



################################################################################
# HARDWARE MONITOR  # HARDWARE MONITOR  # HARDWARE MONITOR  # HARDWARE MONITOR
################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# HDD health - using smartmontools
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias disk='sudo smartctl -s on -a /dev/sda'     # HDD health - using smartmontools
alias df='df -h'                                # Filesystem diskspace usage




################################################################################
# PROGRAMMING LANGUAGES   # PROGRAMMING LANGUAGES   # PROGRAMMING LANGUAGES
################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# JULIA REPL & programming
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias ju='julia'
# alias ju-pull='git pull git@github.com:JuliaLang/julia.git' # IGNORE, use update script.
# alias ju-pkgup='cd julia; ./julia -e 'Pkg.update()''        # alt script handles this.

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Python related commands
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias con='cd anaconda/envs/'
alias cona='source activate'
alias cond='source deactivate'
alias py='python'
# From @audreyr, http://www.codemakesmehappy.com/2015/04/spring-cleaning-for-python-programmers.html
alias rmpyc='find . -type f -name "*.pyc" -print -delete'
# Recursively IGNORE "Permission denied" directories.
#alias rmpyc-ig-path='find . -type f -name "*.pyc" ! -readable \( -path "./.dbus" -o -path "./.gvfs" -o -path "./.cache/dconf" \) -print -delete -ls'





################################################################################
# DVCS # DVCS # DVCS # DVCS # DVCS # DVCS # DVCS # DVCS # DVCS # DVCS # DVCS 
################################################################################
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# GIT
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# GIT stuff : https://www.kernel.org/pub/software/scm/git/docs/git-config.html
alias ga='git add'
alias gau='git add --update'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias gd='git diff'
alias gs='git status'
alias gig='git status --ignored'
alias gk='gitk --all&'
# too lazy to type log history
alias gl='git log'
alias glpg='git log --pretty=format:"%h %s" --graph'
alias glpgd='log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short'
alias gpl='git pull'
alias gp='git push'
alias gpom='git push -u origin master'

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# HG - MERCURIAL
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
alias ha='hg add'
alias hf='hg forget'           # Track new, forget missing
alias harm='hg addrem­ove'       # Begin tracking changes
alias hrm='hg remove'          # Stop tracking file
	
# END ".bash_aliases" ==========================================================

