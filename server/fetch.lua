local Wix = {
    Framework = Framework,
    Inventory = Inventory,
    Notify = Notify,
    Anticheat = Config.Anticheat,
    AnticheatResourceName = Config.AnticheatResourceName
}

local function Fetch()
    exports['wix_core']:Debug('EXPORTS', 'Server: Fetch called')
    return Wix
end

exports('Fetch', Fetch)