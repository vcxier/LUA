local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/gasps/LUA/main/Orion/source')))()


local Player = game.Players.LocalPlayer

local Window = OrionLib:MakeWindow({Name = "gasps.github.io - login", HidePremium = false, SaveConfig = true, IntroText = "gasps.github.io"})

OrionLib:MakeNotification({
	Name = "welcome to gasps hub",
	Content = "developer version - welcome "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local LoginTab = Window:MakeTab({
	Name = "Login",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
LoginTab:AddTextbox({
	Name = "login",
	Default = "enter username",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})

Local RegisterTab = Window:MakeTab({
	Name = "Register",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})