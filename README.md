# 🍵 TeaOS

**TeaOS** is a modern, experimental Linux operating system built on top of Fedora using bootable container technology.

TeaOS focuses on **immutability, simplicity, and performance**, while still allowing deep customization for developers and enthusiasts.

---

## ✨ Features

* 🧊 Immutable system design using bootable containers
* 🐧 Based on Fedora 41
* ⚡ Fast updates and atomic deployments with bootc
* 🖥 GNOME desktop environment
* 🧰 Developer-friendly environment
* 📦 Container-based system builds
* 💻 ISO installer with Anaconda

---

## 🧠 Philosophy

TeaOS aims to combine the reliability of immutable systems with the flexibility developers expect.

Inspired by modern Linux distributions that separate the **base operating system** from **user customization**, TeaOS allows experimentation without breaking the core system.

---

## 🏗 Architecture

TeaOS is built using a layered model:

Base System
↓
Fedora bootc
↓
TeaOS Container Image
↓
Disk Images / ISO Installer

The system is deployed using container images and installed using the Anaconda installer.

---

## 📀 Installation

1. Download the TeaOS ISO from the releases page.
2. Flash it to a USB drive using tools like Rufus or BalenaEtcher.
3. Boot your computer from the USB drive.
4. Follow the installer instructions.

After installation, the system deploys the TeaOS container image.

---

## 🔧 Development

TeaOS is built using container-based tooling.

Main components:

* Containerfile
* build scripts
* disk configuration
* GitHub Actions build pipeline

Build outputs include:

* ISO installer
* QCOW2 disk images
* raw disk images

---

## 🚀 Roadmap

Planned features:

* TeaOS branding and theme
* custom boot experience
* system configuration tools
* gaming optimizations
* hardware compatibility improvements

---

## 🤝 Contributing

Contributions are welcome.

You can help by:

* reporting bugs
* improving documentation
* testing builds
* suggesting features

---

## 📜 License

TeaOS follows the licensing of its upstream components, primarily Fedora and other open source software.

---

## ☕ TeaOS

> Simple. Modern. Hackable.
