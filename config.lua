-- __          _________   __    _____                 _                                  _   
-- \ \        / /_   _\ \ / /   |  __ \               | |                                | |  
--  \ \  /\  / /  | |  \ V /    | |  | | _____   _____| | ___  _ __  _ __ ___   ___ _ __ | |_ 
--   \ \/  \/ /   | |   > <     | |  | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
--    \  /\  /   _| |_ / . \    | |__| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
--     \/  \/   |_____/_/ \_\   |_____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
--                                                            | |                             
--                                                            |_|                             
Config = {}

---------------- GENERAL SETTINGS ----------------
Config.UpdateChecker = true -- Enable or disable automatic version checking on resource start

---------------- DEBUG OPTIONS ----------------
Config.Debug = {
    ['ERROR'] = true,    -- Enable or disable the logging of error messages
    ['WARNING'] = true, -- Enable or disable the logging of warning messages
    ['INFO'] = true,     -- Enable or disable the logging of information messages
    ['EXPORTS'] = false, -- Enable or disable the logging of export function calls
    ['RESOURCES'] = false -- Enable or disable the logging of resource events
}

---------------- FRAMEWORK ----------------
-- 'ESX' - https://github.com/esx-framework/esx_core
-- 'QBX' - https://github.com/Qbox-Project/qbx_core
-- 'QB' - https://github.com/qbcore-framework/qb-core
-- 'auto' - Automatically detects the installed framework
Config.Framework = 'auto'

---------------- INVENTORY ----------------
-- 'ESX' - https://github.com/esx-framework
-- 'OX' - https://github.com/communityox/ox_inventory
-- 'QB' - https://github.com/qbcore-framework/qb-inventory
-- 'auto' - Automatically detects the installed inventory system
Config.Inventory = 'auto'

---------------- NOTIFY ----------------
-- 'ESX' - https://github.com/esx-framework
-- 'OX' - https://github.com/communityox/ox_lib
-- 'QBX' - https://github.com/Qbox-Project/qbx_core
-- 'QB' - https://github.com/qbcore-framework
-- 'CHAT' - Uses the default FiveM chat
-- 'auto' - Automatically detects the installed notification system
Config.Notify = 'ESX'

---------------- ANTICHEAT ----------------
-- 'WX' - https://anticheat.wx0.dev
-- 'FIVEGUARD' - https://fiveguard.net
Config.Anticheat = ''
Config.AnticheatResourceName = '' -- The name of the anticheat resource