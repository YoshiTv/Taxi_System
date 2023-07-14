ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent(Config.Acquisto.ServerTrigger, function()
    exports.ox_inventory:RemoveItem(source, Config.Acquisto.Item, Config.Acquisto.Amount, false, false, false)
end)