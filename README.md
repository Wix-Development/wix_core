# WIX CORE
*Core script made for my resources.*

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
  - [Client](#client)
  - [Shared](#shared)
  - [Server](#server)
- [License](#license)

## Installation
To install the WIX CORE script, follow these steps:
1. Download the latest release from the [releases page](https://github.com/your-repo/wix_core/releases).
2. Extract the downloaded files into your resources folder.
3. Add `ensure wix_core` to your `server.cfg` file.

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
