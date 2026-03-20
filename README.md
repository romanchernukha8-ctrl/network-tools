![Bash](https://img.shields.io/badge/Bash-Script-green)

# Network Tools for Linux using Bash

# Description
This project demonstrates how Bash scripts can be used to inspect network interfaces and perform basic network diagnostics on a Linux system.

# Technologies
- Bash
- Linux (ip, grep)

# Architecture project

```
Developer
↓
Bash Scripts
↓
Linux System
↓
Network Interfaces
↓
Output (Terminal)
```

## Project Structure

```
.
├── network-interface-checker.sh
└── README.md
```

# How to run
1. https://github.com/romanchernukha8-ctrl/network-tools.git
2. chmod +x network-interface-checker.sh
3. ./network-interface-checker.sh

# result

Example output:
Active network interfaces:

Interface: wlp3s0
IP: 192.168.178.37

Interface: br-e424673147e9
IP: 172.18.0.1

Total active interfaces: 2
