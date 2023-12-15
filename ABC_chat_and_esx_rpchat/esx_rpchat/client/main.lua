local PlayerData              = {}
local nbrDisplaying = 1
local UserGroup
ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx:setJob') 
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)
local vidilooc = true


AddEventHandler('esx_rpchat:sendProximityMessage', function(playerId, title, message, color)
  local source = PlayerId()
  local target =  GetPlayerFromServerId(playerId)

  local sourcePed, targetPed = PlayerPedId(), GetPlayerPed(target)
  local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)

  if target == source and target ~= -1 then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.45vw; margin: 0.05vw; background-color: rgba(163, 2, 164, 0.4); font-weight: 100; text-shadow: 0px 0 black, 0 0.5px black, 0.0px 0 black, 0 0px black; box-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; border-radius: 5px;"><i class="fas fa-user-circle"></i> {0}: {1}</div>',
        args = { title, message }
    })
  elseif GetDistanceBetweenCoords(sourceCoords, targetCoords, true) < 20  then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.45vw; margin: 0.05vw; background-color: rgba(163, 2, 164, 0.4); font-weight: 100; text-shadow: 0px 0 black, 0 0.5px black, 0.0px 0 black, 0 0px black; box-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; border-radius: 5px;"><i class="fas fa-user-circle"></i> {0}: {1}</div>',
        args = { title, message }
    })
  end
end) 

RegisterNetEvent('esx_rpchat:sendMe')
AddEventHandler('esx_rpchat:sendMe', function(playerId, title, message, color)
    local source = PlayerId()
    local target = GetPlayerFromServerId(playerId)
    local sourcePed, targetPed = PlayerPedId(), GetPlayerPed(target)
    local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)

    if target == -1 then
        return
    end

    if target == source then
      TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(24, 26, 32, 0.9); border-radius: 3px; border-right: 0px solid rgb(209, 0, 167);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(209, 0, 167); border-radius: 5px; font-size: 15px;"> <b> ME</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b>' ..title.. ' |</b></font>   <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;"> '..message..'</font></div>',
        args = { title, message }
      })
    elseif GetDistanceBetweenCoords(sourceCoords, targetCoords, true) < 20 then
      TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(24, 26, 32, 0.9); border-radius: 3px; border-right: 0px solid rgb(209, 0, 167);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(209, 0, 167); border-radius: 5px; font-size: 15px;"> <b> ME</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b>' ..title.. ' |</b></font>   <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;"> '..message..'</font></div>',
        args = { title, message }
      })
    end
end)

RegisterCommand('kostka', function(source, args, rawCommand)
  local number = math.random(1,6)
  ExecuteCommand('me Hazim kostkou')
	ExecuteCommand('doc 2')
  Citizen.Wait(3000)
  ExecuteCommand('do Spadlo ' ..number)
end)


RegisterCommand('mince', function(source, args, rawCommand)
  local luck = math.random(1,2)
  if luck == 2 then
  ExecuteCommand('me Hazím mincí')
  ExecuteCommand('doc 2')
  Citizen.Wait(3000)
  ExecuteCommand('do Hodil si pannu')
  elseif luck == 1 then 
  ExecuteCommand('me Hazim minci')
  ExecuteCommand('doc 2')
  Citizen.Wait(3000)
  ExecuteCommand('do Hodil si orla')
end
end)

RegisterNetEvent('esx_rpchat:sendMluvit')
AddEventHandler('esx_rpchat:sendMluvit', function(playerId, title, message, color)
    local source = PlayerId()
    local target = GetPlayerFromServerId(playerId)
    local sourcePed, targetPed = PlayerPedId(), GetPlayerPed(target)
    local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)

    if target == -1 then
        return
    end

    if target == source then
      TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(24, 26, 32, 0.9); border-radius: 3px; border-right: 0px solid rgb(209, 0, 167);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(209, 0, 167); border-radius: 5px; font-size: 15px;"> <b> ŘIKÁ</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b>' ..title.. ' |</b></font>   <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;"> '..message..'</font></div>',
        args = { title, message }
      })
    elseif GetDistanceBetweenCoords(sourceCoords, targetCoords, true) < 20 then
      TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(24, 26, 32, 0.9); border-radius: 3px; border-right: 0px solid rgb(209, 0, 167);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(209, 0, 167); border-radius: 5px; font-size: 15px;"> <b> ŘIKÁ</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b>' ..title.. ' |</b></font>   <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;"> '..message..'</font></div>',
        args = { title, message }
      })
    end
