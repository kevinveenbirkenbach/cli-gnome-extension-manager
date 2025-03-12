# CLI GNOME Extension Manager 🚀

[![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](./LICENSE) [![Bash Version](https://img.shields.io/badge/Bash-4.x%2B-green.svg)](https://www.gnu.org/software/bash/) [![GitHub stars](https://img.shields.io/github/stars/kevinveenbirkenbach/cli-gnome-extension-manager.svg?style=social)](https://github.com/kevinveenbirkenbach/cli-gnome-extension-manager/stargazers)

Manage your GNOME extensions easily from the command line with **CLI GNOME Extension Manager**. This Bash script lets you install, update, enable, and disable GNOME extensions directly from your terminal.

## Features ✨

- **Install & Update**: Clone extension repositories and update them if already installed.
- **Compile**: Automatically compile the extension if a Makefile is provided.
- **Activate/Deactivate**: Enable or disable GNOME extensions easily using the CLI.
- **Automation-Friendly**: Perfect for power users and automation scripts.

## Requirements 🔧

- **GNOME Shell** (version 3.36+)
- **Bash** (version 4.x+)
- **Git** (for cloning repositories)
- **Make** (optional, for compiling extensions)
- **gnome-extensions** CLI tool

## Installation 📦

You can install **CLI GNOME Extension Manager** using [Kevin's Package Manager](https://github.com/kevinveenbirkenbach/pkgmgr):

```bash
pkgmgr install goexma
```

Alternatively, clone this repository:

```bash
git clone https://github.com/kevinveenbirkenbach/cli-gnome-extension-manager.git
cd cli-gnome-extension-manager
```

## Usage ⚙️

To **install and enable** an extension, run:

```bash
goexma enable <extension_name> <extension_repository_path>
```

To **disable** an extension, run:

```bash
goexma disable <extension_name>
```

The script will:
- Clone the repository if the extension isn't installed.
- Pull updates if the extension is already a Git repository.
- Compile the extension if a Makefile is present.
- Enable or disable the extension using `gnome-extensions`.

## License 📜

This project is licensed under the GNU Affero General Public License v3.0. See the [LICENSE](./LICENSE) file for details.

## Author 👨‍💻

**Kevin Veen-Birkenbach**  
- 📧 [kevin@veen.world](mailto:kevin@veen.world)  
- 🌐 [https://www.veen.world/](https://www.veen.world/)

---

Feel free to contribute, open issues, or suggest improvements. Enjoy managing your GNOME extensions effortlessly! 🌟
