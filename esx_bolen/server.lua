ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('antibiotik', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('antibiotik', 1)
	TriggerClientEvent('esx_bolen:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('nqma_bolki'))
end)

ESX.RegisterUsableItem('korem', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('korem', 1)
	TriggerClientEvent('esx_bolen:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('nqma_kashlica'))
end)
