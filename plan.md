# Goal:

> House specific code, documents, and programs that I think are valuable for personal preservation.

Desktops & Laptops
* Self-replicating Linux OSes
  * 1 Ubuntu & 1 Debian
* Linux OSes to backup
  * Tails, Arch, Kali, Raspberry Pi Os, CentOS

Networking
* Hardware
  * 2+ Laptops/Devices
  * Router/Firewall (e.g. protectli vault)
  * 1 Unmanaged switch
  * Several cat5e cables
* Firmware
  * OPNsense
  * Cumulus Linux? (for managed switches)
  * OpenWRT (for WAPs)
* Software

Stretch goals
* Local backup of repos
  * apt-mirror
  * gitlab/gitea
  * pypi (pytest, pipdeptree, black, flake8, pylint, requests, FastApi, plexapi, yt-dlp)?
* Phones
  * LineageOS, FDroid, GrapheneOS
  * Backup certain app apks?
* Knowledge
  * Wikipedia
  * Books



## Self-Replicating Linux OS

My goal is to create a suite of scripts that, when run successfully, create a Ubuntu ISO file that 
can be used to install Ubuntu onto fresh hardware. 

Moreover, this Ubuntu ISO should create a Ubuntu OS that is pre-installed with the build tools 
needed to compile and create an entire other Ubuntu ISO (i.e. self-replicating).

If possible, pre-load this ISO with the source code, if not, then package the source code for easy 
transmission (both offline & online).


# Source code to be pre-loaded

OS
* Linux Kernel (LTS & Stable)
* Ubuntu Base System (LTS & Stable)
* Wayland?

Shells
* Bash
* Zsh

CLI tools
* curl
* gdisk
* git
* gnupg2
* man
* net-tools
* rsync
* sudo
* vim
* docker
* (support for mp3)

Server Tools
* ssh-server
* nginx
* ftp-server
* Nextcloud?
* FTP & FTP Server?
* Samba?
* NFS?
* SMTP server?
* Plex Server?

Build Tools
* gcc
* make

SDKs
* c
* C#?
* c++
* golang
* java
* javascript
* lisp
* python3 (+venv +pip)
* ruby
* rust
* React & Node

Applications
* Firefox (+Arkenfox?)
* LibreOffice
* VLC
* Audacity
* Apache
* MySQL
* PHP
* Doom
* Plex App?
* Steam?


# Generating the ISO

Cubic (Custom Ubuntu ISO Creator): It provides an interactive terminal for customizing Ubuntu ISOs, 
and you can pre-install packages or scripts to automate the next ISO creation.

Live-build: A more complex but flexible tool that can be used to fully automate the generation of a 
custom Ubuntu live system.


