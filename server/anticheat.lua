function Ban(playerId, reason)
    if not playerId or playerId == '' then
        exports['wix_core']:Debug('ERROR', 'Ban: playerId is required')
        return
    end
    
    if not reason or reason == '' then
        exports['wix_core']:Debug('ERROR', 'Ban: reason is required')
        return
    end
    
    exports['wix_core']:Debug('EXPORTS', 'Banning player: ' .. playerId .. ', for: "' .. reason .. '"')
    if Config.Anticheat == 'WX' then
        exports[Config.AnticheatResourceName]:ban(playerId, reason)
    elseif Config.Anticheat == 'FIVEGUARD' then
        exports[Config.AnticheatResourceName]:fg_BanPlayer(playerId, reason, true)
    else
        exports['wix_core']:Debug('ERROR', 'Anticheat system not configured correctly.')
    end
end

exports('Ban', Ban)