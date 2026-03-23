# 🕸 Netcrawler

<div align="center">

<img src="https://img.shields.io/badge/bash-latest-4EAA25.svg?style=for-the-badge&logo=gnubash" alt="Bash">
<img src="https://img.shields.io/badge/license-MIT-green.svg?style=for-the-badge" alt="License">

**Terminal toolkit for network reconnaissance and security auditing**

[Usage](#usage) · [Modules](#modules)

</div>

---

Netcrawler is a modular shell-based toolkit for network testing and auditing. Each capability lives in its own module and is accessible from a single interactive menu.

```
1) Stress Test    → load test a target endpoint
2) Network Scan   → discover hosts and open ports
3) ARP Poison     → local network interception (requires authorization)
4) WiFi Attacks   → wireless network auditing
5) Audit Report   → generate a structured audit summary
```

> **For authorized testing only.** Only use against systems you own or have explicit written permission to test.

---

## Usage

```bash
chmod +x netcrawler.sh
./netcrawler.sh
```

---

## Modules

| Module | File | Purpose |
|--------|------|---------|
| Stress Test | `modules/stress.sh` | HTTP load testing |
| Network Scan | `modules/scan.sh` | Host and port discovery |
| ARP Poison | `modules/arp.sh` | LAN traffic interception |
| WiFi Attacks | `modules/wifi.sh` | Wireless auditing |
| Audit Report | `modules/audit.sh` | Report generation |

---

## License

MIT — see [LICENSE](LICENSE).

---

<div align="center">
Made with ❤️ by <a href="https://github.com/NoamFav">NoamFav</a>
</div>
