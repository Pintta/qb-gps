local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-gps:client:usegps', function()
    local player = PlayerPedId()
    if IsPedInAnyVehicle(player) and not IsThisModelABicycle(vehicle) then
        QBCore.Functions.Progressbar("snort_coke", 'Installation gps..', 2000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "switch@trevor@trev_smoking_meth",
            anim = "trev_smoking_meth_loop",
            flags = 49,
        }, {}, {}, function()
            TriggerEvent('qb-gps:clien:confirmed')
        end, function()
            StopAnimTask(player, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
            QBCore.Functions.Notify('Oh damn..', "error")
        end)
    else
        QBCore.Functions.Notify('You cannot do that outside on vehicle', "error")
    end
end)

RegisterNetEvent('qb-gps:clien:confirmed', function()
	QBCore.Functions.Notify('Onnistuit', "success")
	DisplayRadar(true)
end)