function Debug(type, message)
    local validTypes = {
        ['ERROR'] = true,
        ['INFO'] = true,
        ['EXPORTS'] = true,
        ['RESOURCES'] = true
    }

    if not validTypes[type] then
        print('^1['..GetInvokingResource()..'] [ERROR] ^7Invalid debug type: '..tostring(type))
        return
    end

    if not Config.Debug[type] then return end

    local colors = {
        ['ERROR'] = '^1',
        ['INFO'] = '^4',
        ['EXPORTS'] = '^3',
        ['RESOURCES'] = '^3'
    }

    local color = colors[type] or '^7'
    print(color..'['..GetInvokingResource()..'] ['..type..'] ^7'..message)
end

exports('Debug', Debug)