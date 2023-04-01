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
