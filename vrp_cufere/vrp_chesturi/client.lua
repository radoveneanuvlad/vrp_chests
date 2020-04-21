---------------------------------------------------------------
--        Made by .𝕭𝕽𝕰 WXcookiE#0007 & .𝕭𝕽𝕰 Uwu#0069      --
--                Script Name : vrp_chesturi                 --
--                Don't Try to Repost Or Sell                --
---------------------------------------------------------------
local meniu = false

RegisterNetEvent("meniu")
AddEventHandler(
    "meniu",
    function()
        meniu = not meniu
    end
)

Citizen.CreateThread(
    function()
        while true do
            Wait(0)
            RegisterCommand(
                "chesturi",
                function()
                    meniu = not meniu
                end
            )
            if meniu then
                ShowCursorThisFrame() --Astea de aici in jos iti blocheaza movement-ul
                DisableControlAction(0, 24, true)
                DisableControlAction(0, 47, true)
                DisableControlAction(0, 58, true)
                DisableControlAction(0, 263, true)
                DisableControlAction(0, 264, true)
                DisableControlAction(0, 257, true)
                DisableControlAction(0, 140, true)
                DisableControlAction(0, 141, true)
                DisableControlAction(0, 142, true)
                DisableControlAction(0, 143, true)
                DisableControlAction(0, 1, true)
                DisableControlAction(0, 2, true)
                DrawRect(0.500, 0.500, 0.700, 0.500, 0, 0, 0, 120)
                drawtxt("Ce cumperi azi?", 1, 1, 0.500, 0.195, 0.70, 46, 163, 152, 255)
                DrawRect(0.500, 0.210, 0.150, 0.050, 0, 0, 0, 120)
                DrawSprite("legendarchest", "legendarchest", 0.700, 0.420, 0.100, 0.200, 0, 255, 255, 255, 255)
                DrawSprite("epichest", "epichest", 0.500, 0.420, 0.100, 0.200, 0, 255, 255, 255, 255)
                DrawSprite("basicchest", "basicchest", 0.300, 0.420, 0.100, 0.200, 0, 255, 255, 255, 255)
                drawtxt("~r~[ ~w~Iesi? ~r~]", 1, 1, 0.800, 0.200, 0.70, 255, 0, 0, 255)
                --text cumpara LEGENDAR
                drawtxt("Cufar Legendary", 1, 1, 0.700, 0.550, 0.70, 46, 163, 152, 255)
                DrawRect(0.700, 0.700, 0.150, 0.070, 0, 0, 0, 120)
                drawtxt("[Cumpara 100K]", 1, 1, 0.700, 0.685, 0.70, 46, 163, 152, 255)
                --text cumpara SILVER
                drawtxt("Cufar Silver", 1, 1, 0.500, 0.550, 0.70, 46, 163, 152, 255)
                DrawRect(0.500, 0.700, 0.150, 0.070, 0, 0, 0, 120)
                drawtxt("[Cumpara 50K]", 1, 1, 0.500, 0.685, 0.70, 46, 163, 152, 255)
                --text cumpara BASIC
                drawtxt("Cufar Basic", 1, 1, 0.300, 0.550, 0.70, 46, 163, 152, 255)
                DrawRect(0.300, 0.700, 0.150, 0.070, 0, 0, 0, 120)
                drawtxt("[Cumpara 10K]", 1, 1, 0.300, 0.685, 0.70, 46, 163, 152, 255)
                if isCursorInPosition(0.800, 0.200, 0.30, 0.30) and IsControlJustPressed(0, 18) then
                    meniu = false
                end
                --basic
                if isCursorInPosition(0.200, 0.670, 0.20, 0.20) and IsControlJustPressed(0, 18) then
                    TriggerServerEvent("basic")
                end
                --silver
                if isCursorInPosition(0.400, 0.670, 0.20, 0.20) and IsControlJustPressed(0, 18) then
                    TriggerServerEvent("silver")
                end
                --legendary
                if isCursorInPosition(0.600, 0.670, 0.20, 0.20) and IsControlJustPressed(0, 18) then
                    TriggerServerEvent("legendary")
                end
            end
        end
    end
)

function drawtxt(text, font, centre, x, y, scale, r, g, b, a)
    y = y - 0.010
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextFont(4)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

function isCursorInPosition(x, y, width, height)
    local sx, sy = 1920, 1080
    local cx, cy = GetNuiCursorPosition()
    local cx, cy = (cx / sx), (cy / sy)

    local width = width / 2
    local height = height / 2

    if (cx >= (x - width) and cx <= (x + width)) and (cy >= (y - height) and cy <= (y + height)) then
        return true
    else
        return false
    end
end
