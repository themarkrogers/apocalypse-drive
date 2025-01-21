# Introduction

This document serves as a list of the resources needed to accomplish the tasks below: 
* source code
* schematics
* manuals
* guides
* hardware

Technical tasks to prove technology is restored:
* Read a document from a flash drive and print it onto paper.
* Recreate a small "internet" (i.e. the linux kernel, a debian OS, a web server, a ubuntu OS, a client computer, a web browser, a router, a small network, and any requisite compilers or programs).
* Create a radio tower and communicate with it via a handheld radio.
* Create a suite of scripts that, when run successfully, create a Ubuntu ISO file that can be used to install Ubuntu onto fresh hardware via a thumbdrive.
  * Moreover, this Ubuntu ISO should create a Ubuntu OS that is pre-installed with the build tools needed to compile and create an entire other Ubuntu ISO (i.e. self-replicating).
  * If possible, pre-load this ISO with the source code, if not, then package the source code for easy transmission (both offline & online).


## Broad Strokes

We'll need this hardware (at least) to accomplish those tasks:
* Batteries, power, screens, keyboards, hard drives, cpus, motherboards, ram
* A desktop computer
* A server
* A router
* A printer
* Cables: power, networking, data
* Antennae
* Raspberry Pi?
* Unmanaged switch / hub?

How-To Manuals for recreating computer hardware
* RISC-V CPU
* HDD?
* RAM?
* PCIe?
* Motherboard?
* PSU?
* Computer Case?
* Network Switch (managed & unmanaged)
* Cat5e cables?
* SATA cables?

Software to Hoard
* Code compilers & interpreters (C, C++, dotnet?, Python, JS, Rust, golang, java, lisp, ruby, )
  * gcc, g++, make, python3, node, pip3, npm, react, 
* POSIX utils (ssh, cp, cd, ftp, scp, curl, gdisk, man, rsync, sudo, etc.)
* CLI Tools (bash, zsh, vim, emacs, git, gnupg2, net-tools)
* Server Tools (ssh-server, nginx, ftp-server, ftp, sftp, Nextcloud, Samba, NFS, SMTP, Plex)
* Applications (Firefox, Thunderbird, Signal, Docker, LibreOffice, VLC, Audacity, Apache, MySQL, PHP, Doom, Plex, Steam)
* BIOSes (GRUB, mbr, etc.)
* Drivers (Wayland?, mp3, )
* Live Thumb Drives (Ubuntu, Debian, CentOS, Tails, Raspbian, Kali, Arch, Proxmox)
* Networking (opnsense, openwrt, cumulus linux)
* Repositories (apt-mirror, gitlab/gitea, pypi)
  * pytest, pipdeptree, black, flake8, pylint, requests, FastApi, plexapi, yt-dlp
* Phones (LineageOS, FDroid, GrapheneOS)
  * Certain apks? (OSMaps, Signal, Crypto wallets, etc)
* Infrastructure (software for the management of: batteries, windmills, solar panels, hydroelectrics, oil wells, etc.)
* Wireless Networks (meshtastic, wi-fi, LoRa, AM/FM radio)


# 1. Reading from a Flash Drive & Printing
1.1 Source Code & Software

* Linux Kernel & Basic OS
  * A lightweight Linux distro (e.g., Debian minimal, Alpine Linux, or something that runs well on old/salvaged hardware) including:
* * USB mass storage drivers (so you can read from flash drives).
* * Filesystem drivers (FAT32, exFAT, EXT4, etc.).
  * If you expect PDF, DOCX, or ODT files:
* * A PDF reader (e.g., evince, muPDF) or a minimal text-based viewer.
* * Document conversion tools (e.g., libreoffice --headless, pandoc).

* Printer Drivers and Basic Printing Stack
  * CUPS (Common Unix Printing System) source code.
  * Open-source drivers for the most common or older HP/PCL or PostScript printers—these can often be repaired or found secondhand.

* Compilers & Build Tools
  * GCC (GNU Compiler Collection), binutils, make, cmake, etc.
  * This is especially important if you need to recompile or port software onto unconventional/salvaged hardware.

1.2 Schematics & Manuals

