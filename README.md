# YAKSHA
__My personal automation daimons!__

Each time I installed and set up a new machine it was hard to remember every configuration setting I had changed and which packages I had installed over the years on the stable version of my Debian machine. Doing this manually was a huge time-sink and an error-prone process resulting in annoying discrepancies and worse, dependency-hell. 

Enter [YAKSHA][yaksha], meaning "demon" in Sanskrit. These are my personal automation daimons (daemons?) for __Linux system installation, updation, backups, bash shell scripts, dockerfiles, dotfiles and configuration files__. Standardizing my development environment by automating the installation process and organizing the various developer tools was addictive fun!

__Change is the only constant in life__, so as a programmer I constantly change and (try to) improve the configurations and dotfiles in my attempt to keep optimizing the repo organization for ease of maintainence and extensibility. Config and dotfiles are meant to be personally customized for individual requirements, hence unique, but if you wish to use this repository code and these configs, follow the [installation](https://github.com/svaksha/yaksha#installation) instructions.

 [yaksha]: http://svaksha.github.io/yaksha "yaksha"

# INSTALLATION 
To try out these program scripts & dotfiles, fork this repository, review the code, and remove the things you don’t require. Test them before use and most importantly, read the __License & Disclaimer__ : No warranty and/or guarantee for any particular use, express or implied and you agree to use these [automation daimons][yaksha] at your own risk and liability! 

## System Dependencies
At the outset, your Debian machine should have the following core tools installed : _Git and Python_. Github offers HTTPS and SSH as transfer protocols or the repo can be downloaded as a [zip-file][download] (latest 'master' branch). __Tip__: You should have uploaded your `ssh` key to github and have `git` installed locally before issuing the `git` commands on the terminal.

+ For SSH protocol use the URL `ssh://git@github.com:svaksha/yaksha.git` via the clone command:
```
git clone ssh://github.com/svaksha/yaksha.git
```
+ For HTTPS protocol use the URL `https://github.com/svaksha/yaksha.git` to clone/pull the repo locally.
+ After the repo is cloned into the `~/yaksha` folder, change directory with the command `cd yaksha` to run the scripts you need. My dotfiles are stored in `~/home` with symlinks.

The [yaksha][yaksha] repository tree for is structured as below: 

### 1. Programs

+ __yaksha.sh__ :: This daemon will be wired to run all the program scripts listed below automatically. {Not Recommended.}

##### `yksh-*` : Mostly for installing OS applications and the package dependencies.
+ __yksh-apt-debian.sh__ :: An automated system installation shell script for all new Debian Jessie machines that installs the following developer stack: 
  * Atom, Vim, basher, tab completion, curl, git, GNU core utils, etc..
  * Anaconda, VirtualBox, Vagrant, Docker, etc..
  * {Database}: MySQL, PostgreSQL, SQLite, MongoDB, etc..
  * {Languages}: GCC, G++, Go, Python, Java, Javascript, R, Ruby, et al.
+ __yksh-apt-firewall.sh__ :: A program firewall to secure the machine.
+ __yksh-apt-nonfree.sh__ :: As the filename says, all the non-free stuff gets installed.
+ __yksh-apt-ubuntu.sh__ :: A shell script for Ubuntu packages.
+ __yksh-gitlab.sh__ :: Bash script to install the `gitlab` omnibus version. Use __yksh-gitlab-omni.sh__ instead.
+ __yksh-gitlab-omni.sh__ :: Program to automatically check the OS and install the `gitlab` version.
+ __yksh-julia-dev.sh__ :: This script installs __Julia__ and builds from the unstable master on github. {__Nota Bene__: I use the _master build_, so _dont_ use this script if you want stable Julia packages - some packages may have bugs and may not work with the unstable builds.}
+ __yksh-julia-stable.sh__ :: A script to install the generic Linux 64-bit binaries for Julia stable releases only. 
+ __yksh-py-anaconda.sh__ :: Installs Anaconda3.
+ __yksh-vm-debian-8.sh__ :: {WIP} The dependencies for a VM running debian-8 (jessie).

##### `yaks-*` : Backup and Update scripts.
+ __yaks-backup.py__ :: Take regular backups of my system using the attic python lib.
+ __yaks-update.sh__ :: This daemon automagically updates my Debian OS.
+ __yaks-update-julia.sh__ :: Updates and builds the julia unstable master installed via `yksh-julia-dev.sh`
+ __yaks-start-vm-docker.sh__ :: WIP.


### 2. Folders
+ __~/yaksha/dockerfiles/__ :: The dockerfiles are a WIP.
+ __~/yaksha/home/__ :: Home dotfiles and config folders for `.julia`, `.vim`, etc..
+ __~/yaksha/scripts/__ :: General scripts that dont have a particular space.

 [download]: https://github.com/svaksha/yaksha/archive/master.zip "download"

----

# COPYRIGHT & LICENSE
+ COPYRIGHT© 2005-Now [SVAKSHA](http://svaksha.com/pages/Bio) All Rights Reserved. Copyrights for code when referenced and/or attributed to other people and/or entities belongs to them as listed in the files. 
+ The [YAKSHA][yaksha] repository is licensed and distributed under the [AGPLv3 License](http://www.gnu.org/licenses/agpl-3.0.html) and ALL references, citations, copies and forks of this work must retain the Copyright, Licence (LICENSE.md file), this permission notice and attribute [credit](https://en.wikipedia.org/wiki/Creative_Commons_license#Attribution).

## Feedback
Any suggestions for improvements are [welcome](https://github.com/svaksha/yaksha/issues) via BR's !

