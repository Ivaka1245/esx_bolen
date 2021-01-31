ESX          = nil
local IsDead = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('playerSpawned', function()

	if IsDead then
		TriggerEvent('esx_bolen:resetStatus')
	end

	IsDead = false
end)

RegisterNetEvent('esx_bolen:izpolzvaiantibiotik')
AddEventHandler('esx_bolen:onEat', function()
  
  local pid = PlayerPedId()
  
  RequestAnimDict("timetable@gardener@smoking_joint")
  while not HasAnimDictLoaded("timetable@gardener@smoking_joint") do
  Citizen.Wait(100)
  end

  TaskPlayAnim(GetPlayerPed(-1), "timetable@gardener@smoking_joint", "idle_cough", 8.0, 8.0, -1, 50, 0, false, false, false)
  Citizen.Wait(3000)
  ClearPedSecondaryTask(GetPlayerPed(-1))
end)

