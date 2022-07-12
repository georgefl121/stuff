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
            wait(10)
        end
    end
end)

