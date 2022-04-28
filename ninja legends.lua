if game.PlaceId == 3956818381 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("ToxicHub: Ninja Legends 1", "Ocean")


    -- Player tab dont do anything here! :D
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("JumpPower", "Changes the jumppower", 250, 16, function(v)
        game.Players.LocalPlayer.Character.HumanoidRootPart.JumpPower = v
    end)
    PlayerSection:NewSlider("Walkspeed", "Changes the Walkspeed", 250, 50, function(v)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Walkspeed = v
    end)


    -- Autofarm area
    local Autofarm = Window:NewTab("Autofarm")
    local AutofarmSection = Autofarm:NewSection("Autofarm")

    AutofarmSection:NewToggle("Auto Swing", "Makes you auto swing", function(v)
        getgenv().autoswing = v
        while true do
        if not getgenv().autoswing then return end 
        local A_1 = "swingKatana"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1)
        wait(0.2)
        end
    end)
    AutofarmSection:NewToggle("Auto Shuriken", "Makes you throw shurikens", function(v)
        getgenv().autoshuriken = v
        while true do
        if not getgenv().autoshuriken then return end
        local A_2 = "attackShuriken"
        local Event = game.GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_2)
        wait(0.5)
        end
    end)
    AutofarmSection:NewToggle("Auto Sell", "Auto sell for money", function(v)
        getgenv().autosell = v
        print(v)
        while true do
            if getgenv().autoswing == false then
                print(getgenv().autosell)
                return
            end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
        end
    end)
    AutofarmSection:NewToggle("Auto buy swords", "Buys all swords", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)

    AutofarmSection:NewToggle("Auto buy belts", "Buys all belts", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
    AutofarmSection:NewToggle("Auto buy skills", "Auto buys all skills", function(v)
        getgenv().buyskills = v
        while true do
            if not getgenv().buyskills then return end
            local A_1 = "buyAllSkills"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
    AutofarmSection:NewToggle("Auto buy shurikens", "Auto buys all shuikens", function(v)
        getgenv().buyshurikens = v
        while true do
            if not getgenv().buyshurikens then return end
            local A_1 = "buyAllShurikens"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)



    local Teleports = Window:NewTab("Teleports")
    local TeleportSection = Teleports:NewSection("Teleports")
    TeleportSection:NewButton("Unlock all island", "Unlock all islands", function()
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.2)
        end
        game.PLayers.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)

    TeleportSection:NewDropdown("Teleports", "DropdownInf", {"Enchanted island", "Astral island", "Mystical island", "Space island", "Tundra island", "Eternal island", "Sandstorm island", "Thunderstorm island", "Ancient Inferno island", "Midnight Shadow Island", "Mythical Souls island", "Winter Wonderland island", "Golden Master island", "Dragon Legend island", "Cybernetic Legends island", "Skystorm Ultraus island", "Chaos Legends island", "Soul Fusion island", "Dark Elements island", "Inner Peace Island", "Blazing Vorterx island"}, function(SelectLocation)
        if SelectLocation == "Enchanted island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.242, 849.832, -151.814)
        elseif SelectLocation == "Astral island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(216.322, 2095.48, 256.276)
        elseif SelectLocation == "Mystical island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.796, 4124.18, 45.8521)
        elseif SelectLocation == "Space island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.522, 5847.19, 123.56)
        elseif SelectLocation == "Tundra island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.132, 9372.4, 90.3484)
        elseif SelectLocation == "Eternal island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.132, 13767.3, 90.3484)
        elseif SelectLocation == "Sandstorm island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.132, 17773.5, 90.3484)
        elseif SelectLocation == "Thunderstorm island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.132, 24157.2, 90.3484)
        elseif SelectLocation == "Ancient Inferno island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 28364.7, 88.9619)
        elseif SelectLocation == "Midnight Shadow Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 33315.4, 88.9619)
        elseif SelectLocation == "Mythical Souls island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 39426, 88.9619)
        elseif SelectLocation == "Winter Wonderland island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 46119, 88.9619)
        elseif SelectLocation == "Golden Master island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 52716.2, 88.9619)
        elseif SelectLocation == "Dragon Legend island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 59703.1, 88.9619)
        elseif SelectLocation == "Cybernetic Legends island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 66777.6, 88.9619)
        elseif SelectLocation == "Skystorm Ultraus island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 70379.6, 88.9619)
        elseif SelectLocation == "Chaos Legends island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 74551.3, 88.9619)
        elseif SelectLocation == "Soul Fusion island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 79855.4, 88.9619)
        elseif SelectLocation == "Dark Elements island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 83307.4, 88.9619)
        elseif SelectLocation == "Inner Peace Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 87159.5, 88.9619)
        elseif SelectLocation == "Blazing Vorterx island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 91354.5, 88.9619)
        end
    end)
end