* Schematics for Simple Computers
  * If you want to build or repair a simple x86 or ARM single-board computer (SBC), keep reference schematics or hardware manuals.
  * Raspberry Pi or similar SBC documentation, if that’s your go-to device.

* Printer Service Manuals
  * Particularly for robust older models like HP LaserJet 4 (or other classic workhorses).
  * Dot-matrix or older laser printers often have straightforward mechanical parts that can be maintained/salvaged.

* USB Interface Documentation
  * The USB 2.0 or 3.0 specification so you know how to troubleshoot or hack together a working USB connection if needed.

1.3 Guides

* Electronics Repair Guides
  * Something like the old-school “Radio Shack” or “Haynes” style electronics repair manuals.
  * iFixit-style teardown and repair guides for PCs, laptops, SBCs, and common printers.

* Operating System Installation & Administration
  * How to do an offline Linux install from a set of DVDs or from a local repository stored on a flash drive.

1.4 Hardware to Hoard

* A Few Known-Good, Durable Printers
  * Especially ones that can work without proprietary chips, have well-documented open-source drivers, and can handle refilled toner or generic inks.

* Computing Devices with USB Ports
  * Rugged laptops or single-board computers capable of booting a standard Linux distro from local storage.

* Spare Parts and Consumables
  * Printer toner, ink cartridges, or raw bulk ink/toner powder.
  * Replacement belts, rollers, fuser assemblies for laser printers, or print heads for inkjets if you can store them.

# 2. Recreating a Small “Internet”

You want a minimal ecosystem to run a local network with servers, clients, and a router—enough to host local web pages, share files, and compile software.
2.1 Source Code & Software

* Linux Kernel & Distributions
  * Full Linux kernel source plus older and stable releases.
  * A full Debian or Ubuntu repository archive (if you have the storage)—or at least the essential packages (coreutils, bash, ssh, web server, etc.).
  * A more compact approach is a “snapshot” of Debian or Ubuntu DVD ISOs for offline installation.

* Compilers & Toolchains
  * GCC, binutils, GLIBC, BusyBox, musl, and other fundamental toolchains.
  * Cross-compilers for ARM/x86 if you anticipate a variety of salvage hardware.

* Web Server Software
  * Apache HTTPD, Nginx, or Lighttpd source and documentation.
  * A simple wiki engine or local HTML docs to serve as a knowledge base.

* Web Browsers
  * Firefox or Chromium source is huge, but you can keep older versions or lighter browsers (e.g., NetSurf, Lynx, or Dillo).
  * If you do keep something large like Firefox/Chromium, keep build instructions and dependencies.

* Router Firmware & Network Tools
  * OpenWrt or DD-WRT source code for common home routers.
  * Standard network utilities (dnsmasq, hostapd, iptables, openvpn, wireguard, etc.).

* Database & Other Server Tools
  * SQLite for small local data.
  * Possibly MySQL/MariaDB or PostgreSQL if you need more robust database capabilities.

2.2 Schematics & Manuals

* Router & Switch Hardware Schematics
  * Popular models from Linksys, Netgear, TP-Link (so you can salvage or repair them).
  * Ethernet pinouts, bridging instructions, PoE (Power over Ethernet) references, etc.

* Motherboard & SBC Documentation
  * Full board-level schematics for a few widely available chipsets or single-board computers (Raspberry Pi, BeagleBone, old Intel/AMD boards).

* Electronics & Network Cabling
  * How to manufacture or repair Ethernet cables (RJ45 pinouts, crimping instructions).
  * If going wireless, antenna building and Wi-Fi radio frequency references.

2.3 Guides

* System Administration
  * Debian/Ubuntu system administration guides (user management, networking, package management).
  * How to configure DNS, DHCP, firewall rules, etc.

* Linux From Scratch
  * A copy of the Linux From Scratch (LFS) and Beyond Linux From Scratch documentation, in case you need to rebuild the entire system from raw source.

* Database and Web Development
  * Basic instructions on setting up a LAMP/LEMP stack (Linux, Apache/Nginx, MySQL/PostgreSQL, PHP/Python).

* Offline Mirror Maintenance
  * Guides for setting up a local Debian/Ubuntu package mirror from stored ISO images or an archive.

2.4 Hardware to Hoard

