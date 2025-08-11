local Wix = {
    Framework = Framework,
    Inventory = Inventory,
    Notify = Notify
}

local function Fetch()
    exports['wix_core']:Debug('EXPORTS', 'Server: Fetch called')
    return Wix
end

exports('Fetch', Fetch)