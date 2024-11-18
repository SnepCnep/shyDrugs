-- // [VARAIBLES] \\ --
lastloc = {}
local Config = lib.require('config')
local Webhook = 'WEBHOOK'

ESX = exports['es_extended']:getSharedObject()

-- // [EVENTS] \\ --

RegisterNetEvent('shyDrugs:placeOrder', function(bool)
    local src = source
    local dealer = math.random(1, #Config.DealerCoords)
    
    if lastloc[src] then
        if dealer == lastloc[src] then
            if dealer ~= 1 then
                dealer = dealer - 1
            else
                dealer = dealer + 1
            end
        end
        lastloc[src] = dealer
    else
        lastloc[src] = dealer
    end

    local coords = vector2(Config.DealerCoords[dealer].x, Config.DealerCoords[dealer].y)
    if Config.lbphone then
        exports["lb-phone"]:SendMessage(Config.Translations.name, exports["lb-phone"]:GetEquippedPhoneNumber(src), Config.Translations.go, nil, cb, nil)
        Citizen.Wait(5000)
        exports["lb-phone"]:SendCoords('Mohammed', exports["lb-phone"]:GetEquippedPhoneNumber(src), coords)
    else
        TriggerClientEvent('shyDrugs:notify', src, Config.Translations.name, Config.Translations.goNotify, 'info')
        TriggerClientEvent('shyDrugs:waypoint', src, coords)
    end
    TriggerClientEvent('shyDrugs:SyncNPC', -1, Config.DealerCoords[dealer], dealer)
    TriggerClientEvent('shyDrugs:DistCheck', src, Config.DealerCoords[dealer], dealer)
    if bool then
        local players = ESX.GetPlayers()
        Citizen.Wait(Config.SnitchTime)
        for i = 1, #players do
            local player = ESX.GetPlayerFromId(players[i])
            if GangCheck(player.getJob().name) then
                if Config.lbphone then
                    exports["lb-phone"]:SendMessage("COKE JUNKIE", exports["lb-phone"]:GetEquippedPhoneNumber(players[i]), Config.Strings[dealer], nil, cb, nil)
                    Citizen.Wait(1000)
                    exports["lb-phone"]:SendCoords('COKE JUNKIE', exports["lb-phone"]:GetEquippedPhoneNumber(players[i]), coords)
                else
                    TriggerClientEvent('shyDrugs:notify', players[i], "COKE JUNKIE", Config.Strings[dealer], 'info')
                    TriggerClientEvent('shyDrugs:waypoint', players[i], coords)
                end
            end
        end
    end
end)

RegisterNetEvent('shyDrugs:SellBatch', function(amount, sort, again, coords)
    local success = false
    local src = source
    if amount == "NoCheating" then
        if sort == 1 then
            local qty = exports.ox_inventory:GetItem(src, Config.cokeItem, nil, true)
            if qty >= Config.MaxSell then
                local reward = (math.random(Config.cokePriceMin, Config.cokePriceMax)*Config.MaxSell)
                if exports.ox_inventory:CanCarryItem(src, 'black_money', reward) then
                    exports.ox_inventory:RemoveItem(src, Config.cokeItem, Config.MaxSell)
                    exports.ox_inventory:AddItem(src, 'black_money', reward)
                    success = true
                    sendToDiscord("shyDrugs", GetPlayerName(source).." sold "..Config.MaxSell.." coke for €"..reward, 65359)
                else
                    sendToPhone(Config.Translations.name, src, Config.Translations.serious, 'error')
                end
            elseif qty >= 10 then
                local reward = (math.random(Config.cokePriceMin, Config.cokePriceMax)*10)
                if exports.ox_inventory:CanCarryItem(src, 'black_money', reward) then
                    exports.ox_inventory:RemoveItem(src, Config.cokeItem, 10)
                    exports.ox_inventory:AddItem(src, 'black_money', reward)
                    success = true
                    sendToDiscord("shyDrugs", GetPlayerName(source).." sold 10 coke for €"..reward, 65359)
                else
                    sendToPhone(Config.Translations.name, src, Config.Translations.serious, 'error')
                end
            else
                sendToPhone(Config.Translations.name, src, Config.Translations.minimum, 'error')
            end
            TriggerClientEvent('shyDrugs:NextOrder', src, success, again)
            TriggerClientEvent('shyDrugs:DelNPC', -1, coords)
        elseif sort == 2 then
            local qty = exports.ox_inventory:GetItem(src, Config.methItem, nil, true)
            if qty >= Config.MaxSell then
                local reward = (math.random(Config.methPriceMin, Config.methPriceMax)*Config.MaxSell)
                if exports.ox_inventory:CanCarryItem(src, 'black_money', reward) then
                    exports.ox_inventory:RemoveItem(src, Config.methItem, Config.MaxSell)
                    exports.ox_inventory:AddItem(src, 'black_money', reward)
                    success = true
                    sendToDiscord("shyDrugs", GetPlayerName(source).." sold "..Config.MaxSell.." meth for €"..reward, 65359)
                else
                    sendToPhone(Config.Translations.name, src, Config.Translations.serious, 'error')
                end
            elseif qty >= 10 then
                local reward = (math.random(Config.methPriceMin, Config.methPriceMax)*10)
                if exports.ox_inventory:CanCarryItem(src, 'black_money', reward) then
                    exports.ox_inventory:RemoveItem(src, Config.methItem, 10)
                    exports.ox_inventory:AddItem(src, 'black_money', reward)
                    success = true
                    sendToDiscord("shyDrugs", GetPlayerName(source).." sold 10 meth for €"..reward, 65359)
                else
                    sendToPhone(Config.Translations.name, src, Config.Translations.serious, 'error')
                end
            else
                sendToPhone(Config.Translations.name, src, Config.Translations.minimum, 'error')
            end
            TriggerClientEvent('shyDrugs:NextOrder', src, success, again)
            TriggerClientEvent('shyDrugs:DelNPC', -1, coords)
        elseif sort == 3 then
            local qty = exports.ox_inventory:GetItem(src, Config.weedItem, nil, true)
            if qty >= Config.MaxSell then
                local reward = (math.random(Config.weedPriceMin, Config.weedPriceMax)*Config.MaxSell)
                if exports.ox_inventory:CanCarryItem(src, 'black_money', reward) then
                    exports.ox_inventory:RemoveItem(src, Config.weedItem, Config.MaxSell)
                    exports.ox_inventory:AddItem(src, 'black_money', reward)
                    success = true
                    sendToDiscord("shyDrugs", GetPlayerName(source).." sold "..Config.MaxSell.." weed for €"..reward, 65359)
                else
                    sendToPhone(Config.Translations.name, src, Config.Translations.serious, 'error')
                end
            elseif qty >= 10 then
                local reward = (math.random(Config.weedPriceMin, Config.weedPriceMax)*10)
                if exports.ox_inventory:CanCarryItem(src, 'black_money', reward) then
                    exports.ox_inventory:RemoveItem(src, Config.weedItem, 10)
                    exports.ox_inventory:AddItem(src, 'black_money', reward)
                    success = true
                    sendToDiscord("shyDrugs", GetPlayerName(source).." sold 10 weed for €"..reward, 65359)
                else
                    sendToPhone(Config.Translations.name, src, Config.Translations.serious, 'error')
                end
            else
                sendToPhone(Config.Translations.name, src, Config.Translations.minimum, 'error')
            end
            TriggerClientEvent('shyDrugs:NextOrder', src, success, again)
            TriggerClientEvent('shyDrugs:DelNPC', -1, coords)
        end
    else
        Config.Punishement(src)
    end
end)

RegisterNetEvent('shyDrugs:EndDeal', function(success)
    if success then
        sendToPhone(Config.Translations.name, source, Config.Translations.ty, 'success')
    else
        sendToPhone(Config.Translations.name, source, Config.Translations.bruh, 'error')
    end
end)

-- // [FUNCTIONS] \\ --

function GangCheck(job)
    for i = 1, #Config.GangJobs do
        if job == Config.GangJobs[i] then
            return true
        end
    end
    return false
end

function sendToDiscord(name, message, color)
    local connect = {
          {
              ["color"] = color,
              ["title"] = "**".. name .."**",
              ["description"] = message,
              ["footer"] = {
                  ["text"] = "Made with <3 by Slashy#3200",
              },
          }
      }
    PerformHttpRequest(Webhook, function(err, text, headers) end, 'POST', json.encode({username = 'shyDrugs', embeds = connect, avatar_url = 'https://static.vecteezy.com/system/resources/previews/006/428/710/original/cool-fox-with-sharp-eyes-mascot-logo-design-free-vector.jpg'}), { ['Content-Type'] = 'application/json' })
end
sendToDiscord("Script Restarted", "New logging session initialized.", 16711851)

function sendToPhone(title, source, message, type)
    if Config.lbphone then
        local succes, err = pcall(function()
            exports["lb-phone"]:SendMessage(title, exports["lb-phone"]:GetEquippedPhoneNumber(source), message, nil, cb, nil)
        end)
        
        -- Als de resource toch niet gestart is of gestopt is de resource blijft werken!
        if not succes then
            TriggerClientEvent('shyDrugs:notify', source, title, message, type)
        end
    else
        TriggerClientEvent('shyDrugs:notify', source, title, message, type)
    end
end

-- // [CALLBACKS] \\ --

local used = {}
lib.callback.register('shyDrugs:getConfig', function(source)
    if used[source] then 
        lib.print.info(('ID: %s Cheating, callback triggered more than once', source)) 
        return 
    end

    used[source] = true

    return Config
end)
