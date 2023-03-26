RegisterNetEvent('qb-bankrobbery:client:ClearTimeoutDoors', function()
    Config.DoorlockAction(4, true)
    local PaletoObject = GetClosestObjectOfType(Config.BigBanks["paleto"]["coords"]["x"], Config.BigBanks["paleto"]["coords"]["y"], Config.BigBanks["paleto"]["coords"]["z"], 5.0, Config.BigBanks["paleto"]["object"], false, false, false)
    if PaletoObject ~= 0 then
        SetEntityHeading(PaletoObject, Config.BigBanks["paleto"]["heading"].closed)
    end
    for k in pairs(Config.BigBanks["paleto"]["lockers"]) do
        Config.BigBanks["paleto"]["lockers"][k]["isBusy"] = false
        Config.BigBanks["paleto"]["lockers"][k]["isOpened"] = false
    end
    Config.BigBanks["paleto"]["isOpened"] = false
end)

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local PaletoDist = #(pos - Config.BigBanks["paleto"]["coords"])
        if PaletoDist < 15 then
            if Config.BigBanks["paleto"]["isOpened"] then
                Config.DoorlockAction(4, false)
                local object = GetClosestObjectOfType(Config.BigBanks["paleto"]["coords"]["x"], Config.BigBanks["paleto"]["coords"]["y"], Config.BigBanks["paleto"]["coords"]["z"], 5.0, Config.BigBanks["paleto"]["object"], false, false, false)
                if object ~= 0 then
                    SetEntityHeading(object, Config.BigBanks["paleto"]["heading"].open)
                end
            else
                Config.DoorlockAction(4, true)
                local object = GetClosestObjectOfType(Config.BigBanks["paleto"]["coords"]["x"], Config.BigBanks["paleto"]["coords"]["y"], Config.BigBanks["paleto"]["coords"]["z"], 5.0, Config.BigBanks["paleto"]["object"], false, false, false)
                if object ~= 0 then
                    SetEntityHeading(object, Config.BigBanks["paleto"]["heading"].closed)
                end
            end
        end
        Wait(1000)
    end
end)
