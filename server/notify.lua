function Notify(playerId, title, message, type)
    if not playerId or playerId == '' then
        exports['wix_core']:Debug('ERROR', 'Notify: playerId is required')
        return
    end
    
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
    
    exports['wix_core']:Debug('EXPORTS', 'Server Notify - Player: '..playerId..' Title: '..title..' Message: '..message..' Type: '..type)
    
    if playerId == -1 then
        TriggerClientEvent('wix_core:notify', -1, title, message, type)
    else
        TriggerClientEvent('wix_core:notify', playerId, title, message, type)
    end
end

exports('Notify', Notify)