* At Least Two Functional Computers
  * One acting as a server/router, another as a client.
  * Ideally store extra HDDs/SSDs for redundancy and backups.

* Spare Networking Gear
  * Routers, switches, hubs, Wi-Fi access points, plus cables and connectors.
  * Even a basic 5-port or 8-port switch is extremely helpful for small networks.

* Storage Media
  * External hard drives or robust optical media (e.g. M-DISCs) containing your OS/package repositories, how-to PDFs, and source code.
  * USB flash drives can degrade over time; keep multiple copies in sealed containers.

* Power Solutions
  * A reliable means to power your network gear, such as solar panels + batteries, or a small generator.

# 3. Creating a Radio Tower and Communicating via Handheld Radio
3.1 Source Code & Software (Radio-Related)

* Software-Defined Radio (SDR) Tools
  * GNU Radio, rtl-sdr drivers, and other open-source SDR software if you want advanced capabilities.
  * Packet radio software (e.g., direwolf, ax25 utilities) if you plan to do data transmissions.

* Firmware for Common Radios
  * Some handheld radios (e.g., Baofeng, Yaesu, Kenwood) allow firmware mods or channel programming.
  * Keep codeplugs, channel config software, and any open-source ham radio firmware if it exists for your device.

3.2 Schematics & Manuals

* ARRL (American Radio Relay League) Handbooks
  * These are gold mines of knowledge about antennas, tower building, repeaters, radio propagation, and electronics.
  * Old ARRL handbooks cover tube radios, transistor radios, HF/VHF/UHF designs, and more.

* Antenna Design & Tower Erection Guides
  * Simple dipole and vertical antenna designs for HF, VHF, and UHF.
  * Instructions on how to safely erect a small tower or mast, ground systems, lightning protection.

* Radio Repeater Manuals
  * If building a local repeater from salvaged mobile or base station radios, you’ll want schematics and instructions for linking them to a controller.

3.3 Guides

* Basic Electronics & RF Theory
  * Understanding of Ohm’s law, resonant circuits, amplifiers, filters, SWR (standing wave ratio), and power.
  * Book references: The ARRL Handbook for Radio Communications, The ARRL Antenna Book, or any thorough older electronics textbooks.

* Handheld Radio Operation & Programming
  * Step-by-step instructions for programming frequencies, offsets, PL tones, and so on.

* Emergency Power and Off-Grid Ops
  * Battery maintenance, solar or pedal-powered generators for running radio equipment.
  * Low-power operation techniques (QRP in ham radio lingo).

3.4 Hardware to Hoard

* Handheld Radios (VHF/UHF)
  * Popular budget models (e.g., Baofeng UV-5R) plus spare batteries, battery eliminators, or ways to adapt them to AA/AAA batteries or external power.

* HF or VHF Base Station Radios
  * If you want longer-range comms, an HF rig or a 2m/70cm base station with higher power output (and the manual to service it).

* Antenna Components
  * Wire spools, coax cable (RG-58, RG-8, LMR-series), connectors (PL-259, BNC, N-type).
  * Masts, guy wires, grounding rods, insulators.

* Tower Sections or Salvageable Steel
  * Triangular tower segments or the knowledge to weld/build sturdy structures.
  * Climbing harnesses, ropes, pulleys for safe assembly if you’re going above a certain height.


# Putting It All Together

* Organize and Catalog Everything
  * Store digital copies on multiple media (hard drives, USB sticks, optical discs) with printed indexes and references to what is stored where.
  * Keep crucial documents (like electronics repair manuals, ARRL handbooks) in physical book form if possible.

* Maintain Redundancy
  * Have multiple copies of key software (OS install images, kernel source, compilers).
  * Keep backups of your documents in geographically separate locations if feasible.

* Choose Durable Storage Formats
  * High-quality paper printouts for the most critical diagrams and instructions.
  * Archival optical discs (e.g., M-DISC) or microfilm for super-long-term durability.

* Practice Now
  * Familiarize yourself with radio communication, basic Linux system administration, and printer repair before you actually need to rebuild them from scratch.

* Ensure a Reliable Power Supply
  * All these tasks—computing, printing, networking, radio—require electricity.
  * Preserve knowledge on setting up small solar, wind, or hydro generators, and keep relevant parts.
