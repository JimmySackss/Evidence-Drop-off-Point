local blips = {
    {name="Evidence Drop-off", id=440, x= -1113.52, y= -825.82, z= 13.34, color= 29}, --LAPD WEST
    {name="Evidence Drop-off", id=440, x= 848.99, y= -1311.57, z= 28.24, color= 29}, --CHP Central LA
    {name="Evidence Drop-off", id=440, x= 474.33, y= -990.78, z= 26.27, color= 29},   --LAPD Central
    {name="Evidence Drop-off", id=440, x= -598.32, y= -915.74, z= 23.86, color= 29},  --LASD Compton
    {name="Evidence Drop-off", id=440, x= -320.21, y= -2782.27, z= 5.32, color= 29},  --LAPPD HQ
    {name="Evidence Drop-off", id=440, x= 1850.86, y= 3681.99, z= 24.47, color= 29},  --LASD Lancaster
	{name="Evidence Drop-off", id=440, x= -3153.53, y= 1387.45, z= 16.48, color= 29}, --CHP Coastal
}

-- Create blips on the map
Citizen.CreateThread(function()
    for _, blipInfo in pairs(blips) do
        local blip = AddBlipForCoord(blipInfo.x, blipInfo.y, blipInfo.z)
        SetBlipSprite(blip, blipInfo.id)
        SetBlipColour(blip, blipInfo.color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipInfo.name)
        EndTextCommandSetBlipName(blip)
    end
end)

-- Main thread for marker drawing, distance checks, and interactions
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = GetPlayerPed(-1)
        local playerCoords = GetEntityCoords(playerPed)
        
        for _, blipInfo in pairs(blips) do
            local distance = GetDistanceBetweenCoords(playerCoords, blipInfo.x, blipInfo.y, blipInfo.z, true)
            
            if distance <= 20 then
                DrawMarker(21, blipInfo.x, blipInfo.y, blipInfo.z, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 0, 155, 255, 0, 0, 0, 0, 0)
                if distance <= 2 then
                    alert("Press ~INPUT_CONTEXT~ to place your evidence into a locker")
                    if IsControlJustPressed(1, 51) then
                        notify("~r~Your evidence has been logged!")
                        RemoveAllPedWeapons(playerPed, true)
                    end
                end
            end
            
            if distance < 4.0 then
                Draw3DText(blipInfo.x, blipInfo.y, blipInfo.z -1.4, "~r~Submit collected evidence here", 4, 0.1, 0.1)
            end
        end
    end
end)

function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end

function Draw3DText(x, y, z, text, fontId, scaleX, scaleY)
    local camCoords = GetGameplayCamCoords()
    local dist = GetDistanceBetweenCoords(camCoords, x, y, z, 1)
    local scale = (1 / dist) * 20
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov

    SetTextScale(scaleX * scale, scaleY * scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(250, 250, 250, 255)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z + 2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end