end)

RegisterNetEvent('esx_rpchat:sendStav')
AddEventHandler('esx_rpchat:sendStav', function(playerId, title, message, color)
	local source = PlayerId()
	local target = GetPlayerFromServerId(playerId)
local gay = true
	local sourcePed, targetPed = PlayerPedId(), GetPlayerPed(target)
	local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)

	if target == source then
		TriggerEvent('chat:addMessage', {
      template = '<div style="padding-top: 0.22vw; padding-bottom: 0.37vw; padding-left: 1.35vw; padding-right: 0.35vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.45); border-left: 5px solid white; font-weight: 100; text-shadow: 0px 0 black, 0 0.3px black, 0.0px 0 black, 0 0px black; box-shadow: -0.5px 0 black, 0 0.5px black, 0.5px 0 black, 0 -1px black; border-radius: 0px;">             <font style="background-color:rgba(255, 255, 255, 1.0); font-size: 13px; color:black;margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px;font-weight: 0; padding-right: 3.5px;border-radius: 5px;">  /BM</font><font style=" font-weight: 800; font-size: 16px; margin-left: 5px; padding-bottom: 5.2px;text-shadow: 2px 2px 2px #000000; border-radius: 5px;"><b> </b> anonym </font><font style=" font-weight: 500; text-shadow: 2px 2px 2px #000000; font-size: 16px; border-radius: 5px;">| {1} </font></div>',
        args = { title, message }
    })
	elseif gay then
    hasPhone(function (hasPhone)
      if hasPhone == true then
		TriggerEvent('chat:addMessage', {
      template = '<div style="padding-top: 0.22vw; padding-bottom: 0.37vw; padding-left: 1.35vw; padding-right: 0.35vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.45); border-left: 5px solid white; font-weight: 100; text-shadow: 0px 0 black, 0 0.3px black, 0.0px 0 black, 0 0px black; box-shadow: -0.5px 0 black, 0 0.5px black, 0.5px 0 black, 0 -1px black; border-radius: 0px;">             <font style="background-color:rgba(255, 255, 255, 1.0); font-size: 13px; color:black;margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px;font-weight: 0; padding-right: 3.5px;border-radius: 5px;">  /BM</font><font style=" font-weight: 800; font-size: 16px; margin-left: 5px; padding-bottom: 5.2px;text-shadow: 2px 2px 2px #000000; border-radius: 5px;"><b> </b> anonym </font><font style=" font-weight: 500; text-shadow: 2px 2px 2px #000000; font-size: 16px; border-radius: 5px;">| {1} </font></div>',
        args = { title, message }
    })
  end
end)
	end
end)

local stavtext = nil

RegisterCommand('try', function(source, args, rawCommand)
  local luck = math.random(1,2)
  if luck == 2 then
    ExecuteCommand('do Ano')
  elseif luck == 1 then 
    ExecuteCommand('do Ne')
  end
end)

RegisterNetEvent('esx_rpchat:sendDo')
AddEventHandler('esx_rpchat:sendDo', function(playerId, title, message, color)
  local source = PlayerId()
  local target = GetPlayerFromServerId(playerId)
  local sourcePed, targetPed = PlayerPedId(), GetPlayerPed(target)
  local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)

  if target == -1 then
    return
  end


  if target == source then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(24, 26, 32, 0.9); border-radius: 3px; border-right: 0px solid rgb(209, 0, 0);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(206, 217, 93); border-radius: 5px; font-size: 15px;"> <b> DO</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b>' ..title.. ' |</b></font>   <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;"> '..message..'</font></div>',
      args = { title, message }
    })
  elseif GetDistanceBetweenCoords(sourceCoords, targetCoords, true) < 20 then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(24, 26, 32, 0.9); border-radius: 3px; border-right: 0px solid rgb(209, 0, 0);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(206, 217, 93); border-radius: 5px; font-size: 15px;"> <b> DO</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b>' ..title.. ' |</b></font>   <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;"> '..message..'</font></div>',
      args = { title, message }
    })
  end
end)

RegisterNetEvent('esx_rpchat:sendDoc')
AddEventHandler('esx_rpchat:sendDoc', function(playerId, title, message, color)
  local source = PlayerId()
  local target = GetPlayerFromServerId(playerId)
  local sourcePed, targetPed = PlayerPedId(), GetPlayerPed(target)
  local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)

  if target == -1 then
    return
