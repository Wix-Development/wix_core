function Notify(title, message, type)
    if not title or title == '' then
        exports['wix_core']:Debug('ERROR', 'Notify: title is required')
        return
    end
    
    if not message or message == '' then
        exports['wix_core']:Debug('ERROR', 'Notify: message is required')
        return
    end
    
    if not type or type == '' then
        type = 'info'
        exports['wix_core']:Debug('EXPORTS', "Notify: No type specified, defaulting to 'info'.")
    end
    
    exports['wix_core']:Debug('EXPORTS', 'Client Notify - Title: '..title..' Message: '..message..' Type: '..type)
    if Notifications == 'ESX' then
        exports['esx_notify']:Notify(type, message, 2000, title) 
    elseif Notifications == 'QB' then
        QBCore.Functions.Notify(title, type, 5000)
    elseif Notifications == 'OX' then
        lib.notify({
            title = title,
            description = message,
            type = type
        })
    elseif Notifications == 'CHAT' then
        if type == 'error' then
            TriggerEvent('chat:addMessage', {
                color = { 255, 0, 0},
                multiline = true,
                args = {title, message}
              })
        elseif type == 'success' then
            TriggerEvent('chat:addMessage', {
                color = { 0, 255, 0},
                multiline = true,
                args = {title, message}
              })
        elseif type == 'info' then
            TriggerEvent('chat:addMessage', {
                color = { 0, 0, 255},
                multiline = true,
                args = {title, message}
              })
        else
            TriggerEvent('chat:addMessage', {
                color = { 255, 255, 255},
                multiline = true,
                args = {title, message}
              })
        end
    elseif Notifications == 'QBX' then
        exports.qbx_core:Notify(message, type)
    else
        exports['wix_core']:Debug('ERROR', 'Notification system not configured correctly.')
    end
end

exports('Notify', Notify)

RegisterNetEvent('wix_core:notify', function(title, message, type)
    Notify(title, message, type)
end)