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

local DeveloperTab = Window:MakeTab({
	Name = "Developer Tools",
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

-- FUNCTIONS // VALUES

local ServerHopLowFunc
local NormalServerHopFunc

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


-- DEVELOPER AREA --

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

