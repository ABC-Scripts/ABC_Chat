local PlayerData              = {}
ESX = nil
ESX = exports['es_extended']:getSharedObject()


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)