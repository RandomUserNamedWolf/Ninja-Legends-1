local Finity = loadstring(game:HttpGet("https://pastebin.com/raw/BbxzJKTw"))()
local FinityWindow = Finity.new(true) -- btw true is dark mode! dont forget dumbass
FinityWindow.ChangeToggleKey(Enum.KeyCode.Semicolon)

local Updatelog1 = FinityWindow:Category("Home")
local Player1 = FinityWindow:Category("Player")
local Autofarm1 = FinityWindow:Category("Autofarm")
local AutoBuy1 = FinityWindow:Category("Autobuy")
local Teleport1 = FinityWindow:Category("Teleports")
-- --Sections
local Player = Player1:Sector("Changes")
local Autofarm = Autofarm1:Sector("Autofarm")

--Autobuy
local Autobuy = AutoBuy1:Sector("Auto buy")

-- Teleports
local Teleport = Teleport1:Sector("Unlock all islands")
local Teleports = Teleport1:Sector("Teleport Island")
local Teleport3 = Teleport1:Sector("Light karma training areas")
local Teleport4 = Teleport1:Sector("Bad karma training areas")
--Updates/Home
local Credits = Updatelog1:Sector("Credits")
local Updatelog = Updatelog1:Sector("Update log")

-- Autofarm shit
Autofarm:Cheat("Checkbox", "Auto swing", function(v)
        getgenv().autoswing = v
        while true do
        if not getgenv().autoswing then return end
        local A_1 = "swingKatana"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1)
        wait(0.2)
        end
    end)

Autofarm:Cheat("Checkbox", "Auto Shuriken", function(v)
        getgenv().autoshuriken = v
        while true do
        if not getgenv().autoshuriken then return end
        local A_2 = "attackShuriken"
        local Event = game.GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_2)
        wait(0.5)
        end
    end)

Autofarm:Cheat("Checkbox", "Auto Sell", function(v)
    getgenv().autosell = v
        print(v)
        while true do
            if getgenv().autosell == false then
                print(getgenv().autosell)
                return
            end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
        end
    end)

    -- auto buy shit
    Autobuy:Cheat("Checkbox", "Buy Swords", function(v)
        getgenv().buysword = v
        while true do
            if not getgenv().buysword then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)

    Autobuy:Cheat("Checkbox", "Buy Belts", function(v)
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

        Autobuy:Cheat("Checkbox","Buy Ranks", function(v)
            getgenv().buyrank = v
                while true do
                    if not getgenv().buyrank then return end
                    local A_1 = "buyRank"
                    local A_2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
                    for i = 1,#A_2 do
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(A_1, A_2[i].Name)
                    end
                    wait()
                end
            end)
            
            Autobuy:Cheat("Checkbox", "Buy Skills", function(v)
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

    -- Player shit
    Player:Cheat("Walkspeed","Walkspeed", function(b)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Walkspeed = b
    end, {min = 16, max = 120, suffix = "t"})


    --Teleport shit

    Teleport:Cheat("Button", "Unlock all islands", function()
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.2)
        end
        game.PLayers.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
    end)
    Teleport:Cheat("Button", "Teleport to player", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/X0xjxwjG"))()
    end)

    Teleports:Cheat("Dropdown", "Teleport to Island", function(SelectLocation)
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
    end, {
            options ={
                "Enchanted island",
                "Astral island",
                "Mystical island",
                "Space island",
                "Tundra island",
                "Eternal island",
                "Sandstorm island",
                "Thunderstorm island",
                "Ancient Inferno island",
                "Midnight Shadow Island",
                "Mythical Souls island",
                "Winter Wonderland island",
                "Golden Master island",
                "Dragon Legend island",
                "Cybernetic Legends island",
                "Skystorm Ultraus island",
                "Chaos Legends island",
                "Soul Fusion island",
                "Dark Elements island",
                "Inner Peace island",
                "Blazing Vorterx island",
            }
        })

                Teleport3:Cheat("Dropdown", "Light karma training areas", function(TeleportLight)
                    if TeleportLight == "Mystical Waters" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(354.478, 8874.26, 116.569)
                    elseif TeleportLight == "Sword Of Legends" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1848.48, 82.2062, -137.431)
                    elseif TeleportLight == "Elemental Tornado" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(330.128, 30432.8, -16.1308)
                    elseif TeleportLight == "Zen Master's Blade" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5041.18, 82.2062, 1614.75)
                    end
                end, {
                    options ={
                        "Mystical Waters",
                        "Sword Of Legends",
                        "Elemental Tornado",
                        "Zen Master's Blade",
                    
                    }
                })

                Teleport4:Cheat("Dropdown", "Bad karma training areas", function(TeleportBad)
                    if TeleportBad == "Tornado" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(330.128, 16921.8, -16.1308)
                    elseif TeleportBad == "Lava pit" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-119.522, 13002.3, 274.569)
                    elseif TeleportBad == "Swords Of Ancients" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(627.359, 82.2062, 2429.49)
                    elseif TeleportBad == "Fallen Infinity Blade" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1875.97, 82.2062, -6806.41)
                    end
                end, {
                    options ={
                        "Tornado",
                        "Lava pit",
                        "Swords Of Ancients",
                        "Fallen Infinity Blade",
                    }
                })

    -- Home

    Updatelog:Cheat("Label", "Release :)")
    Credits:Cheat("Label", "RealWolfnx")