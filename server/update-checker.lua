function UpdateChecker(version)
    if not version or version == '' then
        exports['wix_core']:Debug('ERROR', 'UpdateChecker: version is required')
        return nil
    end

    if Config.UpdateChecker == true then
        local resource = GetInvokingResource()
        local versionCheckUrl = 'https://raw.githubusercontent.com/Wix-Development/wix_core/main/update-checker/' .. resource .. '.json'

        PerformHttpRequest(versionCheckUrl, function(statusCode, responseText, headers)
            if statusCode == 200 then
                local latestVersionInfo = json.decode(responseText)
                local latestVersion = latestVersionInfo.version
                local updateMessage = latestVersionInfo.message
                local url = latestVersionInfo.url

                if latestVersion ~= version then
                    print('^3<===========================================================================================>^7')
                    print('^3[UPDATE CHECKER]^7 A new version of ' .. resource .. ' is available!')
                    print('^3[UPDATE CHECKER]^7 Current version: ' .. version)
                    print('^3[UPDATE CHECKER]^7 Latest version: ' .. latestVersion)
                    if updateMessage ~= 'false' then
                        print('^3[UPDATE CHECKER]^7 Update message: ' .. updateMessage)
                    end
                    if url ~= 'false' then
                        print('^3[UPDATE CHECKER]^7 Download: ' .. url)
                    end
                    print('^3<===========================================================================================>^7')
                    return false
                else
                    print('^2[UPDATE CHECKER]^7 You are using the latest version of ' .. resource .. '!')
                    return true
                end
            else
                print('^1[UPDATE CHECKER]^7 Failed to check for updates for resource '.. resource..'. HTTP Status Code: ' .. statusCode)
                return nil
            end
        end, 'GET', '', {['Content-Type'] = 'application/json'})
    end
end

exports('UpdateChecker', UpdateChecker)

exports['wix_core']:UpdateChecker(GetResourceMetadata(GetCurrentResourceName(), 'version', 0))
