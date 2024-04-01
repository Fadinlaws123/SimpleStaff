local branding = [[
  //
  ||
  ||   _____ _                 _       _____ _         __  __ 
  ||  / ____(_)               | |     / ____| |       / _|/ _|
  || | (___  _ _ __ ___  _ __ | | ___| (___ | |_ __ _| |_| |_ 
  ||  \___ \| | '_ ` _ \| '_ \| |/ _ \\___ \| __/ _` |  _|  _|
  ||  ____) | | | | | | | |_) | |  __/____) | || (_| | | | |  
  || |_____/|_|_| |_| |_| .__/|_|\___|_____/ \__\__,_|_| |_|  
  ||                    | |                                   
  ||                    |_|                                   
  ||                   Made by Fadin_laws
  ||]]
Citizen.CreateThread(function()
    local CurrentVersion = GetResourceMetadata(GetCurrentResourceName(),
                                               'version', 0)
    if not CurrentVersion then
        print(
            ' [~r~SimpleStaff~w]: ~y~SimpleStaff was unbale to check for an update!')
    end

    function VersionCheckHTTPRequest()
        PerformHttpRequest(
            'https://raw.githubusercontent.com/Fadinlaws123/ScriptVersionChecker/main/SimpleStaff.json',
            VersionCheck, 'GET')
    end

    function VersionCheck(err, response, headers)
        Citizen.Wait(3000)
        if err == 200 then
            local Data = json.decode(response)
            if CurrentVersion ~= Data.NewestVersion then
                print(branding)
                print('  ||    \n  ||    SimpleStaff is outdated!')
                print('  ||    Current version: ^2' .. Data.NewestVersion ..
                          '^7')
                print('  ||    Your version: ^1' .. CurrentVersion .. '^7')
                print('  ||    Please download the lastest version from ^5' ..
                          Data.DownloadLocation .. '^7')
                if Data.Changes ~= '' then
                    print('  ||    \n  ||    ^5Changes: ^7' .. Data.Changes ..
                              "\n^0  \\\\\n")
                end
            else
                print(branding)
                print('  ||    ^2SimpleStaff is up to date!!^0')
                print('  ||    ^2Your version: ^3' .. CurrentVersion ..
                          '\n^0  ||\n  \\\\\n')
            end
        else
            print(branding)
            print(
                '  ||    ^1There was an error grabbing the latest version! \n^0  ||\n  \\\\\n')
        end

        SetTimeout(60000000, VersionCheckHTTPRequest)
    end

    VersionCheckHTTPRequest()
end)
