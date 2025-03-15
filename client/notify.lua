function Notify(title, message, type)
    exports['wix_core']:Debug('EXPORTS', 'Sending notification - Title: '..title..' Message: '..message..' Type: '..type)
    if Notifications == 'ESX' then
        ESX.ShowNotification(message)
    elseif Notifications == 'QB' then
        QBCore.Functions.Notify(title, type, 5000)
    elseif Notifications == 'OX' then
        lib.notify({
            title = title,
            description = message,
            type = type
        })
    elseif Notifications == 'CHAT' then
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {title, message}
          })
    else
        exports['wix_core']:Debug('ERROR', 'Notification system not configured correctly.')
    end
end

exports('Notify', Notify)