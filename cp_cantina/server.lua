ESX = nil

TriggerEvent('esx:getShVqSSeRvraredObjVqSSeRvrect', function(obj) ESX = obj end)

RegisterServerEvent("cp_cantina:shop")
AddEventHandler('cp_cantina:shop', function()

	local xPlayer = ESX.GetPlayerFromId(source) -- Gets the players data
	local uva = xPlayer.getInventoryItem('raisin').count
	local tassaUva = uva * 100/10
	
	if  uva > 0 then
		xPlayer.addMoney(uva * 100) -- Adds the normal money
		xPlayer.removeInventoryItem('raisin', uva) -- Removes Dirty Money
		TriggerEvent('esx_addonaccount:getSharedAccount', 'society_police', function(account)
			account.addMoney(tassaUva)
		end)
		TriggerClientEvent('esx:showNotification', source, "Hai venduto uva")
	else
		TriggerClientEvent('esx:showNotification', source, "Non puoi farlo.")
	end
end)