end


if target == source then
  TriggerEvent('chat:addMessage', {
    template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(24, 26, 32, 0.9); border-radius: 3px; border-right: 0px solid rgb(255, 255, 255);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(167, 176, 74); border-radius: 5px; font-size: 15px;"> <b> DOC</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b>' ..title.. ' |</b></font>   <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;"> '..message..'</font></div>',
    args = { title, message }
  })
elseif GetDistanceBetweenCoords(sourceCoords, targetCoords, true) < 20 then
  TriggerEvent('chat:addMessage', {
    template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(24, 26, 32, 0.9); border-radius: 3px; border-right: 0px solid rgb(255, 255, 255);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(167, 176, 74); border-radius: 5px; font-size: 15px;"> <b> DOC</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b>' ..title.. ' |</b></font>   <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;"> '..message..'</font></div>',
    args = { title, message }
  })
end
end)


RegisterNetEvent('esx_rpchat:sendLocalOOC')
AddEventHandler('esx_rpchat:sendLocalOOC', function(playerId, title, message, color)
    local source = PlayerId()
    local target = GetPlayerFromServerId(playerId)

    local sourcePed, targetPed = PlayerPedId(), GetPlayerPed(target)
    local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)
if target == source then
        TriggerEvent('chat:addMessage', {
      template = '<div style="padding-top: 0.22vw; padding-bottom: 0.37vw; padding-left: 1.35vw; padding-right: 0.35vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.35); border-left: 5px solid rgba(16, 115, 155, 0.5); font-weight: 100; text-shadow: 0px 0 black, 0 0.3px black, 0.0px 0 black, 0 0px black; box-shadow: -0.5px 0 black, 0 0.5px black, 0.5px 0 black, 0 -1px black; border-radius: 0px;">             <font style="background-color:rgba(255, 255, 255, 1.0); font-size: 13px; color:black;margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px;font-weight: 0; padding-right: 3.5px;border-radius: 5px;">  L-OOC</font><font style=" font-weight: 800; font-size: 16px; margin-left: 5px; padding-bottom: 5.2px;text-shadow: 2px 2px 2px #000000; border-radius: 5px;"><b> </b> {0} </font><font style=" font-weight: 500; text-shadow: 2px 2px 2px #000000; font-size: 16px; border-radius: 0px;">| {1} </font></div>',

        args = { title, message }
    })
elseif GetDistanceBetweenCoords(sourceCoords, targetCoords, true) < 20 then
        TriggerEvent('chat:addMessage', {
      template = '<div style="padding-top: 0.22vw; padding-bottom: 0.37vw; padding-left: 1.35vw; padding-right: 0.35vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.35); border-left: 5px solid rgba(16, 115, 155, 0.5); font-weight: 100; text-shadow: 0px 0 black, 0 0.3px black, 0.0px 0 black, 0 0px black; box-shadow: -0.5px 0 black, 0 0.5px black, 0.5px 0 black, 0 -1px black; border-radius: 0px;">             <font style="background-color:rgba(255, 255, 255, 1.0); font-size: 13px; color:black;margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px;font-weight: 0; padding-right: 3.5px;border-radius: 5px;">  L-OOC</font><font style=" font-weight: 800; font-size: 16px; margin-left: 5px; padding-bottom: 5.2px;text-shadow: 2px 2px 2px #000000; border-radius: 5px;"><b> </b> {0} </font><font style=" font-weight: 500; text-shadow: 2px 2px 2px #000000; font-size: 16px; border-radius: 0px;">| {1} </font></div>',
        args = { title, message }
    })
    end
end)


RegisterNetEvent('esx_rpchat:getCoords')
AddEventHandler('esx_rpchat:getCoords', function(player)
	  local ped = PlayerPedId()
    local coords = GetEntityCoords(ped, false)
    local heading = GetEntityHeading(ped)

    local message = tostring("X: " .. coords.x .. " Y: " .. coords.y .. " Z: " .. coords.z .. " HEADING: " .. heading)
    TriggerServerEvent('esx_rpchat:showCoord', player, message)

end)

