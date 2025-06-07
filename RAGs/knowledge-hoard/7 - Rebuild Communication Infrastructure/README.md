# 7. Rebuild Basic Comms

This section outlines how to rebuild communication infrastructure from the circuit level up to wide-area networking. Emphasis is on salvage, low-power systems, mesh networking, and community-scale resilience.

## Building Electronics & Networks from Scratch / Scrap

Key References:
* The Art of Electronics – Horowitz & Hill (textbook)
* TM 11-685 – US Army Fundamentals of Electronics (tube + transistor)
* Getting Started in Electronics – Forrest Mims (simple visual language)

Core Topics:
* Analog vs. digital circuits
* Breadboarding and prototyping
* Component identification: resistors, capacitors, diodes, transistors
* Signal modulation: AM/FM, digital encoding, serial buses

Scavenged Component Sources:
* Power supplies: PCs, ATX units, chargers
* Capacitors & transformers: microwaves, CRT TVs, printers
* Motors & coils: fans, CD drives, old hard drives
* High-voltage parts: ignition coils, camera flash units

Improvised Battery & Power Sources:
* Saltwater or aluminum-air cells
* Hand-crank alternators, solar garden lights
* Laptop batteries & 18650 scavenging

Power Storage: See Section 6

# A. Home Network (Computers, Router, SDR/Mesh, Power)

## Objectives:

* Create an offline knowledge network
* Maintain local digital communications
* Extend with mesh radio if internet is down

Hardware:
* Laptops, Raspberry Pi, Pine64, repurposed routers
* Mesh-capable routers: OpenWRT/LibreMesh compatible
* External HDDs/SSDs with archived data
* UPS or battery bank for router + device uptime

Software:
* Syncthing – Decentralized file sharing
* Kiwix – Offline Wikipedia archive reader
* LibreMesh / cjdns – Mesh networking firmware
* Yggdrasil – Encrypted IPv6 mesh overlay network
* Etherpad, Nextcloud, Jellyfin – Community apps

Local Network Setup:
* Create isolated intranet for shared tools
* Use Ethernet for reliability where possible
* Host documentation archives, offline maps, educational content

Power Considerations:
* Low-voltage DC systems (12V) from solar bank
* Router uptime via 18650 battery pack or supercapacitor

Printable Assets:
* IP address maps
* Offline toolchain setup (how to install packages manually)

# B. Radio Comms (Antennae, Dishes, Power Boosting)

## Objectives:

* Maintain medium- and long-range contact
* Support local-to-regional coordination
* Operate fully off-grid and interoperably with other communities

Key Guides:
* ARRL Handbook (current + legacy editions)
* ARRL Emergency Communication Handbook
* "Build Your Own Transistor Radios" – Ronald Quan
* "QRP Notebook" – Low-power HAM (QRP) techniques

Radio Types:
* HF (shortwave): Global reach, ideal for relaying data
* VHF/UHF (walkie-talkies, GMRS, FRS): Local security and coordination
* LoRa (long range low power): Mesh sensors, messaging (ESP32/LoRa boards)
* CB Radio: Easy setup, vehicle-compatible

Projects:
* Build crystal radios (no power required)
* Build regenerative shortwave receivers from scrap
* Use RTL-SDR dongles for digital reception
* Repurpose old TV dishes for signal boosting

Antenna Construction:
* Dipole, Yagi, and helical antennas from coax, speaker wire
* Ground plane antennas for vertical use
* Magnetic loop antennas for stealthy urban operation

Power & Deployment:
* Backpack-based radio kits
* Rechargeable radio sets powered by solar
* Vehicle-based mobile comms stations

Comms Protocols & Usage:
* Morse code, APRS, voice relay
* Repeater use & DIY repeater setups
* Encryption/legal usage under collapse conditions

# C. Rebuilding the Internet (WAN, ISPs, DNS, Backbone)

## Goal:

To reconstruct functional data exchange between communities using low-bandwidth, high-resilience tools. Rebuild internetworking even without the legacy commercial internet.

Peer-to-Peer Networking:
* Yggdrasil, cjdns, Tor Hidden Services, IPFS
* Decentralized DNS alternatives: Handshake, Namecoin

Inter-Community Mesh Networking:
* LibreMesh and BATMAN routing
* Radio + directional Wi-Fi (Ubiquiti gear, salvaged dishes)
* LoRaMesh (text comms over 10+ km)

Data Exchange Protocols:
* Sneakernet (USB, SD card physical transfer)
* Wi-Fi dropboxes or "community bulletin servers"
* UUCP or BBS-style email/file transfers

DNS & Service Discovery:
* Local DNS zones
* Avahi/mDNS broadcasting
* Custom root server for LAN/WAN resolution

Critical Services to Rebuild:
* Time sync (NTP)
* Local repositories (Debian mirrors, Git bundles)
* Document & media archives (Project Gutenberg, Wikipedia, OpenStreetMap)

Security:
* Encryption basics: PGP, SSL certs, VPN tunnels
* Network segmentation to prevent local compromise

Future-proofing:
* Fiber splicing basics (for long-term restoration)
* Community ISPs: co-op ownership, solar backbone

Printable Diagrams:
* Mesh node maps
* Signal strength planning
* Power budget charts
* IP assignment templates
