if Inventory == 'ESX' then
    ESX = exports["es_extended"]:getSharedObject()
elseif Inventory == 'QB' then
    QBCore = exports['qb-core']:GetCoreObject({'Functions'})
end

function AddItem(playerId, item, amount)
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

function RegisterUsableItem(item, callback)
    exports['wix_core']:Debug('EXPORTS', 'Registering usable item: ' .. item)
    if Framework == 'ESX' then
        ESX.RegisterUsableItem(item, callback)
    elseif Framework == 'QB' then
        QBCore.Functions.CreateUseableItem(item, callback)
    else
        exports['wix_core']:Debug('ERROR', 'Inventory system not configured correctly.')
    end
end

function CanCarryItem(playerId, item, amount)
    exports['wix_core']:Debug('EXPORTS', 'Checking if player: '.. playerId..'can carry item: '.. item..'amount: '.. amount)
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
exports('RegisterUsableItem', RegisterUsableItem)
exports('CanCarryItem', CanCarryItem)