RegisterNetEvent('esx_rpchat:AutomaticMe')
AddEventHandler('esx_rpchat:AutomaticMe', function(playerId, message, color)
	local source = PlayerId()
	local target = GetPlayerFromServerId(playerId)

	local sourcePed, targetPed = PlayerPedId(), GetPlayerPed(target)
	local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)

	if target == source then
		TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.79, 0.9); border-radius: 5px; border-right: 4px solid rgb(209, 0, 167);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(209, 0, 167); border-radius: 5px; font-size: 15px;"> <b> ME</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b>' ..title.. ' |</b></font>   <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;"> '..message..'</font></div>',
        args = { message }
    })
    local offsetme = 2.05 + (nbrDisplaying*0.15)
    DisplayMe(target, message, offsetme)
	elseif GetDistanceBetweenCoords(sourceCoords, targetCoords, true) < 5 then
		TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.79, 0.9); border-radius: 5px; border-right: 4px solid rgb(209, 0, 167);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(209, 0, 167); border-radius: 5px; font-size: 15px;"> <b> ME</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b>' ..title.. ' |</b></font>   <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;"> '..message..'</font></div>',
        args = { message }
    })
    local offsetme = 2.05 + (nbrDisplaying*0.15)
    DisplayMe(target, message, offsetme) 
	end
end)







