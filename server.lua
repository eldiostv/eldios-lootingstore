local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = false
local cashA = false
local cashB = false

-- Item looting
RegisterServerEvent('eldios-lootingstore:server:ItensObjects', function() 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob = math.random(1, 100)
    local quantity = math.random(1, 2)
    if prob < 30 then
        if Player.Functions.AddItem("pepsi", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["pepsi"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Le tue tasche sembrano pesare troppo!', 'error')
        end  
    elseif prob >= 30 and prob < 40 then
        if Player.Functions.AddItem("taco", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["taco"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Le tue tasche sembrano pesare troppo!', 'error')
        end 
    elseif prob >= 50 and prob < 60 then
        if Player.Functions.AddItem("joint", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["joint"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Le tue tasche sembrano pesare troppo!', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'Questo scaffale è vuoto...', 'error')
    end      
end)

-- Cooldown
RegisterServerEvent('eldios-lootingstore:Server:CooldownObjects')
AddEventHandler('eldios-lootingstore:Server:CooldownObjects', function()
    CooldownObjects = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownObjects = false
        end
    end
end)

RegisterServerEvent('eldios-lootingstore:Server:CooldownObjects2')
AddEventHandler('eldios-lootingstore:Server:CooldownObjects2' , function()
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownObjects2 = false
        end
    end
end)

QBCore.Functions.CreateCallback("eldios-lootingstore:CooldownObjects",function(source, cb)
    if CooldownObjects then
        cb(true)
    else
        cb(false)
        
    end
end)

QBCore.Functions.CreateCallback("eldios-lootingstore:CooldownObjects2",function(source, cb)
    if CooldownObjects2 then
        cb(true)
    else
        cb(false)
        
    end
end)

