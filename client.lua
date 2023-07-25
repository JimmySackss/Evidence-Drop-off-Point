
local blips = {
    {name="Evidence Drop-off", id=14, x= -1113.52, y= -825.82, z= 13.34, color= 29}, --LAPD WEST
	{name="Evidence Drop-off", id=14, x= 848.99, y= -1311.57, z= 28.24, color= 29}, --LAPD East
    {name="Evidence Drop-off", id=14, x= 474.33, y= -990.78, z= 26.27, color= 29},   --LAPD Central
    {name="Evidence Drop-off", id=14, x= -598.32, y= -915.74, z= 23.86, color= 29},  --LASDSouth
    {name="Evidence Drop-off", id=14, x= -320.21, y= -2782.27, z= 5.32, color= 29},  --LAPPD HQ
    {name="Evidence Drop-off", id=14, x= 1850.86, y= 3681.99, z= 24.47, color= 29},  --LASDNorth PB

  }



Citizen.CreateThread(function()
    Holograms()
end)


Citizen.CreateThread(function()
    for _, item in pairs(blips) do
      item.blip = AddBlipForCoord(item.x, item.y, item.z)
      SetBlipSprite(item.blip, item.id)
      SetBlipColour(item.blip, item.color)
      SetBlipAsShortRange(item.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(item.name)
      EndTextCommandSetBlipName(item.blip)
    end
  end)

  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      for _, item in pairs(blips) do
        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1113.52,-825.82,13.34, true) <= 20 then
            DrawMarker(21, item.x, item.y, item.z, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 0, 155, 255, 200, 0, 0, 0, 0)
          if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1113.52,-825.82,13.34, true) <= 2 then
            alert("Press ~INPUT_RELOAD~ to place item into evidence locker")
            if (IsControlJustPressed(1,45)) and (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1113.52,-825.82,13.34, true) <= 2) then
              notify("~r~The item has been secured!")
              RemoveAllPedWeapons(GetPlayerPed(-1), true)
            end
            end
          end
        end
    end
        end)

  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      for _, item in pairs(blips) do
        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 474.33,-990.78,26.27, true) <= 20 then
            DrawMarker(21, item.x, item.y, item.z, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 0, 155, 255, 200, 0, 0, 0, 0)
          if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 474.33,-990.78,26.27, true) <= 2 then
            alert("Press ~INPUT_RELOAD~ to place item into evidence locker")
            if (IsControlJustPressed(1,45)) and (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 474.33,-990.78,26.27, true) <= 2) then
              notify("~r~The item has been secured!")
              RemoveAllPedWeapons(GetPlayerPed(-1), true)
            end
            end
          end
        end
    end
        end)

  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      for _, item in pairs(blips) do
        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -605.84,-920.36,23.86, true) <= 20 then
            DrawMarker(21, item.x, item.y, item.z, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 0, 155, 255, 200, 0, 0, 0, 0)
          if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -605.84,-920.36,23.86, true) <= 2 then
            alert("Press ~INPUT_RELOAD~ to place item into evidence locker")
            if (IsControlJustPressed(1,45)) and (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -605.84,-920.36,23.86, true) <= 2) then
              notify("~r~The item has been secured!")
              RemoveAllPedWeapons(GetPlayerPed(-1), true)
            end
            end
          end
        end
    end
        end)

  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      for _, item in pairs(blips) do
        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -320.21,-2782.27,5.32, true) <= 20 then
            DrawMarker(21, item.x, item.y, item.z, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 0, 155, 255, 200, 0, 0, 0, 0)
          if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -320.21,-2782.27,5.32, true) <= 2 then
            alert("Press ~INPUT_RELOAD~ to place item into evidence locker")
            if (IsControlJustPressed(1,45)) and (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -320.21,-2782.27,5.32, true) <= 2) then
              notify("~r~The item has been secured!")
              RemoveAllPedWeapons(GetPlayerPed(-1), true)
            end
            end
          end
        end
    end
        end)

  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      for _, item in pairs(blips) do
        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 1850.86,3681.99,24.47, true) <= 20 then
            DrawMarker(21, item.x, item.y, item.z, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 0, 155, 255, 200, 0, 0, 0, 0)
          if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 1850.86,3681.99,24.47, true) <= 2 then
            alert("Press ~INPUT_RELOAD~ to place item into evidence locker")
            if (IsControlJustPressed(1,45)) and (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 1850.86,3681.99,24.47, true) <= 2) then
              notify("~r~The item has been secured!")
              RemoveAllPedWeapons(GetPlayerPed(-1), true)
            end
            end
          end
        end
    end
        end)


function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end

function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end

function Holograms()
    while true do
        Citizen.Wait(0)			

    if GetDistanceBetweenCoords( -1113.52,-825.82,13.34, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
        Draw3DText( -1113.52,-825.82,13.34  -1.400, "~r~Submit your collected evidence here!", 4, 0.1, 0.1)
    end		
end
end

function Holograms()
    while true do
        Citizen.Wait(0)			

    if GetDistanceBetweenCoords( 474.33,-990.78,26.27, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
        Draw3DText( 474.33,-990.78,26.27,  -1.400, "~r~Submit your collected evidence here!", 4, 0.1, 0.1)
    end		
end
end

function Holograms()
    while true do
        Citizen.Wait(0)			

    if GetDistanceBetweenCoords( -605.84,-920.36,23.86, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
        Draw3DText( -605.84,-920.36,23.86,  -1.400, "~r~Submit your collected evidence here!", 4, 0.1, 0.1)
    end		
end
end

function Holograms()
    while true do
        Citizen.Wait(0)			

    if GetDistanceBetweenCoords( -320.21,-2782.27,5.32, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
        Draw3DText( -320.21,-2782.27,5.32,  -1.400, "~r~Submit your collected evidence here!", 4, 0.1, 0.1)
    end		
end
end

function Holograms()
    while true do
        Citizen.Wait(0)			

    if GetDistanceBetweenCoords( 1850.86,3681.99,24.47, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
        Draw3DText( 1850.86,3681.99,24.47,  -1.400, "~r~Submit your collected evidence here!", 4, 0.1, 0.1)
    end		
end
end


function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov   
    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(250, 250, 250, 255)		
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
   end
