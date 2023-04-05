--// Vars \\--
local ItemFarm
local ItemFarmFunc
local AutoRobATM
local AutoRobBank
local AutoRobBankFunc
local AutoRobATMFunc
local ServerHopLowFunc
local NormalServerHopFunc
local HugeHeadFunc
local HugeHead
local BigHeadFunc
local BigHead
local MediumHeadFunc
local MediumHead
local SmallHeadFunc
local SmallHead
local NoClipToggled
local NoClipFunc

--// LIB \\--
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/gasps/LUA/main/MaterialLua/Module.lua"))()

local X = Material.Load({
	Title = "gasps.github.io | ohio",
	Style = 3,
	SizeX = 400,
	SizeY = 400,
	Theme = "Dark",
	ColorOverrides = {
    		MainFrame = Color3.fromRGB(0, 0, 0),
    		Minimise = Color3.fromRGB(214, 1, 1),
    		MinimiseAccent = Color3.fromRGB(5, 0, 0),
    		Maximise = Color3.fromRGB(25,255,0),
    		MaximiseAccent = Color3.fromRGB(0,255,110),
    		NavBar = Color3.fromRGB(255, 255, 255),
    		NavBarAccent = Color3.fromRGB(0, 0, 0),
    		NavBarInvert = Color3.fromRGB(235,235,235),
    		TitleBar = Color3.fromRGB(0, 0, 0),
    		TitleBarAccent = Color3.fromRGB(255, 255, 255),
    		Overlay = Color3.fromRGB(175,175,175),
    		Banner = Color3.fromRGB(0, 182, 232),
    		BannerAccent = Color3.fromRGB(255,255,255),
    		Content = Color3.fromRGB(82, 82, 82),
    		Button = Color3.fromRGB(65, 65, 65),
    		ButtonAccent = Color3.fromRGB(255, 255, 255),
    		ChipSet = Color3.fromRGB(235,235,235),
    		ChipSetAccent = Color3.fromRGB(75,75,75),
    		DataTable = Color3.fromRGB(235,235,235),
    		DataTableAccent = Color3.fromRGB(75,75,75),
    		Slider = Color3.fromRGB(65, 65, 65),
    		SliderAccent = Color3.fromRGB(255, 255, 255),
    		Toggle = Color3.fromRGB(255, 255, 255),
    		ToggleAccent = Color3.fromRGB(0, 0, 0),
    		Dropdown = Color3.fromRGB(75,75,75),
    		DropdownAccent = Color3.fromRGB(125,125,125),
    		ColorPicker = Color3.fromRGB(75,75,75),
    		ColorPickerAccent = Color3.fromRGB(235,235,235),
    		TextField = Color3.fromRGB(65, 65, 65),
    		TextFieldAccent = Color3.fromRGB(255,255,255),
    }
})

local main = X.New({
	Title = "MAIN"
})

local misc = X.New({
    Title = "MISC"
})

local risky = X.New({
	Title = "RISKY"
})

local credits = X.New({
	Title = "CREDITS"
})
local testing = X.New({
    Title = "TESTING"
})

--// CREDITS \\--
credits.Button({
    Text = "gasps.github.io",
    Callback = function() setclipboard("gasps.github.io") game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "ohio",
	Text = "copied my website, now check it out..",
}) end,
})

credits.Button({
    Text = "discord",
    Callback = function() setclipboard("https://discord.gg/guilty") game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "ohio",
	Text = "guilty discord copied.",
}) end,
})

credits.Button({
    Text = "this game is actually fucking shit tho fr",
    Callback = function() setclipboard("gasps.github.io") game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "ohio",
	Text = "copied my website, now check it out..",
}) end,
})

credits.Button({
    Text = "skidded xd",
    Callback = function() setclipboard("gasps.github.io") game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "ohio",
	Text = "copied my website, now check it out..",
}) end,
})

credits.Button({
    Text = "xdxdxdxd",
    Callback = function() setclipboard("gasps.github.io") game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "ohio",
	Text = "copied my website, now check it out..",
}) end,
})

