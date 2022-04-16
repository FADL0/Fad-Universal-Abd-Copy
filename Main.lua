			repeat wait() until game:IsLoaded()
			local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
			local UI = Material.Load({
			     Title = "Made by Fad#0069",
			     Style = 3,
			     SizeX = 200,
			     SizeY = 300,
			     Theme = "Light"
			})

			local Page = UI.New({
			    Title = "Character"
			})


			Page.Button({
			    Text = "No CD",
			    Callback = function()
			       loadstring((game:HttpGet('https://pastebin.com/raw/frJkW35h')))()
			end
			})


			Page.Button({
			    Text = "god mode",
			    Callback = function()
			       local args = {
			    [1] = game:GetService("Players").LocalPlayer.Character.Humanoid,
			    [2] = CFrame.new(Vector3.new(0, -500, 0), Vector3.new(-0, -0, -1)),
			    [3] = 500,
			    [4] = Vector3.new(0, 0, 0),
			    [5] = 0.075,
			    [6] = "rbxassetid://137579113",
			    [7] = 1.8,
			    [8] = 0.2
			}

			game:GetService("ReplicatedStorage").Heal3:FireServer(unpack(args)) 
			    end
			})



			Page.Button({
			    Text = "Semi-God",
			    Callback = function()

			 local args = {
			    [1] = "SkeletonQueenStand", 
			    [2] = 75 ,
			    [3] = "9000"
			 
			}

			game:GetService("ReplicatedStorage").Stand:FireServer(unpack(args)) 
			
			end
			})


			Page.Button({
			    Text = "Real Buff",
			    Callback = function(value)


			game:GetService("Players").LocalPlayer.Character:BreakJoints()
			local mt = getrawmetatable(game)
			local nc = mt.__namecall
			local newindex = mt.__newindex
			setreadonly(mt, false)
			local Replicated = game:GetService("ReplicatedStorage")

			mt.__namecall = newcclosure(function(self, ...)
			    local args = {...}
			    local m = getnamecallmethod()
			  
				  if m == "FireServer" and self.Name == "Anchor" then
				args[1] = false
				return nc(self, unpack(args))	
			    elseif m == "FireServer" and self.Name == "Damage" then
				args[3] = 100
				return nc(self, unpack(args))
				  elseif m == "FireServer" and self.Name == "DamageGojo" then
				args[3] = 500
				return nc(self, unpack(args))
			     elseif m == "FireServer" and self.Name == "Damage2Gojo" then
				args[3] = 0
				return nc(self, unpack(args))

				  elseif m == "FireServer" and self.Name == "DamageGojo24" then
				args[3] = 850
				return nc(self, unpack(args))
				  elseif m == "FireServer" and self.Name == "Tauntgojo" then
				args[2] = "Real Talk"
				return nc(self, unpack(args))
				   elseif m == "FireServer" and self.Name == "Donut" then
				args[2] = 420
				return nc(self, unpack(args))

				 elseif m == "FireServer" and self.Name == "RTZ" then
				args[1] = true
				return nc(self, unpack(args))

				 elseif m == "FireServer" and self.Name == "Deflect" then
				args[1] = true
				return nc(self, unpack(args))
						
			       elseif m == "FireServer" and self.Name == "GonDamage" then
				args[3] = 0
				return nc(self, unpack(args))
						
				  elseif m == "FireServer" and self.Name == "GonDamage2" then
				args[3] = 100
				return nc(self, unpack(args))	
						
				  elseif m == "FireServer" and self.Name == "GonDamageScissors" then
				args[3] = 500
				return nc(self, unpack(args))
						
				  elseif m == "FireServer" and self.Name == "GonDamageNormal" then
				args[3] = 500
				return nc(self, unpack(args))
								
						
			    end
			    return nc(self, ...)
			end)
						end
			})


			Page.Toggle({
			    Text = "Auto Use Money",
			    Callback = function(value)
				Enabled = value
				if value == true then do
				spawn(function()


			_G.RealCash = true -- Change to false and execute to turn off

			while _G.RealCash do wait()
			    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do -- Gets the tool
					if string.find(v.Name,"LegendaryCoin") or string.find(v.Name,"Banknote") or string.find(v.Name,"Ruby") or string.find(v.Name,"Diamond") or string.find(v.Name,"Bandages") and v:IsA("Tool") then -- Checks for the tool
					    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v) -- Equips the tool
				    v:Activate() -- Activate/Use the Selected tool
			      end
			    end
			end         
			game:GetService("RunService").Heartbeat:Wait()

				end)
				end
				else


			_G.RealCash = false 
			end
			end
			,
			Enabled = false
			})




			   Page.Button({ 
			       Text = "Random Server",
			    Callback = function()
			     local servers = {}
			for _, server in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			   if type(server) == "table" and server.maxPlayers > server.playing and server.id ~= game.JobId then
				table.insert(servers, server.id)
			    end
			end
			if #servers > 0 then
			    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)])
			else
			    print("Couldn't find a server.")
			    end
			end
			  })


			local Page = UI.New({
			    Title = "AutoFarms"
			})

			Page.Toggle({
			    Text = "Basic Item Farm",
			    Callback = function(value)
				Enabled = value
				if value == true then do
				spawn(function()


			_G.Toggle = true -- Change to false and execute to turn off

			while _G.Toggle do wait()
			local speaker = game.Players.LocalPlayer

			local Human = speaker.Character:FindFirstChildWhichIsA("Humanoid")
				for _, v in ipairs(workspace:GetChildren()) do

					if speaker.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") and v.Name ~= 'Rainbow Collector' then
						Human:EquipTool(v)
					end
				end
			end         
			game:GetService("RunService").Heartbeat:Wait()

				end)
				end
				else


			_G.Toggle = false 
			end
			end
			,
			Enabled = false
			})
			Page.Toggle({
			    Text = "AMT Rare Items",
			    Callback = function(value)
				Enabled = value
				if value == true then do
				spawn(function()


			_G.AmtRare = true -- Change to false and execute to turn off

			while _G.AmtRare do wait()
			local speaker = game.Players.LocalPlayer

			local Human = speaker.Character:FindFirstChildWhichIsA("Humanoid")
			for _, v in ipairs(workspace.Asda:GetChildren()) do

					if speaker.Character and v:IsA("Tool") and v.Name == 'Potato' or v.Name == 'SixEyes' or v.Name == 'JustMonika' or v.Name == "Gon's Fishing Rod" or v.Name == 'Ender Pearl' or v.Name == '??? Diary' 
					or v.Name == 'Pig Crown' or v.Name == 'MuzanBlood' or v.Name == 'GojoMask'  or v.Name == 'DustTrustSansSoul'  then
						Human:EquipTool(v)
					end
				end
			end         
			game:GetService("RunService").Heartbeat:Wait()

				end)
				end
				else


			_G.AmtRare = false 
			end
			end
			,
			Enabled = false
			})

			Page.Toggle({
			    Text = "AMT Delete Useless",
			    Callback = function(value)
				Enabled = value
				if value == true then do
				spawn(function()


			_G.Deleteitems = true -- Change to false and execute to turn off

			while _G.Deleteitems do wait()

			local speaker = game.Players.LocalPlayer

			local Human = speaker.Character:FindFirstChildWhichIsA("Humanoid")
				for _, v in ipairs(workspace.Asda:GetChildren()) do

					if v.Name == 'Frog' or v.Name == 'Vampire Mask' or v.Name == "DIO's Diary" or v.Name == 'Shiny Diary' or v.Name == 'Requiem Arrow' or v.Name == 'CreppyPasta Diary' or v.Name == 'Holy Corpse' or v.Name == "Jotaro's Diary" or v.Name == 'Kw Diary' or v.Name == 'StoneOceanDiary' or v.Name == 'NightmareDiary' or v.Name == 'Virus Arrow' or v.Name == 'AjaMask' or v.Name == 'Recep Arrow' or v.Name == '?H?A?T?E?' or v.Name == 'Red Ring??' or v.Name == 'Act4 Holy Corpse' or v.Name == 'GlitchDiary' or v.Name == 'Camera' or v.Name == "Sonic's Shoes" or v.Name == 'Ope Ope No Mi' or v.Name == 'Oof' or v.Name == 'Gold!' or v.Name == 'Arrow' or v.Name == 'Rokakaka Fruit' or v.Name == 'Frog' or v.Name == 'Banknote' or v.Name == 'Water' then
						v:Destroy()
					end
				end


			end         
			game:GetService("RunService").Heartbeat:Wait()

				end)
				end
				else


			_G.Deleteitems = false 
			end
			end
			,
			Enabled = false
			})

			local Page = UI.New({
			    Title = "Others"
			})
			Page.Button({
			    Text = "Freeze Others",
			    Callback = function()
			       for i,v in ipairs(game.Players:GetChildren()) do

			    if v ~= game.Players.LocalPlayer  then

			local args = {
			    [1] = v.Character.HumanoidRootPart,
			    [2] = true

			}
			game:GetService("ReplicatedStorage").Anchor:FireServer(unpack(args))
			end
			end 
			    end
			})
			Page.TextField({
			    Text = "Freeze Player Name",
			    Callback = function(value)
				local args = {
			    [1] = game.Players[value].Character.HumanoidRootPart,
			    [2] = true

			}
			game:GetService("ReplicatedStorage").Anchor:FireServer(unpack(args))
			    end
			})
			Page.Button({
			    Text = "Unfreeze Others",
			    Callback = function()
			       for i,v in ipairs(game.Players:GetChildren()) do

			    if v ~= game.Players.LocalPlayer  then

			local args = {
			    [1] = v.Character.HumanoidRootPart,
			    [2] = false

			}
			game:GetService("ReplicatedStorage").Anchor:FireServer(unpack(args))
			end
			end 
			    end
			})


			Page.Button({
			    Text = "Kill all",
			    Callback = function()
			       -- Script generated by SimpleSpy - credits to exx#9394
			for i,v in ipairs(game.Players:GetChildren()) do
			    if v ~= game.Players.LocalPlayer then
			local args = {
			    [1] = v.Character.Humanoid,
			    [2] = CFrame.new(Vector3.new(7.9194459915161, 243.7156829834, -45.460826873779), Vector3.new(-0.01910962164402, 0.99912708997726, -0.037146225571632)),
			    [3] = 69420,
			    [4] = 0,
			    [6] = "rbxassetid://245751634",
			    [7] = 0.075,
			    [8] = nil --[[Color3]],
			    [9] = "rbxassetid://2914074987",
			    [10] = 2,
			    [11] = 0.36
			}

			game:GetService("ReplicatedStorage").Damage22:FireServer(unpack(args))
			end
			end 
			    end
			})

			Page.Button({
			    Text = "Heal all",
			    Callback = function()
			       -- Script generated by SimpleSpy - credits to exx#9394
			for i,v in ipairs(game.Players:GetChildren()) do
			    if v ~= game.Players.LocalPlayer then
			local args = {
			    [1] = Humanoid,
			    [2] = CFrame.new(Vector3.new(7.9194459915161, 243.7156829834, -45.460826873779), Vector3.new(-0.01910962164402, 0.99912708997726, -0.037146225571632)),
			    [3] = 69420,
			    [4] = 0,
			    [6] = "rbxassetid://245751634",
			    [7] = 0.075,
			    [8] = nil --[[Color3]],
			    [9] = "rbxassetid://2914074987",
			    [10] = 2,
			    [11] = 0.36
			}

			game:GetService("ReplicatedStorage").Heal4:FireServer(unpack(args))
			end
			end 
			    end
			})

			local Page = UI.New({
			    Title = "Npc"
			})

			 Page.Button({ 
			       Text = "Auto Kill Bosses",
			    Callback = function()
			_G.stop = false --[[true to stop]]
			local target;
			local enemies = {}
			local lp = game.Players.LocalPlayer
			while true do
			if _G.stop == true then return end
			wait()
			enemies = game.Workspace:GetChildren()
			for i,v in pairs(enemies) do
			if v.Name == 'DIO' or v.Name == 'Ruffy' or v.Name == 'Yorichi' or v.Name == 'Captain Kai' and v:FindFirstChild'Humanoid' then
			target = enemies[i]
			wait(1)
			       repeat
			if _G.stop == true then return end
				      lp.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,8)
			game.ReplicatedStorage.Damage22:FireServer(v.Humanoid, CFrame.new(-11.2775888, -42.0383644, -53.3032341, -0.993044913, 0.101999134, -0.0588005744, 0.0574687645, -0.0159492418, -0.998219848, -0.102755338, -0.994656444, 0.00997649878), 50, 0.25, Vector3.new(-0.320845991, 5.30367856e-08, 9.99485111), "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 255, 255), "rbxassetid://260430079", 1.1, 2)
				   wait()
			       until v.Humanoid.Health < 1
			   end
			end
			end
			   end
			  })
