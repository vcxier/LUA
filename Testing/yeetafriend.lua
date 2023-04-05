local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/gasps/LUA/main/Orion/source')))()

local Player = game.Players.LocalPlayer

local Window = OrionLib:MakeWindow({Name = "gasps.github.io - dev", HidePremium = false, SaveConfig = true, IntroText = "gasps.github.io"})

OrionLib:MakeNotification({
	Name = "welcome to gasps hub",
	Content = "developer version - welcome "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

-- TABS
local mainTab = Window:MakeTab({
	Name = "main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local playerTab = Window:MakeTab({
	Name = "player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local teleportsTab = Window:MakeTab({
	Name = "teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local miscTab = Window:MakeTab({
	Name = "misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local creditsTab = Window:MakeTab({
	Name = "credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local otherScripts = Window:MakeTab({
	Name = "games list",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
-- FUNCTIONS // VALUES

local ServerHopLowFunc
local NormalServerHopFunc

getgenv().Stars = false;
getgenv().autoThrow = false;
getgenv().Teleports = "string"


function Collect()
    spawn(function ()
        while getgenv().Stars do
            for i, v in pairs(game:GetService("Workspace").Stars:GetChildren()) do
local args = {[1] = v.Name} game:GetService("ReplicatedStorage").Remote.Star.Server.Collect:FireServer(unpack(args))
            end wait()
        end
    end)
end

function Throw()
	while getgenv().autoThrow == true do
		game:GetService("ReplicatedStorage").Remote.Throw.Server.Request:FireServer()
		wait (3)
		game:GetService("ReplicatedStorage").Remote.Throw.Client.Reset:FireServer()
		wait(5)
	end
end
ServerHopLowFunc = function()
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Low Player Server Hop", -- Required
        Text = "Switching servers to lower players", -- Required
        Icon = "rbxassetid://1234567890" -- Optional
    })

    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"
    
    local _place = game.PlaceId
    local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
    function ListServers(cursor)
       local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
       return Http:JSONDecode(Raw)
    end
    
    local Server, Next; repeat
       local Servers = ListServers(Next)
       Server = Servers.data[1]
       Next = Servers.nextPageCursor
    until Server
    
    TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
    
    if #servers == 0 then return end
    
    for i,v in pairs(servers) do
        table.insert(serversplayers,#serversplayers+1,tonumber(v.playing))
    end
    
    table.sort(serversplayers)
    
    for i,v in pairs(servers) do
       if v.playing == serversplayers[1] and v.id ~= game.JobId then
           servers = {v.id}
       elseif v.id == game.JobId then
           servers = {}
       end
    end
    
    if #servers == 0 then return end
    
    if #servers > 0 then
        game.TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
    end 
end

NormalServerHopFunc = function()
    local Player = game.Players.LocalPlayer    
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"
    
    local _place,_id = game.PlaceId, game.JobId
    local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
    function ListServers(cursor)
       local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
       return Http:JSONDecode(Raw)
    end
    
    local Next; repeat
       local Servers = ListServers(Next)
       for i,v in next, Servers.data do
           if v.playing < v.maxPlayers and v.id ~= _id then
               local s,r = pcall(TPS.TeleportToPlaceInstance,TPS,_place,v.id,Player)
               if s then break end
           end
       end
       
       Next = Servers.nextPageCursor
    until not Next
    
    if #servers == 0 then return end
    
    for i,v in pairs(servers) do
        table.insert(serversplayers,#serversplayers+1,tonumber(v.playing))
    end
    
    table.sort(serversplayers)
    
    for i,v in pairs(servers) do
       if v.playing == serversplayers[1] and v.id ~= game.JobId then
           servers = {v.id}
       elseif v.id == game.JobId then
           servers = {}
       end
    end
    
    if #servers == 0 then return end
    
    if #servers > 0 then
        game.TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
    end 
end

-- BUTTONS/TOGGLES ETC
mainTab:AddToggle({
	Name = "auto throw",
	Default = false,
	Callback = function(Value)
		getgenv().autoThrow = Value
		Throw()
	end    
})
mainTab:AddToggle({
	Name = "auto collect",
	Default = false,
	Callback = function(Value)
		getgenv().Stars = Value
		Collect()
	end    
})
mainTab:AddButton({
	Name = "unfreeze",
	Icon2 = "rbxassetid://12958429296",
	Color = Color3.fromRGB(0,60,121),
	Callback = function()
		OrionLib:MakeNotification({
			Name = "unfreeze",
			Content = "right click to unfreeze (requires throw to reset character)",
			Image = "rbxassetid://12958429296",
			Time = 5
		})
	game:GetService("ReplicatedStorage").Remote.Throw.Server.Landed:InvokeServer()
	end
	})

	mainTab:AddButton({
		Name = "spacing",
		Icon2 = "rbxassetid://12958429296",
		Color = Color3.fromRGB(0,60,121),
		Callback = function()
			print(1)
		end
		})
		mainTab:AddButton({
			Name = "throw",
			Icon2 = "rbxassetid://12958429296",
			Color = Color3.fromRGB(0,60,121),
			Callback = function()
				game:GetService("ReplicatedStorage").Remote.Throw.Server.Request:FireServer()
				game:GetService("ReplicatedStorage").Remote.Player.Server.GetData:InvokeServer()

			end
			})
			mainTab:AddButton({
				Name = "land 1",
				Icon2 = "rbxassetid://12958429296",
				Color = Color3.fromRGB(0,60,121),
				Callback = function()
					game:GetService("ReplicatedStorage").Remote.Throw.Server.Landed:InvokeServer(821549.303811073, 0)
					game:GetService("ReplicatedStorage").Remote.Player.Server.GetData:InvokeServer()

				end
				})
				mainTab:AddButton({
					Name = "land 2",
					Icon2 = "rbxassetid://12958429296",
					Color = Color3.fromRGB(0,60,121),
					Callback = function()
						game:GetService("ReplicatedStorage").Remote.Throw.Server.Landed:InvokeServer(974473.8038110733, 5.2000000000000002)
						game:GetService("ReplicatedStorage").Remote.Player.Server.GetData:InvokeServer()

					end
					})


teleportsTab:AddDropdown({
	Name = "TP List",
	Default = "Spawn",
	Options = {"Spawn", "Throw Area", "Rocket", "Daily Spin", "VIP Area", "Eggs/Throws Leaderboards", "Robux/Rebirths Leaderboards"},
	Callback = function(Value)
		getgenv().Teleports = Value
	end    
})

teleportsTab:AddButton({
	Name = "Teleport",
	Icon2 = "rbxassetid://12958429296",
	Color = Color3.fromRGB(0,60,121),
	Callback = function()
		if getgenv().Teleports == "Spawn" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-170.170212, 6.10898685, -109.651711, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		elseif getgenv().Teleports == "Throw Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-82.725563, 9.15128231, -111.217743, -0.0151698915, -2.1391761e-05, -0.999884903, 3.40737927e-07, 1, -2.13993917e-05, 0.999884903, -6.6532516e-07, -0.0151698915)
		elseif getgenv().Teleports == "Rocket" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-136.244202, 11.4777622, -51.5036621)
		elseif getgenv().Teleports == "Daily Spin" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-216.282562, 9.24707699, -51.6852379, -0.999815106, 1.82516513e-09, -0.0192297492, 1.89960114e-09, 1, -3.85261956e-09, 0.0192297492, -3.8884358e-09, -0.999815106)
		elseif getgenv().Teleports == "VIP Area" then
			OrionLib:MakeNotification({
				Name = "teleport - vip area",
				Content = "vip stars will not pick-up unless you have the gamepass",
				Image = "rbxassetid://12958429296",
				Time = 10
			})
			wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-275.415436, 14.5556173, -105.999947, 0.0122090774, 9.35254452e-09, 0.999925494, 2.68807487e-09, 1, -9.38606259e-09, -0.999925494, 2.80246959e-09, 0.0122090774)
		elseif getgenv().Teleports == "Eggs/Throws Leaderboards" then
			OrionLib:MakeNotification({
				Name = "teleport - Eggs/Throws",
				Content = "showing eggs opened and longest throw statistics",
				Image = "rbxassetid://12958429296",
				Time = 5
			})
			wait(1.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-135.070831, 9.24707508, -169.11058, 0.999995351, 2.95422531e-08, 0.00305202301, -2.95986524e-08, 1, 1.84338553e-08, -0.00305202301, -1.85241049e-08, 0.999995351)
		elseif getgenv().Teleports == "Robux/Rebirths Leaderboards" then
			OrionLib:MakeNotification({
				Name = "teleport - Robux/Rebirths",
				Content = "showing robux spent and most rebirth statistics",
				Image = "rbxassetid://12958429296",
				Time = 5
			})
			wait(1.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-238.753082, 9.24707699, -165.075806, 0.999958396, 1.29924738e-08, -0.00912465435, -1.33359555e-08, 1, -3.75823674e-08, 0.00912465435, 3.77024882e-08, 0.999958396)

		end
	end
})


playerTab:AddSlider({
	Name = "walkspeed",
	Min = 16,
	Max = 200,
	Increment = 1,
	ValueName = "#",
	Color = Color3.fromRGB(0,60,121),
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
	end     
})
playerTab:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 200,
	Default = 50,
	Increment = 1,
	ValueName = "#",
	Color = Color3.fromRGB(0,60,121),
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
	end    
})
playerTab:AddButton({
	Name = "inf jump (laggy)",
	Icon2 = "rbxassetid://12958429296",
	Color = Color3.fromRGB(0,60,121),
	Callback = function()
	    while wait() do
      	local Player = game:GetService'Players'.LocalPlayer;
		local UIS = game:GetService'UserInputService';

		_G.JumpHeight = game.Players.LocalPlayer.Character.Humanoid.JumpPower;

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
	    end    
  end
})
playerTab:AddButton({
	Name = "fly",
	Icon2 = "rbxassetid://12958429296",
	Callback = function()
	          	OrionLib:MakeNotification({
	Name = "fly",
	Content = "e to toggle flight \n noclip enabled aswell",
	Image = "rbxassetid://12958429296",
	Time = 10
})
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/gasps/LUA/main/Scripts/Roblox/AEBypassing/CFrameFly.lua"))()
  	end    
})
playerTab:AddButton({
	Name = "fast fly",
	Icon2 = "rbxassetid://12958429296",
	Callback = function()
	          	OrionLib:MakeNotification({
	Name = "fast fly",
	Content = "e to toggle flight \n noclip enabled aswell",
	Image = "rbxassetid://12958429296",
	Time = 10
})
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/gasps/LUA/main/Scripts/Roblox/AEBypassing/CFrameFlyFast.lua"))()
  	end    
})
playerTab:AddButton({
	Name = "noclip (e)",
	Icon2 = "rbxassetid://12958429296",
	Callback = function()
	          	OrionLib:MakeNotification({
	Name = "noclip",
	Content = "e to noclip",
	Image = "rbxassetid://12958429296",
	Time = 10
})
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/gasps/LUA/main/Scripts/Roblox/gasps/ToggleableNoClip.txt"))()
  	end    
})
playerTab:AddButton({
	Name = "noclip",
	Icon2 = "rbxassetid://12958429296",
	Callback = function()
	          	OrionLib:MakeNotification({
	Name = "noclip",
	Content = "e to noclip",
	Image = "rbxassetid://12958429296",
	Time = 10
})
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/gasps/LUA/main/Scripts/Roblox/gasps/noClip.txt"))()
  	end    
})

