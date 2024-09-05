local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local currentVersionOfClient = 100

if game.PlaceId == 15894064789 then
    Rayfield:Notify({
        Title = "403 Forbidden!",
        Content = "You can not run DarkHub in this game.",
        Duration = 6.5,
        Image = nil,
        Actions = { -- Notification Buttons
           Ignore = {
              Name = "Why?",
              Callback = function()
                Rayfield:Notify({
                    Title = "403 Forbidden!",
                    Content = "This game is under special protection against possible abuse. This hub is completly blocked by the LetsScripts Team in this game.",
                    Duration = 6.5,
                    Image = nil,
                    Actions = { -- Notification Buttons
                       Ignore = {
                          Name = "Ok, I understand.",
                          Callback = function()
                            Rayfield:Notify({
                                Title = "403 Forbidden!",
                                Content = "Thank you for your understanding.",
                                Duration = 6.5,
                                Image = nil,
                                Actions = { -- Notification Buttons
                                   Ignore = {
                                      Name = "Ok",
                                      Callback = function()
                                     
                                   end
                                },
                             },
                             })
                       end
                    },
                 },
                 })   
           end
        },
     },
     })

    end
if game.PlaceId == 15894064789 then
else
    local ScriptWindow = Rayfield:CreateWindow({
        Name = "DarkBlox Hub",
        LoadingTitle = "LetsScripts UI Suite",
        LoadingSubtitle = "by LetsStudios",
        ConfigurationSaving = {
           Enabled = true,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "darkbloxhubsavefile234234"
        },
        Discord = {
           Enabled = true,
           Invite = "9Sw9BknE", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
           Title = "Welcome back!",
           Subtitle = "Key System",
           Note = "Welcome to the ultimate debugging Tool for developers. DarkHub. Test your games on a new level. You can get the free key to enter in our discord server. https://discord.gg/9Sw9BknE",
           FileName = "Key420876", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"https://pastebin.com/raw/XnAufdvQ","Admin1757"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
     })
    
     Rayfield:Notify({
        Title = "Welcome",
        Content = "Thanks for using this Hub.",
        Duration = 5,
        Image = nil,
        Actions = { -- Notification Buttons
           Ignore = {
              Name = "Disclaimer!",
              Callback = function()
                Rayfield:Notify({
                    Title = "Important Message:",
                    Content = "This is a debugging tool for devlopers only. You may not exploit using this hub! Thanks - LetsScripts",
                    Duration = 8,
                    Image = nil,
                    Actions = { -- Notification Buttons
                       Ignore = {
                          Name = "Ok!",
                          Callback = function()
                         
                       end
                    },
                 },
                 })  
           end
        },
     },
     })
    
     local MainTab = ScriptWindow:CreateTab("🏠 Home", nil) -- Title, Image
    
     local title1 = MainTab:CreateLabel("Everyday Utilitis")
    
     local ButtonINFY = MainTab:CreateButton({
        Name = "Infinite Yield Universal",
        Callback = function()
        -- The function that takes place when the button is pressed
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
        end,
     })
     local Buttondsicollis = MainTab:CreateButton({
        Name = "Disable Player Collisions",
        Callback = function()
        -- The function that takes place when the button is pressed
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/nathmadgam/roblox-script-library/main/disable-player-collision.lua'),true))()
        end,
     })
    
     local ButtonExit = MainTab:CreateButton({
        Name = "Exit",
        Callback = function()
        -- The function that takes place when the button is pressed
        Rayfield:Destroy()
        end,
     })
    
     local localTab = ScriptWindow:CreateTab("🧑‍💻 Local Player", nil) -- Title, Image
    
     local wsSlider = localTab:CreateSlider({
        Name = "Walkspeed",
        Range = {1, 300},
        Increment = 10,
        Suffix = "Speed",
        CurrentValue = 16,
        Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
        end,
     })
    
     local jpSlider = localTab:CreateSlider({
        Name = "Jump Power",
        Range = {1, 600},
        Increment = 10,
        Suffix = "Power",
        CurrentValue = 50,
        Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value2)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value2)
        end,
     })
    
     local fovSlider = localTab:CreateSlider({
        Name = "FOV",
        Range = {50, 180},
        Increment = 5,
        Suffix = "FOV",
        CurrentValue = 90,
        Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value3)
            workspace.CurrentCamera.FieldOfView = (Value3)
        end,
     })
    
     local resetlocalButton = localTab:CreateButton({
        Name = "Reset",
        Callback = function()
            wsSlider:Set(16) -- The new slider integer value
            jpSlider:Set(50) -- The new slider integer value
            fovSlider:Set(90) -- The new slider integer value
        end,
     })
    
     --local scriptsTab = ScriptWindow:CreateTab("📜 Scripts", nil) -- Title, Image
     local copyTab = ScriptWindow:CreateTab("📒 About this Hub", nil) -- Title, Image
    
     local Paragraph1 = copyTab:CreateParagraph({Title = "Copyright", Content = "Copyright LetsScripts. A scripts team that is owned by LetsStudios. This hub may not be used for stuff that is against the TOS. This hub may only be used for the development of games. This extension is under Copyright, so you must give credits when using publicly, and copying it is forbidden."})
    
     local Paragraph2 = copyTab:CreateParagraph({Title = "About us", Content = "This hub was developed by LetsScripts, a LetsStudios team. The developers are: *LetsManuel *BillyWasTaken"})
    
     local Paragraph1 = copyTab:CreateParagraph({Title = "DarkHub Version", Content = "Current version of Client:",currentVersionOfClient})
     
     local killButton = localTab:CreateButton({
        Name = "Reset Character",
        Callback = function()
          game.Players.LocalPlayers.Character.Humanoid.Health = 0
        end,
     })
    
    
     local dexButton = MainTab:CreateButton({
        Name = "Open DEX",
        Callback = function()
            loadstring(game:HttpGet(('https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4'),true))()
        end,
     })
    
     local servercheckerButton = MainTab:CreateButton({
        Name = "Serverside Checker",
        Callback = function()
            loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/jLn0n/beckdeer-skenner/main/src/main.lua"))()
        end,
     })
    
     local infinteJumpButton = MainTab:CreateButton({
        Name = "Infinite Jump",
        Callback = function()
            local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';
     
    _G.JumpHeight = 50;
     
    function Action(Object, Function) if Object ~= nil then Function(Object); end end
     
    UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
            Action(Player.Character.Humanoid, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                    end)
                end
            end)
        end
    end)
        end,
     })
    
     local fbButton = MainTab:CreateButton({
        Name = "Fullbright",
        Callback = function()
            if not _G.FullBrightExecuted then
    
                _G.FullBrightEnabled = false
            
                _G.NormalLightingSettings = {
                    Brightness = game:GetService("Lighting").Brightness,
                    ClockTime = game:GetService("Lighting").ClockTime,
                    FogEnd = game:GetService("Lighting").FogEnd,
                    GlobalShadows = game:GetService("Lighting").GlobalShadows,
                    Ambient = game:GetService("Lighting").Ambient
                }
            
                game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
                    if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                        _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                        if not _G.FullBrightEnabled then
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").Brightness = 1
                    end
                end)
            
                game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
                    if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                        _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                        if not _G.FullBrightEnabled then
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").ClockTime = 12
                    end
                end)
            
                game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
                    if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                        _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                        if not _G.FullBrightEnabled then
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").FogEnd = 786543
                    end
                end)
            
                game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
                    if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                        _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                        if not _G.FullBrightEnabled then
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").GlobalShadows = false
                    end
                end)
            
                game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
                    if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                        _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                        if not _G.FullBrightEnabled then
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                end)
            
                game:GetService("Lighting").Brightness = 1
                game:GetService("Lighting").ClockTime = 12
                game:GetService("Lighting").FogEnd = 786543
                game:GetService("Lighting").GlobalShadows = false
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            
                local LatestValue = true
                spawn(function()
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                    while wait() do
                        if _G.FullBrightEnabled ~= LatestValue then
                            if not _G.FullBrightEnabled then
                                game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                                game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                                game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                                game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                                game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                            else
                                game:GetService("Lighting").Brightness = 1
                                game:GetService("Lighting").ClockTime = 12
                                game:GetService("Lighting").FogEnd = 786543
                                game:GetService("Lighting").GlobalShadows = false
                                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                            end
                            LatestValue = not LatestValue
                        end
                    end
                end)
            end
            
            _G.FullBrightExecuted = true
            _G.FullBrightEnabled = not _G.FullBrightEnabled
        end,
     })
    
     local clockButton = MainTab:CreateButton({
        Name = "Clock Time Cycle",
        Callback = function()
            local RunService = game:GetService("RunService")
    local Lighting = game:GetService("Lighting")
    
    local FullCycleDuration = 360
    local FramesPerSecond = 60
    local IncrementPerFrame = 24 / (FullCycleDuration * FramesPerSecond)
    
    RunService.Heartbeat:Connect(function()
        Lighting.ClockTime = Lighting.ClockTime + IncrementPerFrame
    end)
        end,
     })
end

