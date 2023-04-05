-- This aint the whole script, AC bypass is here and wont work without it-> https://v3rmillion.net/showthread.php?tid=1167323

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Valuess = 1

function player()
    local monke = {}
for _, Player in next, game.Players:GetChildren() do
if Player.Rank.Value >=50 then 
    table.insert(monke, Player.Name)
    else
       table.insert(monke, Player.Name) 
end
end
return monke
end

local Window = OrionLib:MakeWindow({Name = "~De Pride Isle Sanatorium~"})

OrionLib:MakeNotification({
	Name = "Ketone",
	Content = "Thanks for using my script make sure to vouch!",
	Image = "rbxassetid://6833114846",
	Time = 5
})

local Tab = Window:MakeTab({
	Name = "LocalPlayer",
	Icon = "rbxassetid://80985",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Anonymous",
	Callback = function()
	    
	    for i,f in pairs(game.Workspace[game.Players.LocalPlayer.Name].Head.Rank:GetChildren()) do
    if f:IsA("TextLabel") then
        f:Destroy()
	    
      	for i,v in next, game:GetService('Players').LocalPlayer.Character:GetChildren() do
   if v:IsA('Accessory') then
       v:Destroy()
   end
end
local pchar = game:GetService("Players").LocalPlayer.Character
if pchar:FindFirstChild("Shirt") then
   pchar.Shirt:Remove()
end

wait()
local pchar = game:GetService("Players").LocalPlayer.Character
if pchar:FindFirstChild("Pants") then
   pchar.Pants:Remove()
end

wait()
local pchar = game:GetService("Players").LocalPlayer.Character
if pchar:FindFirstChild("Shirt") then
   pchar.Shirt:Remove()
end

wait()
local pchar = game:GetService("Players").LocalPlayer.Character
if pchar:FindFirstChild("ShirtGraphic") then
   pchar.Pants:Remove()
   end
    end
end
end
})

Tab:AddButton({
	Name = "No Blur",
	Callback = function()
      	for i,f in pairs(game.Lighting:GetChildren()) do
    if f:IsA("ColorCorrectionEffect") and f.Name == "PanicColor" or "PanicBlur" or "Blur" then
        f.Enabled = false
end

end
  	end    
})

Tab:AddButton({
	Name = "No Ragdoll",
	Callback = function()
      		    OrionLib:MakeNotification({
	Name = "Ragdoll",
	Content = "Note, this will NOT work against the holy stick due to it being a SS remote on the staffs side not ours.",
	Image = "rbxassetid://6833114846",
	Time = 10
})
local mt = getrawmetatable(game)
setreadonly(mt,false)

local old = mt.__namecall

mt.__namecall = function(...)
    local method= getnamecallmethod() or get_namecall_method()
    local args = {...}
    if method == "FireServer" and args[2] == "Ragdoll" then
          return nil
    end
    return old(...)
end
	end    
})

Tab:AddButton({
	Name = "No Fall Damage",
	Callback = function()
      	local mt = getrawmetatable(game)
setreadonly(mt,false)

local old = mt.__namecall

mt.__namecall = function(...)
    local method= getnamecallmethod() or get_namecall_method()
    local args = {...}
    if method == "FireServer" and args[2] == "FallDamage" then
          return nil
    end
    return old(...)
end
  	end    
})

Tab:AddButton({
	Name = "Reset",
	Callback = function()
      	local player = game:getService("Players").LocalPlayer
local lastPosition = player.Character.PrimaryPart.Position
player.Character:BreakJoints()
Player.CharacterAdded:connect(function(char)
if (lastPosition ~= nil) then
char:moveTo(lastPosition)
lastPosition = nil
end
end)
  	end    
})

local Tab = Window:MakeTab({
	Name = "Movement",
	Icon = "rbxassetid://4799",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Fly",
	Callback = function()
	          	OrionLib:MakeNotification({
	Name = "Fly",
	Content = "(E) to toggle flight \nAlso Works as Noclip",
	Image = "rbxassetid://6833114846",
	Time = 5
})
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/LegitH3x0R/Roblox-Scripts/main/AEBypassing/CFrameFly.lua"))()
  	end    
})

Tab:AddButton({
	Name = "No Stamina",
	Callback = function()
      	local mt = getrawmetatable(game)
setreadonly(mt,false)

local old = mt.__namecall

mt.__namecall = function(...)
    local method= getnamecallmethod() or get_namecall_method()
    local args = {...}
    if method == "FireServer" and args[2] == "Vagour" then
          return nil
    end
    return old(...)
end

  	end    
})

Tab:AddButton({
	Name = "Inf Jump",
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

Tab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 200,
	Default = 20,
	Increment = 5,
	ValueName = "bananas",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
	end    
})

Tab:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 200,
	Default = 50,
	Increment = 5,
	ValueName = "spinach",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
	end    
})

local Tab = Window:MakeTab({
	Name = "Players",
	Icon = "rbxassetid://7268",
	PremiumOnly = false
})

local dropdown = Tab:AddDropdown({
    Name = "Players",
    Default = "1",
    Options = {"1", "2"},
    Callback = function(Values)
        Valuess = Values
    end    
})
dropdown:Refresh(player{}, true)

Tab:AddButton({
    Name = "Go to Player",
    Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Valuess].Character.HumanoidRootPart.CFrame
      end    
})

local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://44898",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "No Barriers",
    Callback = function()
          for i,f in pairs(game.Workspace.RankBarriers:GetChildren()) do
    if f:IsA("Part") then
        f.CanCollide = false
end

end
      end    
})

Tab:AddButton({
    Name = "Full Bright",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/06iG6YkU", true))()
      end    
})

Tab:AddButton({
    Name = "No Hunger",
    Callback = function()
local Anticheat = game:GetService("Players").LocalPlayer.Voracity
local GameMt = getrawmetatable(game)
local OldIndex = GameMt.__index

setreadonly(GameMt, false)

GameMt.__index = newcclosure(function(Self, Key)
   if not checkcaller() and Self == Anticheat and Key == "Value" then
       return math.huge
   end

   return OldIndex(Self, Key)
end)

setreadonly(GameMt, true)

wait()
      		    OrionLib:MakeNotification({
	Name = "Hungy",
	Content = "Not made by me nor is it tested but it might work! \nIm just to lazy to wait the time to see if it kills you",
	Image = "rbxassetid://683346",
	Time = 15
})
      end    
})

Tab:AddParagraph("More Soon...","Wanna Help with the Process? Vouch or doante a staff account \nOtherwise, Have Fun!")

local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://44898",
	PremiumOnly = false
})

Tab:AddLabel("Creator: Ketone")
Tab:AddLabel("Sexy mf: jarad420")
Tab:AddLabel("Another Sexy mf: CraX")

OrionLib:Init()