miscTab:AddButton({
	Name = "low player server hop",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "switching servers",
			Content = "selection: lower # players",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
		wait(5)
		ServerHopLowFunc()
  	end    
})
miscTab:AddButton({
	Name = "normal server hop",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "switching servers",
			Content = "selection: normal # players",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
		wait(5)
        NormalServerHopFunc()
  	end    
})

otherScripts:AddButton({
	Name = "Yeet a Friend (Obfuscated)",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/gasps/LUA/main/Scripts/Games/yeet%20a%20friend%20(obf).txt')))()
  	end    
})
otherScripts:AddButton({
	Name = "Yeet a Friend (Open Source)",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/gasps/LUA/main/Scripts/Games/yeet%20a%20friend%20(src).txt')))()
  	end    
})
-- SPACING --
local spacing1 = Window:MakeTab({
	Name = " ",
	Icon = "rbxassetid://12959197370",
	PremiumOnly = false
})
local spacing2 = Window:MakeTab({
	Name = " ",
	Icon = "rbxassetid://12959197370",
	PremiumOnly = false
})
local spacing3 = Window:MakeTab({
	Name = " ",
	Icon = "rbxassetid://12959197370",
	PremiumOnly = false
})
local spacing4 = Window:MakeTab({
	Name = " ",
	Icon = "rbxassetid://12959197370",
	PremiumOnly = false
})
local spacing5 = Window:MakeTab({
	Name = " ",
	Icon = "rbxassetid://12959197370",
	PremiumOnly = false
})

