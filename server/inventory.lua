if Framework == 'ESX' then
    ESX = exports["es_extended"]:getSharedObject()
elseif Framework == 'QB' then
    QBCore = exports['qb-core']:GetCoreObject({'Functions'})
end

function AddItem(playerId, item, amount)
    if not playerId or playerId == '' then
        exports['wix_core']:Debug('ERROR', 'AddItem: playerId is required')
        return
    end
    
    if not item or item == '' then
        exports['wix_core']:Debug('ERROR', 'AddItem: item is required')
        return
    end
    
    if not amount or amount <= 0 then
        exports['wix_core']:Debug('ERROR', 'AddItem: amount must be a positive number')
        return
    end
    
    exports['wix_core']:Debug('EXPORTS', 'Adding item: ' .. item .. ' amount: ' .. amount .. ' to player: ' .. playerId)
    if Inventory == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        xPlayer.addInventoryItem(item, amount)
    elseif Inventory == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        Player.Functions.AddItem(item, amount)
    elseif Inventory == 'OX' then
        exports.ox_inventory:AddItem(playerId, item, amount)
    else
        exports['wix_core']:Debug('ERROR', 'Inventory system not configured correctly.')
    end
end

function RemoveItem(playerId, item, amount)
    if not playerId or playerId == '' then
        exports['wix_core']:Debug('ERROR', 'RemoveItem: playerId is required')
        return
    end
    
    if not item or item == '' then
        exports['wix_core']:Debug('ERROR', 'RemoveItem: item is required')
        return
    end
    
    if not amount or amount <= 0 then
        exports['wix_core']:Debug('ERROR', 'RemoveItem: amount must be a positive number')
        return
    end
    
    exports['wix_core']:Debug('EXPORTS', 'Removing item: ' .. item .. ' amount: ' .. amount .. ' from player: ' .. playerId)
    if Inventory == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        xPlayer.removeInventoryItem(item, amount)
    elseif Inventory == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        Player.Functions.RemoveItem(item, amount)
    elseif Inventory == 'OX' then
        exports.ox_inventory:RemoveItem(playerId, item, amount)
    else
        exports['wix_core']:Debug('ERROR', 'Inventory system not configured correctly.')
    end
end

function RegisterUseableItem(item, callback)
    if not item or item == '' then
        exports['wix_core']:Debug('ERROR', 'RegisterUseableItem: item is required')
        return
    end
    
    if not callback or type(callback) ~= 'function' then
        exports['wix_core']:Debug('ERROR', 'RegisterUseableItem: callback must be a function')
        return
    end
    
    exports['wix_core']:Debug('EXPORTS', 'Registering usable item: ' .. item)
    if Framework == 'ESX' then
        ESX.RegisterUsableItem(item, callback)
    elseif Framework == 'QB' then
        QBCore.Functions.CreateUseableItem(item, callback)
    elseif Framework == 'QBX' then
        exports.qbx_core:CreateUseableItem(item, callback)
    else
        exports['wix_core']:Debug('ERROR', 'Inventory system not configured correctly.')
    end
end

function CanCarryItem(playerId, item, amount)
    if not playerId or playerId == '' then
        exports['wix_core']:Debug('ERROR', 'CanCarryItem: playerId is required')
        return false
    end
    
    if not item or item == '' then
        exports['wix_core']:Debug('ERROR', 'CanCarryItem: item is required')
        return false
    end
    
    if not amount or amount <= 0 then
        exports['wix_core']:Debug('ERROR', 'CanCarryItem: amount must be a positive number')
        return false
    end
    
    exports['wix_core']:Debug('EXPORTS', 'Checking if player: '.. playerId..' can carry item: '.. item..' amount: '.. amount)
    if Inventory == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        return xPlayer.canCarryItem(item, amount)
    elseif Inventory == 'QB' then
        return exports['qb-inventory']:CanAddItem(playerId, item, amount)
    elseif Inventory == 'OX' then
        return exports.ox_inventory:CanCarryItem(playerId, item, amount)
    else
        exports['wix_core']:Debug('ERROR', 'Inventory system not configured correctly.')
    end
end

exports('AddItem', AddItem)
exports('RemoveItem', RemoveItem)
exports('RegisterUseableItem', RegisterUseableItem)
exports('CanCarryItem', CanCarryItem)
