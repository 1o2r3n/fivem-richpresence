Citizen.CreateThread(function(source)
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000)

        local xPlayer = GetPlayerPed(-1)
        local Coords = GetEntityCoords(PlayerPedId())
        local Streethash = GetStreetNameAtCoord(Coords.x, Coords.y, Coords.z)
        local zone = GetNameOfZone(Coords.x, Coords.y, Coords.z);

        SetDiscordAppId(28493238745932) -- Place your application id here  
		local onlinePlayers = GetNumberOfPlayers()
        SetRichPresence("ID: " .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. "  |  " .. #GetActivePlayers() .. " Spieler" .. " | " .. "Standort: " .. GetLabelText(zone) .. " - " .. GetStreetNameFromHashKey(Streethash))

        SetDiscordRichPresenceAsset("large")
        SetDiscordRichPresenceAssetText("1o2r3n Localhost")

        SetDiscordRichPresenceAssetSmall("small") 
        SetDiscordRichPresenceAssetSmallText("FiveM")

        
    end
end)