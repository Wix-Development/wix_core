if Framework == 'ESX' then
    ESX = exports["es_extended"]:getSharedObject()
elseif Framework == 'QB' then
    QBCore = exports['qb-core']:GetCoreObject({'Functions'})
end

function AddItem(playerId, item, count)
    exports['wix_core']:Debug('EXPORTS', 'Adding item: ' .. item .. ' Count: ' .. count .. ' to player: ' .. playerId)
    if Inventory == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        xPlayer.addInventoryItem(item, count)
    elseif Inventory == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        Player.Functions.AddItem(item, count)
    elseif Inventory == 'OX' then
        exports.ox_inventory:AddItem(playerId, item, count)
    else
        exports['wix_core']:Debug('ERROR', 'Inventory system not configured correctly.')
    end
end

function RemoveItem(playerId, item, count)
    exports['wix_core']:Debug('EXPORTS', 'Removing item: ' .. item .. ' Count: ' .. count .. ' from player: ' .. playerId)
    if Inventory == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        xPlayer.removeInventoryItem(item, count)
    elseif Inventory == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        Player.Functions.RemoveItem(item, count)
    elseif Inventory == 'OX' then
        exports.ox_inventory:RemoveItem(playerId, item, count)
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

exports('AddItem', AddItem)
exports('RemoveItem', RemoveItem)
exports('RegisterUsableItem', RegisterUsableItem)