Citizen.CreateThread(function()
  --TriggerEvent('chat:addSuggestion', '/tweet',  _U('twt_help'),  { { name = _U('generic_argument_name'), help = _U('generic_argument_help') } } )
  TriggerEvent('chat:addSuggestion', '/me',   _U('me_help'),   { { name = _U('generic_argument_name'), help = _U('generic_argument_help') } } )
	TriggerEvent('chat:addSuggestion', '/do',   _U('do_help'),   { { name = _U('generic_argument_name'), help = _U('generic_argument_help') } } )

--	TriggerEvent('chat:addSuggestion', '/inzerat', 'Odoslanie inzerátu',   { { name = _U('generic_argument_name'), help = _U('generic_argument_help') } } )
  TriggerEvent('chat:addSuggestion', '/id', 'Zobrazi vam ID',   { { name = _U('generic_argument_name'), help = _U('generic_argument_help') } } )
  TriggerEvent('chat:addSuggestion', '/zatahnout', 'Potáhnete osobu za vestu',   { { name = _U('generic_argument_name'), help = _U('generic_argument_help') } } )
	--TriggerEvent('chat:addSuggestion', '/gps', 'Zobrazí vám vašu aktuálnu pozíciu (súradnice XYZ a smer pohľadu)')
	TriggerEvent('chat:addSuggestion', '/doc', 'Napise za vas proces napriklad /do 1/20 (max 50)', { { name = 'pocet', help = 'pocet opakovani' } } )
  if PlayerData.job ~= nil and PlayerData.job.name ~= 'police' or 'paletosheriff' or 'sasp' or 'vlada' then
 
  end
  TriggerEvent('chat:removeSuggestion', '/adhesive_cdnKey')
  TriggerEvent('chat:removeSuggestion', '/banner_connecting')
  TriggerEvent('chat:removeSuggestion', '/banner_detail')
  TriggerEvent('chat:removeSuggestion', '/citizen_dir')
  TriggerEvent('chat:removeSuggestion', '/cmdlist')
  TriggerEvent('chat:removeSuggestion', '/con_disableNonTTYReads')
  TriggerEvent('chat:removeSuggestion', '/Discord')
  TriggerEvent('chat:removeSuggestion', '/endpoint_add_tcp')
  TriggerEvent('chat:removeSuggestion', '/endpoint_add_udp')
  TriggerEvent('chat:removeSuggestion', '/ensure')
  TriggerEvent('chat:removeSuggestion', '/exec')
  TriggerEvent('chat:removeSuggestion', '/fileserver_add')
  TriggerEvent('chat:removeSuggestion', '/fileserver_list')
  TriggerEvent('chat:removeSuggestion', '/fileserver_remove')
  TriggerEvent('chat:removeSuggestion', '/gamename')
  TriggerEvent('chat:removeSuggestion', '/gametype')
  TriggerEvent('chat:removeSuggestion', '/heartbeat')
  TriggerEvent('chat:removeSuggestion', '/load_server_icon')
  TriggerEvent('chat:removeSuggestion', '/locale')
  TriggerEvent('chat:removeSuggestion', '/mapname')
  TriggerEvent('chat:removeSuggestion', '/net_tcpConnLimit')
  TriggerEvent('chat:removeSuggestion', '/netlib')
  TriggerEvent('chat:removeSuggestion', '/netPort')
  TriggerEvent('chat:removeSuggestion', '/onesync')
  TriggerEvent('chat:removeSuggestion', '/onesync_automaticResend')
  TriggerEvent('chat:removeSuggestion', '/onesync_clearArea')
  TriggerEvent('chat:removeSuggestion', '/onesync_distanceCulling')
  TriggerEvent('chat:removeSuggestion', '/onesync_distanceCullVehicles')
  TriggerEvent('chat:removeSuggestion', '/onesync_enableBeyond')
  TriggerEvent('chat:removeSuggestion', '/onesync_enabled')
  TriggerEvent('chat:removeSuggestion', '/onesync_enableInfinity')
  TriggerEvent('chat:removeSuggestion', '/onesync_forceMigration')
  TriggerEvent('chat:removeSuggestion', '/onesync_logFile')
  TriggerEvent('chat:removeSuggestion', '/onesync_population')
  TriggerEvent('chat:removeSuggestion', '/onesync_radiusFrequency')
  TriggerEvent('chat:removeSuggestion', '/onesync_showObjectIds')
  TriggerEvent('chat:removeSuggestion', '/onesync_workaround763185')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_getinfo_burst')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_getinfo_rate')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_http_info_burst')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_http_info_rate')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_netCommand_burst')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_netCommand_rate')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_netCommandFlood_burst')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_netCommandFlood_rate')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_netEvent_burst')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_netEvent_rate')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_netEventFlood_burst')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_netEventFlood_rate')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_netEventSize_burst')
  TriggerEvent('chat:removeSuggestion', '/rateLimiter_netEventSize_rate')
  TriggerEvent('chat:removeSuggestion', '/rcon_password')
  TriggerEvent('chat:removeSuggestion', '/refresh')
  TriggerEvent('chat:removeSuggestion', '/restart')
  TriggerEvent('chat:removeSuggestion', '/set')
  TriggerEvent('chat:removeSuggestion', '/seta')
  TriggerEvent('chat:removeSuggestion', '/setr')
  TriggerEvent('chat:removeSuggestion', '/sets')
  TriggerEvent('chat:removeSuggestion', '/start')
  TriggerEvent('chat:removeSuggestion', '/steam_webApiKey')
  TriggerEvent('chat:removeSuggestion', '/stop')
  TriggerEvent('chat:removeSuggestion', '/sv_authMaxVariance')
  TriggerEvent('chat:removeSuggestion', '/sv_authMinTrust')
  TriggerEvent('chat:removeSuggestion', '/sv_endpointPrivacy')
  TriggerEvent('chat:removeSuggestion', '/sv_endpoints')
  TriggerEvent('chat:removeSuggestion', '/sv_enforceGameBuild')
  TriggerEvent('chat:removeSuggestion', '/sv_enhancedHostSupport')
  TriggerEvent('chat:removeSuggestion', '/sv_entityLockdown')
  TriggerEvent('chat:removeSuggestion', '/sv_forceIndirectListing')
  TriggerEvent('chat:removeSuggestion', '/sv_hostname')
  TriggerEvent('chat:removeSuggestion', '/sv_icon')
  TriggerEvent('chat:removeSuggestion', '/sv_infoVersion')
  TriggerEvent('chat:removeSuggestion', '/sv_lan')
  TriggerEvent('chat:removeSuggestion', '/sv_licenseKey')
  TriggerEvent('chat:removeSuggestion', '/sv_licenseKeyToken')
  TriggerEvent('chat:removeSuggestion', '/sv_listingHostOverride')
  TriggerEvent('chat:removeSuggestion', '/sv_listingIpOverride')
  TriggerEvent('chat:removeSuggestion', '/sv_master1')
  TriggerEvent('chat:removeSuggestion', '/sv_master2')
  TriggerEvent('chat:removeSuggestion', '/sv_master3')
  TriggerEvent('chat:removeSuggestion', '/sv_maxClients')
  TriggerEvent('chat:removeSuggestion', '/sv_projectDesc')
  TriggerEvent('chat:removeSuggestion', '/sv_projectName')
  TriggerEvent('chat:removeSuggestion', '/sv_registerMulticastDns')
  TriggerEvent('chat:removeSuggestion', '/sv_requestParanoia')
  TriggerEvent('chat:removeSuggestion', '/sv_scriptHookAllowed')
  TriggerEvent('chat:removeSuggestion', '/sv_tebexSecret')
  TriggerEvent('chat:removeSuggestion', '/sv_threadedClientHttp')
  TriggerEvent('chat:removeSuggestion', '/sv_useAccurateSends')
  TriggerEvent('chat:removeSuggestion', '/svgui')
  TriggerEvent('chat:removeSuggestion', '/svgui_disable')
  TriggerEvent('chat:removeSuggestion', '/tags')
  TriggerEvent('chat:removeSuggestion', '/toggle')
  TriggerEvent('chat:removeSuggestion', '/version')
  TriggerEvent('chat:removeSuggestion', '/vstr')
  TriggerEvent('chat:removeSuggestion', '/Website')
  TriggerEvent('chat:removeSuggestion', '/wait')
  TriggerEvent('chat:removeSuggestion', '/web_baseUrl')
  TriggerEvent('chat:removeSuggestion', '/+vstr')
  TriggerEvent('chat:removeSuggestion', '/-vstr')
  TriggerEvent('chat:removeSuggestion', '/_crash')
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		--TriggerEvent('chat:removeSuggestion', '/tweet')
		--TriggerEvent('chat:removeSuggestion', '/me')
		--TriggerEvent('chat:removeSuggestion', '/do')
    TriggerEvent('chat:removeSuggestion', '/bm')
    TriggerEvent('chat:removeSuggestion', '/rk')
    TriggerEvent('chat:removeSuggestion', '/rukojmi')
    TriggerEvent('chat:removeSuggestion', '/nazada')
    TriggerEvent('chat:removeSuggestion', '/narameno')
    TriggerEvent('chat:removeSuggestion', '/givecar')
    TriggerEvent('chat:removeSuggestion', '/givecarplate')
	--	TriggerEvent('chat:removeSuggestion', '/news')
		--TriggerEvent('chat:removeSuggestion', '/inzerat')
		TriggerEvent('chat:removeSuggestion', '/gps')
		--*TriggerEvent('chat:removeSuggestion', '/doc')
    
	end
