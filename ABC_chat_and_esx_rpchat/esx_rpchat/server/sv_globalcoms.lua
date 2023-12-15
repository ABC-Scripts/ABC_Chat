ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterCommand('gps', function(source, args, raw)
  TriggerClientEvent('chat:addMessage', source, {
    template = '<div style="padding: 0.45vw; margin: 0.05vw; background-color: rgba(0, 90, 90, 0.6); border-radius: 10px;"><i class="fas fa-map-marker-alt"></i> GPS: {0}</div>',
       args = { GetEntityCoords(GetPlayerPed(source)) }
   })
end)

AddEventHandler('chatMessage', function(source, name, message)
  if string.sub(message, 1, string.len('/')) ~= '/' then
    CancelEvent()

    if Config.EnableESXIdentity then name = GetCharacterName(source) end

    TriggerClientEvent('esx_rpchat:sendLocalOOC', -1, source, name, message, {30, 144, 255});
  end
end)



RegisterCommand('announce', function(source,args,raw)
  local xPlayer = ESX.GetPlayerFromId(source)
  local toSay = ''
    for i=1,#args do
     toSay = toSay .. args[i] .. ' ' 
   end

   if Config.AdminGroups[xPlayer.getGroup()] == true then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.45vw; margin: 0.15vw; background-color: rgba(204, 0, 0, 0.9); border-radius: 20px;"><i class="fas fa-bullhorn"></i>  Oznámení: {0}</div>',
        args = { toSay }
    })
  end
end,false)




RegisterCommand('me', function(source, args, raw)
  local args = table.concat(args, ' ')
  local name = GetCharacterName(source)

  TriggerClientEvent('esx_rpchat:sendMe', -1, source, name, args, { 196, 33, 246 })
  TriggerClientEvent('3dme:triggerDisplay', -1, args, source)
end)

RegisterCommand('do', function(source, args, raw)
  local args = table.concat(args, ' ')
  local name = GetCharacterName(source)

  TriggerClientEvent('esx_rpchat:sendDo', -1, source, name, args, { 255, 198, 0 })
  TriggerClientEvent('3ddo:triggerDisplay', -1, args, source)
end)

RegisterCommand('doc', function(source, args, raw)
  local name = GetCharacterName(source)
  if args[1] ~= nil then 
    local counter_doc = 0
    local pocetOpakovani = tonumber(args[1])
    if pocetOpakovani < 101 then
      while counter_doc < pocetOpakovani do
          counter_doc = counter_doc + 1 
          TriggerClientEvent('esx_rpchat:sendDo', -1, source, name, counter_doc .. "/" .. pocetOpakovani , { 255, 198, 0 })
          TriggerClientEvent('3ddoa:triggerDisplay', -1, counter_doc .. "/" .. pocetOpakovani, source)
          Wait(2000)
      end 
    end
  end
end)
-- Stav
TriggerEvent('es:addCommand', 'bm', function(source, args, rawCommand)
  if source == 0 then
    print('esx_rpchat: you can\'t use this command from rcon!')
    return
  end

  args = table.concat(args, ' ')
  local name = GetPlayerName(source)
  if Config.EnableESXIdentity then name = GetCharacterName(source) end

  TriggerClientEvent('esx_rpchat:sendStav', -1, source, name, args, { 6, 166, 166 })
  TriggerClientEvent('3dstav:triggerDisplay', -1, args, source)
end)