if Config.AnticheatResourceName ~= '' then
    if GetResourceState(Config.AnticheatResourceName) ~= 'started' then
        exports['wix_core']:Debug('WARNING', "Config.AnticheatResourceName is set to '" .. Config.AnticheatResourceName .. "' but the resource is not started!")
    end
end