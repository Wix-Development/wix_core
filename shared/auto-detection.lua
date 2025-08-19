if Config.Framework ~= 'auto' then
    Framework = Framework
end

if Config.Framework == 'auto' then
    if GetResourceState('es_extended') == 'started' then
        Framework = 'ESX'
        exports['wix_core']:Debug('INFO', 'Auto-detected ESX framework')
    elseif GetResourceState('qbx_core') == 'started' then
        Framework = 'QBX'
        exports['wix_core']:Debug('INFO', 'Auto-detected QBX framework')
    elseif GetResourceState('qb-core') == 'started' then
        Framework = 'QB'
        exports['wix_core']:Debug('INFO', 'Auto-detected QB framework')
    else
        exports['wix_core']:Debug('ERROR', 'No framework detected.')
    end
end

if Config.Inventory ~= 'auto' then
    Inventory = Config.Inventory
end

if Config.Inventory == 'auto' then
    if GetResourceState('ox_inventory') == 'started' then
        Inventory = 'OX'
        exports['wix_core']:Debug('INFO', 'Auto-detected OX inventory')
    elseif GetResourceState('es_extended') == 'started' then
        Inventory = 'ESX'
        exports['wix_core']:Debug('INFO', 'Auto-detected ESX inventory')
    elseif GetResourceState('qb-core') == 'started' then
        Inventory = 'QB'
        exports['wix_core']:Debug('INFO', 'Auto-detected QB inventory')
    else
        exports['wix_core']:Debug('ERROR', 'No inventory system detected.')
    end
end

if Config.Notify ~= 'auto' then
    Notifications = Config.Notify
end

if Config.Notify == 'auto' then
    if GetResourceState('ox_lib') == 'started' then
        Notifications = 'OX'
        exports['wix_core']:Debug('INFO', 'Auto-detected OX notifications')
    elseif GetResourceState('okokNotify') == 'started' then
        Notifications = 'OKOK'
        exports['wix_core']:Debug('INFO', 'Auto-detected OKOK notifications')
    elseif GetResourceState('es_extended') == 'started' then
        Notifications = 'ESX'
        exports['wix_core']:Debug('INFO', 'Auto-detected ESX notifications')
    elseif GetResourceState('qbx_core') == 'started' then
        Notifications = 'QBX'
        exports['wix_core']:Debug('INFO', 'Auto-detected QBX notifications')
    elseif GetResourceState('qb-core') == 'started' then
        Notifications = 'QB'
        exports['wix_core']:Debug('INFO', 'Auto-detected QB notifications')
    elseif GetResourceState('chat') == 'started' then
        Notifications = 'CHAT'
        exports['wix_core']:Debug('INFO', 'Auto-detected Chat notifications')
    else
        exports['wix_core']:Debug('ERROR', 'No notifications system detected.')
    end
end