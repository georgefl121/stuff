done = false
spawn(function()
	repeat
	for i,v in pairs(game.Players:GetPlayers()) do
		if v.Name == "PenguiniteR" then
			done = true
            	end
	end
	wait(1)
	until done == true
end)

spawn(function()
    while wait() do
        if done == true then
            for i,v in pairs(game.Players:GetPlayers()) do
                if v.Name == "PenguiniteR" then
                    pcall(function()
                        local target = v
                        local plr = target.Name
                        local name = workspace[plr]
                        local plrHP = game:GetService("Workspace")[plr].Stats.MaxHP.Value
                        local DMG = tonumber(plrHP)
                        local ohTable5 = {
                            ["critgen"] = {
                                ["amt"] = 60
                            }
                        }
                        game:GetService("ReplicatedStorage").Remotes.Damage:FireServer(name, DMG, nil, nil, nil, nil, nil, nil, keys)
                        --game:GetService("ReplicatedStorage").Remotes.HitJunction:FireServer(name, vec, 999, tonumber(plrHP), ohTable5, nil, nil, nil, nil, nil, keys)
                    end)
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
                if v.Name == "PenguiniteR" and v:FindFirstChild("Alive") and pcall(function() return v.Character.HumanoidRootPart,player.Backpack.Core.Client end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < 40000 then
                    pcall(function()
                        local vec = player.Character.HumanoidRootPart.Position
                        game:GetService("ReplicatedStorage").Remotes.Knockback:FireServer(v.Character, vec, -150, nil, 4, keys)
                        local name = v.Name
                        local ohVector31 = Vector3.new(workspace[name].Head.Position.X, workspace[name].Head.Position.Y, workspace[name].Head.Position.Z)
                        local ohString2 = "L Nigger😂😂😂"
                        local ohColor33 = Color3.new(255, 255, 0)
                        game:GetService("ReplicatedStorage").Remotes.DmgPopup:FireServer(ohVector31, ohString2, ohColor33)
                        wait(1)
                    end)
                end
            end
            wait()
        end
    end
end)
