if Config.Framework == 'auto' then
    if GetResourceState('es_extended') == 'started' then
        Config.Framework = 'ESX'
        exports['wix_core']:Debug('ALL', 'Auto-detected ESX framework')
    elseif GetResourceState('qb-core') == 'started' then
        Config.Framework = 'QB'
        exports['wix_core']:Debug('ALL', 'Auto-detected QB framework')
    else
        exports['wix_core']:Debug('ERROR', 'No framework detected.')
    end
end

if Config.Inventory == 'auto' then
    if GetResourceState('ox_inventory') == 'started' then
        Config.Inventory = 'OX'
        exports['wix_core']:Debug('ALL', 'Auto-detected OX inventory')
    elseif GetResourceState('es_extended') == 'started' then
        Config.Inventory = 'ESX'
        exports['wix_core']:Debug('ALL', 'Auto-detected ESX inventory')
    elseif GetResourceState('qb-core') == 'started' then
        Config.Inventory = 'QB'
        exports['wix_core']:Debug('ALL', 'Auto-detected QB inventory')
    else
        exports['wix_core']:Debug('ERROR', 'No inventory system detected.')
    end
end

if Config.Notify == 'auto' then
    if GetResourceState('ox_lib') == 'started' then
        Config.Notify = 'OX'
        exports['wix_core']:Debug('ALL', 'Auto-detected OX notifications')
    elseif GetResourceState('es_extended') == 'started' then
        Config.Notify = 'ESX'
        exports['wix_core']:Debug('ALL', 'Auto-detected ESX notifications')
    elseif GetResourceState('qb-core') == 'started' then
        Config.Notify = 'QB'
        exports['wix_core']:Debug('ALL', 'Auto-detected QB notifications')
    else
        exports['wix_core']:Debug('ERROR', 'No notifications system detected.')
    end
end