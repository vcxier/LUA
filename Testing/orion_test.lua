<<<<<<< HEAD
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/gasps/LUA/main/Orion/source')))()

local Player = game.Players.LocalPlayer

local Window = OrionLib:MakeWindow({Name = "gasps.github.io - dev", HidePremium = false, SaveConfig = true, IntroText = "gasps.github.io"})

OrionLib:MakeNotification({
	Name = "welcome to gasps hub",
	Content = "developer version - welcome "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})


local mainTab = Window:MakeTab({
	Name = "main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

mainTab:AddToggle({
	Name = "auto collect",
	Default = false,
	Callback = function(Value)
		print(Value)
	end  
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
teleportsTab:AddButton({
	Name = "rocket",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-136.244202, 11.4777622, -51.5036621)
  	end    
})
teleportsTab:AddButton({
	Name = "daily spin",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-216.282562, 9.24707699, -51.6852379, -0.999815106, 1.82516513e-09, -0.0192297492, 1.89960114e-09, 1, -3.85261956e-09, 0.0192297492, -3.8884358e-09, -0.999815106)
  	end    
})
teleportsTab:AddButton({
	Name = "throw area",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-82.725563, 9.15128231, -111.217743, -0.0151698915, -2.1391761e-05, -0.999884903, 3.40737927e-07, 1, -2.13993917e-05, 0.999884903, -6.6532516e-07, -0.0151698915)
  	end    
})
teleportsTab:AddButton({
	Name = "vip area",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-82.725563, 9.15128231, -111.217743, -0.0151698915, -2.1391761e-05, -0.999884903, 3.40737927e-07, 1, -2.13993917e-05, 0.999884903, -6.6532516e-07, -0.0151698915)
  	end    
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
-- FUNCTIONS --

-- MISC FUNCTIONS --

playerTab:AddSlider({
	Name = "walkspeed",
	Min = 16,
	Max = 200,
	Default = 16,
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
	Icon2 = "rbxassetid://12958391742",
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
	Icon2 = "rbxassetid://12958391742",
	Callback = function()
	          	OrionLib:MakeNotification({
	Name = "fly",
	Content = "e to toggle flight \n noclip enabled aswell",
	Image = "rbxassetid://6833114846",
	Time = 10
})
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/gasps/LUA/main/Scripts/Roblox/AEBypassing/CFrameFly.lua"))()
  	end    
})

playerTab:AddButton({
	Name = "fast fly",
	Icon2 = "rbxassetid://12958391742",
	Callback = function()
	          	OrionLib:MakeNotification({
	Name = "fast fly",
	Content = "e to toggle flight \n noclip enabled aswell",
	Image = "rbxassetid://6833114846",
	Time = 10
})
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/gasps/LUA/main/Scripts/Roblox/AEBypassing/CFrameFlyFast.lua"))()
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

=======
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/gasps/LUA/main/Orion/source')))()

local Player = game.Players.LocalPlayer

local Window = OrionLib:MakeWindow({Name = "gasps.github.io - login", HidePremium = false, SaveConfig = true, IntroText = "gasps.github.io"})

OrionLib:MakeNotification({
	Name = "welcome to gasps hub",
	Content = "developer version - welcome "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})


local mainTab = Window:MakeTab({
	Name = "main",
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
local gamesList = Window:MakeTab({
	Name = "games list",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


-- TESTING AREA --

local testingTab = Window:MakeTab({
	Name = "testing",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
testingTab:AddButton({
	Name = "Testing GUI",
	Callback = function()
        print("FunCTION")
  	end    
})
>>>>>>> 92e27af514c4421a0b97df4c7e54f287f0691e0c