end)

RegisterNetEvent('3dme:triggerDisplay')
AddEventHandler('3dme:triggerDisplay', function(text, source)
    local offsetme = 2.04 + (nbrDisplaying*0.15)
    if GetPlayerFromServerId(source) ~= -1 then
      DisplayMe(GetPlayerFromServerId(source), text, offsetme)
    end
end)



RegisterNetEvent('3ddo:triggerDisplay')
AddEventHandler('3ddo:triggerDisplay', function(text, source)
    local offsetdo = 1.34 + (nbrDisplaying*0.15)
    if GetPlayerFromServerId(source) ~= -1 then
    DisplayDo(GetPlayerFromServerId(source), text, offsetdo)
    end
end)

RegisterNetEvent('3ddoa:triggerDisplay')
AddEventHandler('3ddoa:triggerDisplay', function(text, source)
    local offsetdoa = 1.99 + (nbrDisplaying*0.15)
    if GetPlayerFromServerId(source) ~= -1 then
    DisplayDoa(GetPlayerFromServerId(source), text, offsetdoa)
    end
end)




function DisplayMe(mePlayer, text, offsetme)
    local displaying = true

    Citizen.CreateThread(function()
        Wait(5000)
        displaying = false
    end)
	
    Citizen.CreateThread(function()
        nbrDisplaying = nbrDisplaying + 1
        while displaying do
            Wait(0)
            local coordsMe = GetEntityCoords(GetPlayerPed(mePlayer), false)
            local coords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist2(coordsMe, coords)
            if dist < 500 then
                 DrawText3Dme(coordsMe['x'], coordsMe['y'], coordsMe['z']+offsetme-1.250, text)
            end
        end
        nbrDisplaying = nbrDisplaying - 1
    end)
end


function DisplayDo(mePlayer, text, offsetdo)
    local displaying = true

    Citizen.CreateThread(function()
        Wait(4000)
        displaying = false
    end)
	
    Citizen.CreateThread(function()
        nbrDisplaying = nbrDisplaying + 1
        while displaying do
            Wait(0)
            local coordsMe = GetEntityCoords(GetPlayerPed(mePlayer), false)
            local coords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist2(coordsMe, coords)
            if dist < 500 then
                 DrawText3Ddo(coordsMe['x'], coordsMe['y'], coordsMe['z']+offsetdo-1.250, text)
            end
        end
        nbrDisplaying = nbrDisplaying - 1
    end)
