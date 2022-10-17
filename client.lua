local QBCore = exports['qb-core']:GetCoreObject()

-- Event for looting
RegisterNetEvent('eldios-lootingstore:client:StealObjects')
AddEventHandler("eldios-lootingstore:client:StealObjects", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("eldios-lootingstore:CooldownObjects", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("objects", "Steal store...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        PoliceCall()
        TriggerServerEvent("eldios-lootingstore:server:ItensObjects")
        TriggerServerEvent('eldios-lootingstore:Server:CooldownObjects')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("This shop was recently robbery and left empty...")
        end
    end)
end)

RegisterNetEvent('eldios-lootingstore:client:StealObjects2')
AddEventHandler("eldios-lootingstore:client:StealObjects2", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("eldios-lootingstore:CooldownObjects2", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("objects", "Steal store...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        PoliceCall()
        TriggerServerEvent("eldios-lootingstore:server:ItensObjects")
        TriggerServerEvent('eldios-lootingstore:Server:CooldownObjects2')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Fallito!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("This shop was recently robbery and left empty...")
        end
    end)
end)



 --Function de alerta a policia
function PoliceCall()
    local chance = 10
    if GetClockHours() >= 0 and GetClockHours() <= 6 then
        chance = 50
    end
    if math.random(1, 100) <= chance then
        TriggerServerEvent('police:server:policeAlert', 'Saccheggio in corso al negozietto')
    end
end