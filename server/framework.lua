if Framework == 'ESX' then
    ESX = exports["es_extended"]:getSharedObject()
elseif Framework == 'QB' then
    QBCore = exports['qb-core']:GetCoreObject()
end

function AddMoney(playerId, account, amount)
    exports['wix_core']:Debug('EXPORTS', 'Adding '.. account..': '.. amount..' to player: '.. playerId)
    if Framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        xPlayer.addAccountMoney(account, amount)
    elseif Framework == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        Player.Functions.AddMoney(account, amount)
    else
        exports['wix_core']:Debug('ERROR', 'Framework not configured correctly.')
    end
end

function RemoveMoney(playerId, account, amount)
    exports['wix_core']:Debug('EXPORTS', 'Removing '.. account..': '.. amount..' from player: '.. playerId)
    if Framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        xPlayer.removeAccountMoney(account, amount)
    elseif Framework == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        Player.Functions.RemoveMoney(account, amount)
    else
        exports['wix_core']:Debug('ERROR', 'Framework not configured correctly.')
    end
end

function GetMoney(playerId, account)
    exports['wix_core']:Debug('EXPORTS', 'Getting '.. account..' from player: '.. playerId)
    if Framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        return xPlayer.getAccount(account).money
    elseif Framework == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        return Player.PlayerData.money[account]
    else
        exports['wix_core']:Debug('ERROR', 'Framework not configured correctly.')
    end
end

function SetMoney(playerId, account, amount)
    exports['wix_core']:Debug('EXPORTS', 'Setting '.. account..': '.. amount..' to player: '.. playerId)
    if Framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        xPlayer.setAccountMoney(account, amount)
    elseif Framework == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        Player.Functions.SetMoney(account, amount)
    else
        exports['wix_core']:Debug('ERROR', 'Framework not configured correctly.')
    end
end

exports('AddMoney', AddMoney)
exports('RemoveMoney', RemoveMoney)
exports('GetMoney', GetMoney)
exports('SetMoney', SetMoney)