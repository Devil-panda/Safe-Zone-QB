-- safezone
local QBCore = exports['qb-core']:GetCoreObject()

-- Pillbox Zone Area
local ispillbox = false
CreateThread(function()
    local pillbox_zone = PolyZone:Create({
        vector2(267.92190551758, -610.41546630859),
        vector2(288.14688110352, -562.63500976563),
        vector2(295.42730712891, -555.21636962891),
        vector2(397.35110473633, -556.20477294922),
        vector2(345.24136352539, -635.67535400391)
        }, {
            name="pillbox_zone",
            debugPoly = false,
            minZ = -5.0,
            maxZ = 61.0
        })
        pillbox_zone:onPlayerInOut(function(isPointInside)
        if isPointInside then
            exports['qb-core']:DrawText(Config.SafeText, Config.Side)
            GiveWeaponToPed(PlayerPedId(), "weapon_unarmed", -1, false, true)
            QBCore.Functions.GetPlayerData(function(PlayerData)
                PlayerJob = PlayerData.job
                if PlayerJob.name == 'police' and PlayerJob.name == 'ambulance' then
                    ispillbox = false
                else
                    ispillbox = true
                end
            end)
        else
            ispillbox = false
            exports['qb-core']:HideText()
        end
    end)
end)

CreateThread(function()
    while true do
        if ispillbox then
            Wait(0)
            DisableControlAction(0, 24, true) -- Attack
			DisableControlAction(0, 257, true) -- Attack 2
			DisableControlAction(0, 25, true) -- Aim
			DisableControlAction(0, 263, true) -- Melee Attack 1
            DisableControlAction(0,22,true) -- Disable Melee Space Bar
        else
            Wait(2000)
        end
    end
end)

-- PDM Zone Area
local ispdm = false
CreateThread(function()
    local pdm_zone = PolyZone:Create({
        vector2(-70.679542541504, -1116.4669189453),
        vector2(-54.135631561279, -1069.8072509766),
        vector2(-21.797300338745, -1081.3581542969),
        vector2(-19.49757194519, -1075.2026367188),
        vector2(-1.6995742321014, -1081.6767578125),
        vector2(-15.567251205444, -1119.7999267578),
        vector2(-65.246826171875, -1122.791015625)
        }, {
            name="pdm_zone",
            debugPoly = false,
            minZ = -5.0,
            maxZ = 60.0
        })
        pdm_zone:onPlayerInOut(function(isPointInside)
        if isPointInside then
            exports['qb-core']:DrawText(Config.SafeText, Config.Side)
            GiveWeaponToPed(PlayerPedId(), "weapon_unarmed", -1, false, true)
            QBCore.Functions.GetPlayerData(function(PlayerData)
                PlayerJob = PlayerData.job
                if PlayerJob.name == 'police' and PlayerJob.name == 'cardealer' then
                    ispdm = false
                else
                    ispdm = true
                end
            end)
        else
            ispdm = false
            exports['qb-core']:HideText()
        end
    end)
end)

CreateThread(function()
    while true do
        if ispdm then
            Wait(0)
            DisableControlAction(0, 24, true) -- Attack
			DisableControlAction(0, 257, true) -- Attack 2
			DisableControlAction(0, 25, true) -- Aim
			DisableControlAction(0, 263, true) -- Melee Attack 1
            DisableControlAction(0,22,true) -- Disable Melee Space Bar
        else
            Wait(2000)
        end
    end
end)

-- Cityhall Zone Area
local iscityhall = false
CreateThread(function()
    local cityhall_zone = PolyZone:Create({
        vector2(-470.9674987793, -239.62950134277),
        vector2(-557.43585205078, -274.82022094727),
        vector2(-605.30395507813, -191.64329528809),
        vector2(-519.35009765625, -152.52365112305)
        }, {
            name="cityhall_zone",
            debugPoly = false,
            minZ = -5.0,
            maxZ = 60.0
        })
        cityhall_zone:onPlayerInOut(function(isPointInside)
        if isPointInside then
            exports['qb-core']:DrawText(Config.SafeText, Config.Side)
            GiveWeaponToPed(PlayerPedId(), "weapon_unarmed", -1, false, true)
            QBCore.Functions.GetPlayerData(function(PlayerData)
                PlayerJob = PlayerData.job
                if PlayerJob.name == 'police' then
                    iscityhall = false
                else
                    iscityhall = true
                end
            end)
        else
            iscityhall = false
            exports['qb-core']:HideText()
        end
    end)
end)

CreateThread(function()
    while true do
        if iscityhall then
            Wait(0)
            DisableControlAction(0, 24, true) -- Attack
			DisableControlAction(0, 257, true) -- Attack 2
			DisableControlAction(0, 25, true) -- Aim
			DisableControlAction(0, 263, true) -- Melee Attack 1
            DisableControlAction(0,22,true) -- Disable Melee Space Bar
        else
            Wait(2000)
        end
    end
end)