local AutoItems = main.Toggle({
    Text = "tp + collect items & cash",
    Callback = function(v)
        ItemFarm = v
        
        if ItemFarm then
            pcall(function()
                ItemFarmFunc()
            end)
        end
    end
})

local AutoRobBankT = main.Toggle({
    Text = "auto rob bank",
    Callback = function(v)
        AutoRobBank = v
        
        if AutoRobBank then
            pcall(function()
                AutoRobBankFunc()
            end)
        end
    end
})

local AutoRobATMT = main.Toggle({
    Text = "rob atm's (broken)",
    Callback = function(v)
        AutoRobATM = v
        
        if AutoRobATM then
            pcall(function()
                AutoRobATMFunc()
            end)
        end
    end
})

local NoClip = main.Toggle({
    Text = "noclip",
    Callback = function(v)
        NoClipToggled = v
        

        pcall(function()
            NoClipFunc()
        end)
    end
})

local shopLowButton = misc.Button({
    Text = "hop to low player server",
    Callback = function()
        pcall(function()
            ServerHopLowFunc()
        end)
    end,
})
local highButton = misc.Button({
    Text = "normal serverhop",
    Callback = function()
        pcall(function()
            NormalServerHopFunc()
        end)
    end,
})

local hugehead = risky.Toggle({
    Text = "Huge Head Hitbox",
    Callback = function(v)
        HugeHead = v
        
        if HugeHead then
            pcall(function()
                HugeHeadFunc()
            end)
        end
    end
})

local bighead = risky.Toggle({
    Text = "Big Head Hitbox",
    Callback = function(v)
        BigHead = v
        
        if BigHead then
            pcall(function()
                BigHeadFunc()
            end)
        end
    end
})

local mediumhead = risky.Toggle({
    Text = "Medium Head Hitbox",
    Callback = function(v)
        MediumHead = v
        
        if MediumHead then
            pcall(function()
                MediumHeadFunc()
            end)
        end
    end
})

local smallhead = risky.Toggle({
    Text = "Small Head Hitbox",
    Callback = function(v)
        SmallHead = v
        
        if SmallHead then
            pcall(function()
                SmallHeadFunc()
            end)
        end
    end
})


function GetItems()
   local cache = {}
   
   for i,v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren()) do
       table.insert(cache,v)
   end
   
   for i,v in pairs(game:GetService("Workspace").Game.Entities.ItemPickup:GetChildren()) do
       table.insert(cache,v)
   end
   
   return cache
end

function Collect(item)
    if item:FindFirstChildOfClass("ClickDetector") then
        fireclickdetector(item:FindFirstChildOfClass("ClickDetector"))
    elseif item:FindFirstChildOfClass("Part") then
        local maincrap = item:FindFirstChildOfClass("Part")
        fireclickdetector(maincrap:FindFirstChildOfClass("ClickDetector"))
    end
end

local NoClipping

function NoClipOn()
    if NoClipToggled == false then NoClipping:Disconnect() NoClipping = nil end
    
    if game.Players.LocalPlayer.Character ~= nil then
        for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
                child.CanCollide = false
            end
        end
    end
end

NoClipFunc = function()
    if NoClipping == nil then
        NoClipping = game.RunService.Stepped:Connect(NoClipOn)
    end
end

ItemFarmFunc = function()
    while ItemFarm and task.wait() do
        local allitems = GetItems()
        
        for i,v in pairs(allitems) do
            if ItemFarm == false then break end
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
                task.wait(0.5)
                Collect(v)
                task.wait(0.5)
            end)
            continue
        end
    end
end

AutoRobBankFunc = function()
    while AutoRobBank and task.wait() do
        local bankthing = game:GetService("Workspace").BankRobbery.BankCash
        if #bankthing.Cash:GetChildren() > 0 then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = bankthing.Main.CFrame
           task.wait()
           fireproximityprompt(game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt)
        end
    end
end

