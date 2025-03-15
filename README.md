# WIX CORE
*Core script made for my resources.*

[![discord](https://img.shields.io/badge/discord-000?style=for-the-badge&logo=discord&logoColor=blue)](https://discord.gg/FNe5q8b394)

## Table of Contents
- [Installation](#installation)
- [Supported scripts](#supported-scripts)
  - [Frameworks](#frameworks)
  - [Inventory Systems](#inventory-systems)
  - [Notification Systems](#notification-systems)
- [Usage](#usage)
  - [Client](#client)
  - [Shared](#shared)
  - [Server](#server)
- [License](#license)

## Installation
To install WIX CORE, follow these steps:
1. Download the latest release from the [releases page](https://github.com/MaratWC/wix_core/releases).
2. Extract the downloaded files into your resources folder.
3. Add `ensure wix_core` to your `server.cfg` file.

## Supported Scripts

The `wix_core` script is designed to support multiple frameworks, inventory systems, and notification methods. Below is a list of supported options:

### Frameworks
- **[ESX](https://github.com/esx-framework/esx_core)**
- **[QBCore](https://github.com/qbcore-framework/qb-core)**
- **Auto Detection** (Automatically detects the installed framework)

### Inventory Systems
- **[ESX Inventory](https://github.com/esx-framework)**
- **[OX Inventory](https://github.com/overextended/ox_inventory)**
- **[QB Inventory](https://github.com/qbcore-framework/qb-inventory)**
- **Auto Detection** (Automatically detects the installed inventory system)

### Notification Systems
- **[ESX Notification](https://github.com/esx-framework)**
- **[OX Notification](https://github.com/overextended/ox_lib)**
- **[QB Notification](https://github.com/qbcore-framework)**
- **Chat Notification** (Uses the default FiveM chat)
- **Auto Detection** (Automatically detects the installed notification system)

## Usage

### Client

```lua
exports['wix_core']:Notify('Test Title', 'This is a test message', 'success')
```

### Shared

```lua
exports['wix_core']:Debug('ALL/ERROR', 'Problem found.')
```

### Server

```lua
exports['wix_core']:UpdateChecker(GetResourceMetadata(GetCurrentResourceName(), 'version', 0))
exports['wix_core']:AddItem(playerId, item, count)
exports['wix_core']:RemoveItem(playerId, item, count)
exports['wix_core']:RegisterUsableItem(item, callback)
```

## License
- This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
- You may **not** sell this script or redistribute it without providing the source code.  
- Modifications must retain original credits and use the same license (GPLv3).  
