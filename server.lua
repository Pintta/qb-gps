local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("gps", function(source, _)
    TriggerClientEvent("qb-gps:client:usegps", source)
end)