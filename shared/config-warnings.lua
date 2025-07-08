if Config.Framework == 'ESX' then
    if GetResourceState('es_extended') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Framework is set to 'ESX' but 'es_extended' resource is not started!")
    end
elseif Config.Framework == 'QBX' then
    if GetResourceState('qbx_core') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Framework is set to 'QBX' but 'qbx_core' resource is not started!")
    end
elseif Config.Framework == 'QB' then
    if GetResourceState('qb-core') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Framework is set to 'QB' but 'qb-core' resource is not started!")
    end
end

if Config.Inventory == 'OX' then
    if GetResourceState('ox_inventory') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Inventory is set to 'OX' but 'ox_inventory' resource is not started!")
    end
elseif Config.Inventory == 'ESX' then
    if GetResourceState('es_extended') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Inventory is set to 'ESX' but 'es_extended' resource is not started!")
    end
elseif Config.Inventory == 'QB' then
    if GetResourceState('qb-core') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Inventory is set to 'QB' but 'qb-core' resource is not started!")
    end
end

if Config.Notify == 'OX' then
    if GetResourceState('ox_lib') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Notify is set to 'OX' but 'ox_lib' resource is not started!")
    end
elseif Config.Notify == 'TGIANN-LUMIHUD' then
    if GetResourceState('tgiann-lumihud') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Notify is set to 'TGIANN-LUMIHUD' but 'tgiann-lumihud' resource is not started!")
    end
elseif Config.Notify == 'ESX' then
    if GetResourceState('es_extended') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Notify is set to 'ESX' but 'es_extended' resource is not started!")
    end
elseif Config.Notify == 'QBX' then
    if GetResourceState('qbx_core') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Notify is set to 'QBX' but 'qbx_core' resource is not started!")
    end
elseif Config.Notify == 'QB' then
    if GetResourceState('qb-core') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Notify is set to 'QB' but 'qb-core' resource is not started!")
    end
elseif Config.Notify == 'CHAT' then
    if GetResourceState('chat') ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.Notify is set to 'CHAT' but 'chat' resource is not started!")
    end
end