-- TESTING AREA --
local testingTab = Window:MakeTab({
	Name = "Testing",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

testingTab:AddButton({
	Name = "Github GUI",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/gasps/LUA/main/Testing/orion_test.lua')))()
  	end    
})


-- DEVELOPER AREA --
local DeveloperTab = Window:MakeTab({
	Name = "Developer Tools",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

DeveloperTab:AddButton({
	Name = "inject SimpleSpy paste",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/gasps/LUA/main/Scripts/Developer%20Scripts/SimpleSpy.lua')))()
  	end    
})
DeveloperTab:AddButton({
	Name = "inject Hydroxide",
	Callback = function()
		local owner = "Upbolt"
		local branch = "revision"	
		local function webImport(file)
			return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
		end
		
		webImport("init")
		webImport("ui/main")
  	end    
})
DeveloperTab:AddButton({
	Name = "inject SimpleSpy (NEW)",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua')))()
  	end    
})
DeveloperTab:AddButton({
	Name = "inject DarkDex v3",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/gasps/LUA/main/Scripts/Developer%20Scripts/DarkDexV3.lua')))()
  	end    
})
DeveloperTab:AddButton({
	Name = "save workspace",
	Callback = function()
		makefolder("gasps.github.io workspace saves")
		saveinstance(game, "gasps.github.io workspace saves/dumped_game")
	end
})




OrionLib:Init()