AutoRobATMFunc = function()
while AutoRobATM do task.wait()
    if AutoRobATM == false then break else 
    local VirtualInputManager = game:GetService('VirtualInputManager')
    local vi = game:service'VirtualInputManager'
    for i,v in pairs(game:GetService("Workspace").Game.Props.ATM:GetChildren()) do
        if v:IsA("Model") and v.Name == "ATM" and v:GetAttribute("state") ~= "destroyed" then 
            task.spawn(function()
                while v:GetAttribute("state") ~= "destroyed" do
                    task.wait()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren()) do
                            local mp = v:FindFirstChildOfClass("Part")
                            local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - mp.Position).magnitude
                            
                            if distance <= 15 then
                                fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
                            end
                        end 
                    end)
                end
            end)
            
            repeat task.wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame * CFrame.new(0,-7,0) * CFrame.Angles(math.rad(90),0,0)
                vi:SendMouseButtonEvent(500, 500, 0, true, game, 1)
                task.wait()
                vi:SendMouseButtonEvent(500, 500, 0, false, game, 1)
            until v:GetAttribute("state") == "destroyed" or AutoRobATM == false
            
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren()) do
                    local mp = v:FindFirstChildOfClass("Part")
                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - mp.Position).magnitude
                    
                    if distance <= 15 then
                        fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
                    end
                end
            end)
            task.wait()
        end
    end
end
end
end

HugeHeadFunc = function()
    while HugeHead do task.wait()
            pcall(function()
        for k,v in next, game:GetService('Players'):GetChildren() do 
        Head = v.Character:FindFirstChild('Head')
        if Head then 
                task.wait()
        Head.Size = Vector3.new(200, 200, 200) 
        game.Players.LocalPlayer.Character.Head.Size = Vector3.new(1, 1, 1)
        end
    end
    end)
    end
    for k,v in next, game:GetService('Players'):GetChildren() do 
        Head = v.Character:FindFirstChild('Head')
        if Head then 
                task.wait()
        Head.Size = Vector3.new(1, 1, 1) 
        game.Players.LocalPlayer.Character.Head.Size = Vector3.new(1, 1, 1)
        end
    end
end

BigHeadFunc = function()
    while BigHead do task.wait()
            pcall(function()
        for k,v in next, game:GetService('Players'):GetChildren() do 
        Head = v.Character:FindFirstChild('Head')
        if Head then 
                task.wait()
        Head.Size = Vector3.new(50, 50, 50) 
        game.Players.LocalPlayer.Character.Head.Size = Vector3.new(1, 1, 1)
        end
    end
    end)
    end
    for k,v in next, game:GetService('Players'):GetChildren() do 
        Head = v.Character:FindFirstChild('Head')
        if Head then 
                task.wait()
        Head.Size = Vector3.new(1, 1, 1) 
        game.Players.LocalPlayer.Character.Head.Size = Vector3.new(1, 1, 1)
        end
    end
end

MediumHeadFunc = function()
    while MediumHead do task.wait()
            pcall(function()
        for k,v in next, game:GetService('Players'):GetChildren() do 
        Head = v.Character:FindFirstChild('Head')
        if Head then 
                task.wait()
        Head.Size = Vector3.new(15, 15, 15) 
        game.Players.LocalPlayer.Character.Head.Size = Vector3.new(1, 1, 1)
        end
    end
    end)
    end
    for k,v in next, game:GetService('Players'):GetChildren() do 
        Head = v.Character:FindFirstChild('Head')
        if Head then 
                task.wait()
        Head.Size = Vector3.new(1, 1, 1) 
        game.Players.LocalPlayer.Character.Head.Size = Vector3.new(1, 1, 1)
        end
    end
end

SmallHeadFunc = function()
    while SmallHead do task.wait()
            pcall(function()
        for k,v in next, game:GetService('Players'):GetChildren() do 
        Head = v.Character:FindFirstChild('Head')
        if Head then 
                task.wait()
        Head.Size = Vector3.new(5, 5, 5) 
        game.Players.LocalPlayer.Character.Head.Size = Vector3.new(1, 1, 1)
        end
    end
    end)
    end
    for k,v in next, game:GetService('Players'):GetChildren() do 
        Head = v.Character:FindFirstChild('Head')
        if Head then 
                task.wait()
        Head.Size = Vector3.new(1, 1, 1) 
        game.Players.LocalPlayer.Character.Head.Size = Vector3.new(1, 1, 1)
        end
    end
end




-- server hopping functions --

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

-- end --