-- __          _________   __    _____                 _                                  _   
-- \ \        / /_   _\ \ / /   |  __ \               | |                                | |  
--  \ \  /\  / /  | |  \ V /    | |  | | _____   _____| | ___  _ __  _ __ ___   ___ _ __ | |_ 
--   \ \/  \/ /   | |   > <     | |  | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
--    \  /\  /   _| |_ / . \    | |__| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
--     \/  \/   |_____/_/ \_\   |_____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
--                                                            | |                             
--                                                            |_|                             
author 'Wix Development'
description 'Wix Core'
version '1.6.0'
fx_version('cerulean')
game('gta5')
lua54 'on'

shared_script 'config.lua'
shared_script 'shared/debug.lua'
shared_script 'shared/auto-detection.lua'
shared_script 'shared/config-warnings.lua'

client_script 'client/*.lua'
server_script 'server/*.lua'
shared_script '@ox_lib/init.lua' -- Can be removed if not using ox_lib notifications

exports {
    'Notify',
    'Debug'
}

server_export {
    'AddItem',
    'RemoveItem',
    'RegisterUseableItem',
    'CanCarryItem',
    'Ban',
    'AddMoney',
    'RemoveMoney',
    'GetMoney',
    'UpdateChecker',
    'SetMoney'
}