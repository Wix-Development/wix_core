if Config.Notify == 'ESX' then
    ESX = exports["es_extended"]:getSharedObject()
elseif Config.Notify == 'QB' then
    QBCore = exports['qb-core']:GetCoreObject({'Functions'})
end

function Notify(title, message, type)
    exports['wix_core']:Debug('ALL', 'Sending notification - Title: '..title..' Message: '..message..' Type: '..type)
    if Config.Notify == 'ESX' then
        ESX.ShowNotification(message)
    elseif Config.Notify == 'QB' then
        QBCore.Functions.Notify(title, type, 5000)
    elseif Config.Notify == 'OX' then
        lib.notify({
            title = title,
            description = message,
            type = type
        })
    else
        exports['wix_core']:Debug('ERROR', 'Notification system not configured correctly.')
    end
end

exports('Notify', Notify)