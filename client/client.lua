ESX = exports["es_extended"]:getSharedObject()
local options = {
  {
    name = Config.Target.Name,
    event = Config.Target.Event,
    icon = Config.Target.Icon,
    label = Config.Target.Label,
  },
}
local taxi = { 
    Config.Ped.Taxi
}
exports.ox_target:addModel(taxi, options)

-- BLIP IN MAPPA -- 
taxi = AddBlipForCoord(Config.Blip.Coords)
SetBlipSprite(taxi, Config.Blip.Sprite)
SetBlipScale(taxi, Config.Blip.Scale)
SetBlipColour(taxi, Config.Blip.Colour)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString(Config.Blip.Name)
EndTextCommandSetBlipName(taxi)

-- MODELLO AUTO --
if Config.Veicolo.Spawn then
    local veichleHash = GetHashKey(Config.Veicolo.Name) 
    RequestModel(veichleHash)
    local taxi = CreateVehicle(veichleHash, Config.Veicolo.Coords, false, true)
    SetVehicleDoorsLocked(taxi, 2)
    FreezeEntityPosition(taxi, true)
    SetEntityInvincible(taxi, true)
    SetBlockingOfNonTemporaryEvents(taxi, true)
end
-- MODELLO PED --
Citizen.CreateThread(function()
    if not HasModelLoaded(Config.Ped.Taxi) then
         RequestModel(Config.Ped.Taxi)
        while not HasModelLoaded(Config.Ped.Taxi) do
            Citizen.Wait(5)
        end
    end

    npc = CreatePed(4, Config.Ped.Taxi, Config.Ped.Coords, false, true)
    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
end)
-------------------------------------------------------------------------------------------------
----------------------------------- FUNZIONE TAXI -----------------------------------------------
-------------------------------------------------------------------------------------------------
RegisterNetEvent(Config.Target.Event, function()
    local input = lib.inputDialog(Config.Fermate.Titolo, {
        {type = 'select', label = Config.Fermate.Desc, options = {
            {label = Config.Fermate.Ferma1, value = "1"},
            {label = Config.Fermate.Ferma2, value = "2"},
            {label = Config.Fermate.Ferma3, value = "3"},
            {label = Config.Fermate.Ferma4, value = "4"},
            {label = Config.Fermate.Ferma5, value = "5"},
            {label = Config.Fermate.Ferma6, value = "6"},
            {label = Config.Fermate.Ferma7, value = "7"},
            {label = Config.Fermate.Ferma8, value = "8"},
            {label = Config.Fermate.Ferma9, value = "9"},
            {label = Config.Fermate.Ferma10, value = "10"},
        }},
    })

    if exports.ox_inventory:Search("count", Config.Acquisto.Item) < Config.Acquisto.Amount then ESX.ShowNotification(Config.Locales.Inv) 
        return
    end

    if input then
        progress(input)
    end
end)

function progress(input)
    if Config.Progress.Bar then
        if lib.progressBar({
            duration = Config.Acquisto.Progress,
            label = Config.Locales.Progress,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        }) then TriggerServerEvent(Config.Acquisto.ServerTrigger)
            DoScreenFadeOut(800)
            Wait(3000)
            SetEntityCoords(PlayerPedId(), Config.Posizioni[tonumber(input[1])])
            DoScreenFadeIn(800)
            ESX.ShowNotification(Config.Locales.Taxi)
        end
    elseif Config.Progress.Circle.Active then 
        if lib.progressCircle({
            duration = Config.Acquisto.Progress,
            label = Config.Locales.Progress,
            position = Config.Progress.Circle.Position,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        }) then TriggerServerEvent(Config.Acquisto.ServerTrigger)
            DoScreenFadeOut(800)
            Wait(3000)
            SetEntityCoords(PlayerPedId(), Config.Posizioni[tonumber(input[1])])
            DoScreenFadeIn(800)
            ESX.ShowNotification(Config.Locales.Taxi)
        end
    end
end

-- BLIP FERMATE -- 
for i=1, #Config.Fermata, 1 do

    local Cfg = Config.Fermata [i]

    fermata = AddBlipForCoord(Cfg.Coordinate)
    SetBlipSprite(fermata, Cfg.Sprite)
    SetBlipScale(fermata, Cfg.Scale)
    SetBlipColour(fermata, Cfg.Colour)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Cfg.Nome)
    EndTextCommandSetBlipName(fermata)

end