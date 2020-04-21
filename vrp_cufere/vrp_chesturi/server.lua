---------------------------------------------------------------
--        Made by .𝕭𝕽𝕰 WXcookiE#0007 & .𝕭𝕽𝕰 Uwu#0069      --
--                Script Name : vrp_chesturi                 --
--                Don't Try to Repost Or Sell                --
---------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vrp_chesturi")
--CATI BANI SA ITI DEA LA FIECARE CUFAR
local money1 = math.random(5000, 10000) --basic
local money2 = math.random(45000, 60000) --silver
local money3 = math.random(75000, 150000) --legendary

RegisterServerEvent("basic")
AddEventHandler(
    "basic",
    function()
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        if vRP.tryPayment({user_id, 10000}) then
            vRP.addUserGroup({user_id, "Wfondator"}) -- In loc de Wfondator pui ce grad sa iti dea si sa il aibe pe chat
            vRP.giveMoney({user_id, money1})
            vRPclient.notify(
                player,
                {GetPlayerName(source) .. " ~h~~p~ai cumparat \n ~p~ \n              Cufar Basic!"}
            )
        else
            vRPclient.notify(
                player,
                {GetPlayerName(source) .. " ~h~~p~ Nu ai destui bani sa cumperi \n ~p~ \n              Cufar Basic!"}
            )
        end
    end
)

RegisterServerEvent("silver")
AddEventHandler(
    "silver",
    function()
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        if vRP.tryPayment({user_id, 50000}) then
            vRP.addUserGroup({user_id, "Wfondator"}) -- In loc de Wfondator pui ce grad sa iti dea si sa il aibe pe chat
            vRP.giveMoney({user_id, money2})
            vRPclient.notify(
                player,
                {GetPlayerName(source) .. " ~h~~p~ai cumparat \n ~p~ \n              Cufar Silver!"}
            )
        else
            vRPclient.notify(
                player,
                {GetPlayerName(source) .. " ~h~~p~ Nu ai destui bani sa cumperi \n ~p~ \n              Cufar Silver!"}
            )
        end
    end
)

RegisterServerEvent("legendary")
AddEventHandler(
    "legendary",
    function()
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        if vRP.tryPayment({user_id, 100000}) then
            vRP.addUserGroup({user_id, "Wfondator"}) -- In loc de Wfondator pui ce grad sa iti dea si sa il aibe pe chat
            vRP.giveMoney({user_id, money3})
            vRPclient.notify(
                player,
                {GetPlayerName(source) .. " ~h~~p~ai cumparat \n ~p~ \n              Cufar Legendary!"}
            )
        else
            vRPclient.notify(
                player,
                {
                    GetPlayerName(source) ..
                        " ~h~~p~ Nu ai destui bani sa cumperi \n ~p~ \n              Cufar Legendary!"
                }
            )
        end
    end
)

RegisterServerEvent("chesturi")
AddEventHandler(
    "chesturi",
    function()
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})

        vRPclient.notify(
            player,
            {GetPlayerName(source) .. " ~h~~p~ai deschis \n ~p~ \n              meniul cu chesturi!"}
        )
    end
)
