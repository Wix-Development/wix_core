if Framework == 'ESX' then
    ESX = exports["es_extended"]:getSharedObject()
elseif Framework == 'QB' then
    QBCore = exports['qb-core']:GetCoreObject()
end

function AddMoney(playerId, account, amount)
    if not playerId or playerId == '' then
        exports['wix_core']:Debug('ERROR', 'AddMoney: playerId is required')
        return
    end
    
    if not account or account == '' then
        exports['wix_core']:Debug('ERROR', 'AddMoney: account is required')
        return
    end
    
    if not amount or amount <= 0 then
        exports['wix_core']:Debug('ERROR', 'AddMoney: amount must be a positive number')
        return
    end
    
    exports['wix_core']:Debug('EXPORTS', 'Adding '.. account..': '.. amount..' to player: '.. playerId)
    if Framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        xPlayer.addAccountMoney(account, amount)
    elseif Framework == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        Player.Functions.AddMoney(account, amount)
    elseif Framework == 'QBX' then
        exports.qbx_core:AddMoney(playerId, account, amount, 'wix_core')
    else
        exports['wix_core']:Debug('ERROR', 'Framework not configured correctly.')
    end
end

function RemoveMoney(playerId, account, amount)
    if not playerId or playerId == '' then
        exports['wix_core']:Debug('ERROR', 'RemoveMoney: playerId is required')
        return
    end
    
    if not account or account == '' then
        exports['wix_core']:Debug('ERROR', 'RemoveMoney: account is required')
        return
    end
    
    if not amount or amount <= 0 then
        exports['wix_core']:Debug('ERROR', 'RemoveMoney: amount must be a positive number')
        return
    end
    
    exports['wix_core']:Debug('EXPORTS', 'Removing '.. account..': '.. amount..' from player: '.. playerId)
    if Framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        xPlayer.removeAccountMoney(account, amount)
    elseif Framework == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        Player.Functions.RemoveMoney(account, amount)
    elseif Framework == 'QBX' then
        exports.qbx_core:RemoveMoney(playerId, account, amount, 'wix_core')
    else
        exports['wix_core']:Debug('ERROR', 'Framework not configured correctly.')
    end
end

function GetMoney(playerId, account)
    if not playerId or playerId == '' then
        exports['wix_core']:Debug('ERROR', 'GetMoney: playerId is required')
        return 0
    end
    
    if not account or account == '' then
        exports['wix_core']:Debug('ERROR', 'GetMoney: account is required')
        return 0
    end
    
    exports['wix_core']:Debug('EXPORTS', 'Getting '.. account..' from player: '.. playerId)
    if Framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        return xPlayer.getAccount(account).money
    elseif Framework == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        return Player.PlayerData.money[account]
    elseif Framework == 'QBX' then
        return exports.qbx_core:GetMoney(playerId, account)
    else
        exports['wix_core']:Debug('ERROR', 'Framework not configured correctly.')
    end
end

function SetMoney(playerId, account, amount)
    if not playerId or playerId == '' then
        exports['wix_core']:Debug('ERROR', 'SetMoney: playerId is required')
        return
    end
    
    if not account or account == '' then
        exports['wix_core']:Debug('ERROR', 'SetMoney: account is required')
        return
    end
    
    if not amount or amount < 0 then
        exports['wix_core']:Debug('ERROR', 'SetMoney: amount must be a non-negative number')
        return
    end
    
    exports['wix_core']:Debug('EXPORTS', 'Setting '.. account..': '.. amount..' to player: '.. playerId)
    if Framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        xPlayer.setAccountMoney(account, amount)
    elseif Framework == 'QB' then
        local Player = QBCore.Functions.GetPlayer(playerId)
        Player.Functions.SetMoney(account, amount)
    elseif Framework == 'QBX' then
        exports.qbx_core:SetMoney(playerId, account, amount, 'wix_core')
    else
        exports['wix_core']:Debug('ERROR', 'Framework not configured correctly.')
    end
end

exports('AddMoney', AddMoney)
exports('RemoveMoney', RemoveMoney)
exports('GetMoney', GetMoney)
exports('SetMoney', SetMoney)