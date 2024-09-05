local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local currentVersionOfClient = 100


if game.PlaceId == 15894064789 or game.PlaceId == 16120729950 or game.PlaceId == 16638160974 or game.PlaceId == 16826733888 or game.PlaceId ==  17224032300 or game.PlaceId == 18461794102 or game.PlaceId == 5495994056 then
    local Window = Rayfield:CreateWindow({
        Name = "Blocked.",
        LoadingTitle = "403 Forbidden",
        LoadingSubtitle = "by LetsScripts",
        ConfigurationSaving = {
           Enabled = true,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "blackhubblocked"
        },
        Discord = {
           Enabled = false,
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "Untitled",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided",
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
     })

     local InfoTabBlocked = Window:CreateTab("Info", nil) -- Title, Image

     local Paragraph = InfoTabBlocked:CreateParagraph({Title = "Why is this Hub blocked?", Content = "This hub is not blocked. This game is just standing under special protection, due to exploiters may abusing this hub. You can use the hub in your game to test some things out. Thanks for your understanding - LetsScripts"})
     local Paragraph = InfoTabBlocked:CreateParagraph({Title = "Are you the game owner?", Content = "Please message us on our discord server. This game can not run this debug hub to protect the game."})
     
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

     local espButton = MainTab:CreateButton({
        Name = "Player ESP",
        Callback = function()
            local Settings = {
                Box_Color = Color3.fromRGB(255, 0, 0),
                Tracer_Color = Color3.fromRGB(255, 0, 0),
                Tracer_Thickness = 1,
                Box_Thickness = 1,
                Tracer_Origin = "Bottom", -- Middle or Bottom if FollowMouse is on this won't matter...
                Tracer_FollowMouse = false,
                Tracers = true
            }
            local Team_Check = {
                TeamCheck = false, -- if TeamColor is on this won't matter...
                Green = Color3.fromRGB(0, 255, 0),
                Red = Color3.fromRGB(255, 0, 0)
            }
            local TeamColor = true
            
            --// SEPARATION
            local player = game:GetService("Players").LocalPlayer
            local camera = game:GetService("Workspace").CurrentCamera
            local mouse = player:GetMouse()
            
            local function NewQuad(thickness, color)
                local quad = Drawing.new("Quad")
                quad.Visible = false
                quad.PointA = Vector2.new(0,0)
                quad.PointB = Vector2.new(0,0)
                quad.PointC = Vector2.new(0,0)
                quad.PointD = Vector2.new(0,0)
                quad.Color = color
                quad.Filled = false
                quad.Thickness = thickness
                quad.Transparency = 1
                return quad
            end
            
            local function NewLine(thickness, color)
                local line = Drawing.new("Line")
                line.Visible = false
                line.From = Vector2.new(0, 0)
                line.To = Vector2.new(0, 0)
                line.Color = color 
                line.Thickness = thickness
                line.Transparency = 1
                return line
            end
            
            local function Visibility(state, lib)
                for u, x in pairs(lib) do
                    x.Visible = state
                end
            end
            
            local function ToColor3(col) --Function to convert, just cuz c;
                local r = col.r --Red value
                local g = col.g --Green value
                local b = col.b --Blue value
                return Color3.new(r,g,b); --Color3 datatype, made of the RGB inputs
            end
            
            local black = Color3.fromRGB(0, 0 ,0)
            local function ESP(plr)
                local library = {
                    --//Tracer and Black Tracer(black border)
                    blacktracer = NewLine(Settings.Tracer_Thickness*2, black),
                    tracer = NewLine(Settings.Tracer_Thickness, Settings.Tracer_Color),
                    --//Box and Black Box(black border)
                    black = NewQuad(Settings.Box_Thickness*2, black),
                    box = NewQuad(Settings.Box_Thickness, Settings.Box_Color),
                    --//Bar and Green Health Bar (part that moves up/down)
                    healthbar = NewLine(3, black),
                    greenhealth = NewLine(1.5, black)
                }
            
                local function Colorize(color)
                    for u, x in pairs(library) do
                        if x ~= library.healthbar and x ~= library.greenhealth and x ~= library.blacktracer and x ~= library.black then
                            x.Color = color
                        end
                    end
                end
            
                local function Updater()
                    local connection
                    connection = game:GetService("RunService").RenderStepped:Connect(function()
                        if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("Head") ~= nil then
                            local HumPos, OnScreen = camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
                            if OnScreen then
                                local head = camera:WorldToViewportPoint(plr.Character.Head.Position)
                                local DistanceY = math.clamp((Vector2.new(head.X, head.Y) - Vector2.new(HumPos.X, HumPos.Y)).magnitude, 2, math.huge)
                                
                                local function Size(item)
                                    item.PointA = Vector2.new(HumPos.X + DistanceY, HumPos.Y - DistanceY*2)
                                    item.PointB = Vector2.new(HumPos.X - DistanceY, HumPos.Y - DistanceY*2)
                                    item.PointC = Vector2.new(HumPos.X - DistanceY, HumPos.Y + DistanceY*2)
                                    item.PointD = Vector2.new(HumPos.X + DistanceY, HumPos.Y + DistanceY*2)
                                end
                                Size(library.box)
                                Size(library.black)
            
                                --//Tracer 
                                if Settings.Tracers then
                                    if Settings.Tracer_Origin == "Middle" then
                                        library.tracer.From = camera.ViewportSize*0.5
                                        library.blacktracer.From = camera.ViewportSize*0.5
                                    elseif Settings.Tracer_Origin == "Bottom" then
                                        library.tracer.From = Vector2.new(camera.ViewportSize.X*0.5, camera.ViewportSize.Y) 
                                        library.blacktracer.From = Vector2.new(camera.ViewportSize.X*0.5, camera.ViewportSize.Y)
                                    end
                                    if Settings.Tracer_FollowMouse then
                                        library.tracer.From = Vector2.new(mouse.X, mouse.Y+36)
                                        library.blacktracer.From = Vector2.new(mouse.X, mouse.Y+36)
                                    end
                                    library.tracer.To = Vector2.new(HumPos.X, HumPos.Y + DistanceY*2)
                                    library.blacktracer.To = Vector2.new(HumPos.X, HumPos.Y + DistanceY*2)
                                else 
                                    library.tracer.From = Vector2.new(0, 0)
                                    library.blacktracer.From = Vector2.new(0, 0)
                                    library.tracer.To = Vector2.new(0, 0)
                                    library.blacktracer.To = Vector2.new(0, 02)
                                end
            
                                --// Health Bar
                                local d = (Vector2.new(HumPos.X - DistanceY, HumPos.Y - DistanceY*2) - Vector2.new(HumPos.X - DistanceY, HumPos.Y + DistanceY*2)).magnitude 
                                local healthoffset = plr.Character.Humanoid.Health/plr.Character.Humanoid.MaxHealth * d
            
                                library.greenhealth.From = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2)
                                library.greenhealth.To = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2 - healthoffset)
            
                                library.healthbar.From = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2)
                                library.healthbar.To = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y - DistanceY*2)
            
                                local green = Color3.fromRGB(0, 255, 0)
                                local red = Color3.fromRGB(255, 0, 0)
            
                                library.greenhealth.Color = red:lerp(green, plr.Character.Humanoid.Health/plr.Character.Humanoid.MaxHealth);
            
                                if Team_Check.TeamCheck then
                                    if plr.TeamColor == player.TeamColor then
                                        Colorize(Team_Check.Green)
                                    else 
                                        Colorize(Team_Check.Red)
                                    end
                                else 
                                    library.tracer.Color = Settings.Tracer_Color
                                    library.box.Color = Settings.Box_Color
                                end
                                if TeamColor == true then
                                    Colorize(plr.TeamColor.Color)
                                end
                                Visibility(true, library)
                            else 
                                Visibility(false, library)
                            end
                        else 
                            Visibility(false, library)
                            if game.Players:FindFirstChild(plr.Name) == nil then
                                connection:Disconnect()
                            end
                        end
                    end)
                end
                coroutine.wrap(Updater)()
            end
            
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Name ~= player.Name then
                    coroutine.wrap(ESP)(v)
                end
            end
            
            game.Players.PlayerAdded:Connect(function(newplr)
                if newplr.Name ~= player.Name then
                    coroutine.wrap(ESP)(newplr)
                end
            end)
        end,
     })





end



