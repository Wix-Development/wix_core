# WIX CORE
![banner_small](https://github.com/user-attachments/assets/b7ac06ab-aee0-41ea-b7c0-d0b3c2cc18b2)

*Core script made for our resources.*

## Table of Contents
- [Installation](#installation)
- [Supported scripts](#supported-scripts)
  - [Frameworks](#frameworks)
  - [Inventory Systems](#inventory-systems)
  - [Notification Systems](#notification-systems)
  - [Anticheats](#anticheats)
- [Usage](#usage)
  - [Client](#client)
  - [Shared](#shared)
  - [Server](#server)
- [License](#license)

## Installation
To install WIX CORE, follow these steps:
1. Download the latest release from the [releases page](https://github.com/MaratWC/wix_core/releases).
2. Extract the downloaded files into your resources folder.
3. Make sure the resource is called `wix_core`.
4. Add `ensure wix_core` to your `server.cfg` file.

## Supported Scripts

The `wix_core` script is designed to support multiple frameworks, inventory systems, notification methods, and anticheats. If you miss any scripts feel free to make a pull request or message me on discord to add them. Below is a list of supported options:

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

### Anicheats
- **[WX Anticheat](https://anticheat.wx0.dev)**
- **[Fiveguard](https://fiveguard.net)**

## Usage

### Client

```lua
exports['wix_core']:Notify(title, message, type)
```

### Shared

```lua
exports['wix_core']:Debug('ERROR/INFO/EXPORTS/RESOURCES', 'Problem found.')
```

### Server

```lua
exports['wix_core']:UpdateChecker(GetResourceMetadata(GetCurrentResourceName(), 'version', 0))
exports['wix_core']:AddItem(playerId, item, amount)
exports['wix_core']:RemoveItem(playerId, item, amount)
exports['wix_core']:CanCarryItem(playerId, item, amount)
exports['wix_core']:RegisterUseableItem(item, callback)
exports['wix_core']:Ban(playerId, reason)
exports['wix_core']:AddMoney(playerId, account, amount)
exports['wix_core']:RemoveMoney(playerId, account, amount)
exports['wix_core']:GetMoney(playerId, account)
exports['wix_core']:SetMoney(playerId, account, amount)
exports['wix_core']:Notify(playerId, title, message, type)
```

## License
- This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
- You may **not** sell this script or redistribute it without providing the source code.  
- Modifications must retain original credits and use the same license (GPLv3).  