end

function DisplayDoa(mePlayer, text, offsetdoa)
    local displaying = true

    Citizen.CreateThread(function()
        Wait(1900)
        displaying = false
    end)
	
    Citizen.CreateThread(function()
        nbrDisplaying = nbrDisplaying + 1
        while displaying do
            Wait(0)
            local coordsMe = GetEntityCoords(GetPlayerPed(mePlayer), false)
            local coords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist2(coordsMe, coords)
            if dist < 500 then
                 DrawText3Ddo(coordsMe['x'], coordsMe['y'], coordsMe['z']+offsetdoa-1.250, text)
            end
        end
        nbrDisplaying = nbrDisplaying - 1
    end)
end

function DrawText3Dme(x,y,z, text)
  local onScreen, _x, _y = World3dToScreen2d(x, y, z)
  local p = GetGameplayCamCoords()
  local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
  local scale = (1 / distance) * 2
  local fov = (1 / GetGameplayCamFov()) * 100
  local scale = scale * fov
  local font = fontId
  if onScreen then
    RegisterFontFile('font')
    fontId = RegisterFontId('AMSANSL') 
      SetTextFont(fontId)
		SetTextScale(0.33, 0.30)
    SetTextDropshadow(10, 100, 100, 100, 255)
    SetTextProportional(1)
    SetTextColour(117, 18, 137, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
		local factor = (string.len(text)) / 350
		DrawRect(_x,_y+0.0135, 0.025+ factor, 0.03, 0, 0, 0, 10)
    end
end




function DrawText3Ddo(x,y,z, text)
  local onScreen, _x, _y = World3dToScreen2d(x, y, z)
  local p = GetGameplayCamCoords()
  local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
  local scale = (1 / distance) * 2
  local fov = (1 / GetGameplayCamFov()) * 100
  local scale = scale * fov
  if onScreen then
    SetTextScale(0.33, 0.30)
    RegisterFontFile('font')
    fontId = RegisterFontId('AMSANSL') 
      SetTextFont(fontId)
    SetTextProportional(1)
    SetTextDropshadow(10, 100, 100, 100, 255)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
		local factor = (string.len(text)) / 370
		DrawRect(_x,_y+0.0135, 0.025+ factor, 0.03, 0, 0, 0, 10)
    end
end

function DrawText3Ddoa(x,y,z, text)
  local onScreen, _x, _y = World3dToScreen2d(x, y, z)
  local p = GetGameplayCamCoords()
  local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
  local scale = (1 / distance) * 2
  local fov = (1 / GetGameplayCamFov()) * 100
  local scale = scale * fov
  if onScreen then
	
    SetTextScale(0.33, 0.30)
    RegisterFontFile('font')
    fontId = RegisterFontId('AMSANSL') 
      SetTextFont(fontId)
    SetTextProportional(1)
    SetTextDropshadow(10, 100, 100, 100, 255)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
		local factor = (string.len(text)) / 370
		DrawRect(_x,_y+0.0145, 0.030+ factor, 0.03, 0, 0, 0, 10)
    end
end

RegisterCommand('+crossarms', function()
    if not IsPedInAnyVehicle(PlayerPedId(),  true) then
        ExecuteCommand("e crossarms")
        crossArms = false
    end
end, false)

RegisterCommand('-crossarms', function()
    crossArms = true
    ClearPedTasks(PlayerPedId())
end, false)
RegisterKeyMapping('+crossarms', '<font face="AMSANSL">Cross arms', 'keyboard', 'g')

RegisterCommand("id", function(source, raw, arg1)
  local id = GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId()))
  TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(24, 26, 32, 0.9); border-radius: 3px; border-right: 0px solid rgb(255, 0, 0);"><font style="padding: 0.22vw; margin: 0.22vw; background-color: rgb(36, 124, 175); border-radius: 5px; font-size: 15px;"> <b> INFORMACE</b></font>   <font style="background-color:rgba(0, 0, 0, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"> <b> Tvoje ID na serveru je |</b></font>  <font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;">{0}</font></div>',
      args = { id }
  })	
end, false)