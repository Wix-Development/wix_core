function Debug(type, message)
    if Config.Debug == 'ALL' then
        if type == 'ERROR' then
            print('^1['..GetInvokingResource()..'] ['..type..'] ^7'..message)
        elseif type == 'ALL' then
            print('^3['..GetInvokingResource()..'] ['..type..'] ^7'..message)
        else
            print('^1['..GetInvokingResource()..'] [ERROR] ^7Invalid debug type: '..type)
        end
    elseif Config.Debug == 'ERROR' then
        if type == 'ERROR' then
            print('^1['..GetInvokingResource()..'] ['..type..'] ^7'..message)
        elseif type  ~= 'ERROR' or 'ALL'  then
            print('^1['..GetInvokingResource()..'] [ERROR] ^7Invalid debug type: '..type)
        end
    end
end

exports('Debug', Debug)