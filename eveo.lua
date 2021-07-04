-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local TextButton_4 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.0302713513, 0, 0.0588191338, 0)
Frame.Size = UDim2.new(0, 379, 0, 351)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(-0.00186221639, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 379, 0, 26)
TextLabel.Font = Enum.Font.RobotoMono
TextLabel.Text = "EVEO - 7th Edition"
TextLabel.TextColor3 = Color3.fromRGB(28, 255, 248)
TextLabel.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
TextButton.Position = UDim2.new(0.0242085457, 0, 0.172224939, 0)
TextButton.Size = UDim2.new(0, 10, 0, 10)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.Position = UDim2.new(0.0797747821, 0, 0.152122125, 0)
TextLabel_2.Size = UDim2.new(0, 67, 0, 23)
TextLabel_2.Font = Enum.Font.RobotoMono
TextLabel_2.Text = "Box ESP"
TextLabel_2.TextColor3 = Color3.fromRGB(131, 131, 131)
TextLabel_2.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.Position = UDim2.new(0.930474639, 0, -1.86264515e-09, 0)
TextButton_2.Size = UDim2.new(0, 26, 0, 26)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "X"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 14.000

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
TextButton_3.Position = UDim2.new(0.0242085755, 0, 0.112395883, 0)
TextButton_3.Size = UDim2.new(0, 10, 0, 10)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = ""
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.Position = UDim2.new(0.0797747821, 0, 0.0951420739, 0)
TextLabel_3.Size = UDim2.new(0, 67, 0, 23)
TextLabel_3.Font = Enum.Font.RobotoMono
TextLabel_3.Text = "Memory v1"
TextLabel_3.TextColor3 = Color3.fromRGB(131, 131, 131)
TextLabel_3.TextSize = 14.000

TextButton_4.Parent = ScreenGui
TextButton_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.Position = UDim2.new(0, 0, 0.519018412, 0)
TextButton_4.Size = UDim2.new(0, 146, 0, 32)
TextButton_4.Font = Enum.Font.RobotoMono
TextButton_4.Text = "OPEN EVEO GUI"
TextButton_4.TextColor3 = Color3.fromRGB(28, 255, 248)
TextButton_4.TextSize = 14.000

-- Scripts:

local function DSSB_fake_script() -- TextLabel.Script 
	local script = Instance.new('Script', TextLabel)

	while true do
		script.parent.TextColor3 = Color3.new(math.random(), math.random())
		wait(0.3)
		end
	
	
end
coroutine.wrap(DSSB_fake_script)()
local function JHVXOYL_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.BackgroundColor3 = Color3.new(0.494118, 1, 0.917647)
		script.Parent.BorderColor3 = Color3.new(1, 1, 1)
		local lplr = game.Players.LocalPlayer
		local camera = game:GetService("Workspace").CurrentCamera
		local CurrentCamera = workspace.CurrentCamera
		local worldToViewportPoint = CurrentCamera.worldToViewportPoint
	
		local HeadOff = Vector3.new(0, 0.5, 0)
		local LegOff = Vector3.new(0,3,0)
	
		for i,v in pairs(game.Players:GetChildren()) do
			local BoxOutline = Drawing.new("Square")
			BoxOutline.Visible = false
			BoxOutline.Color = Color3.new(0, 0, 0)
			BoxOutline.Thickness = 3
			BoxOutline.Transparency = 1
			BoxOutline.Filled = false
	
			local Box = Drawing.new("Square")
			Box.Visible = false
			Box.Color = Color3.new(1, 0, 0.0156863)
			Box.Thickness = 1
			Box.Transparency = 1
			Box.Filled = false
	
			local HealthBarOutline = Drawing.new("Square")
			HealthBarOutline.Thickness = 3
			HealthBarOutline.Filled = false
			HealthBarOutline.Color = Color3.new(0, 1, 0)
			HealthBarOutline.Transparency = 1
			HealthBarOutline.Visible = false
	
			local HealthBar = Drawing.new("Square")
			HealthBar.Thickness = 1
			HealthBar.Filled = false
			HealthBar.Transparency = 1
			HealthBar.Visible = false
	
			function boxesp()
				game:GetService("RunService").RenderStepped:Connect(function()
					if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
						local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
	
						local RootPart = v.Character.HumanoidRootPart
						local Head = v.Character.Head
						local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
						local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
						local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)
	
						if onScreen then
							BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
							BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
							BoxOutline.Visible = true
	
							Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
							Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
							Box.Visible = true
	
							HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
							HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
							HealthBarOutline.Visible = true
	
							HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / math.clamp(game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value, 0, game:GetService("Players")[v.Character.Name].NRPBS:WaitForChild("MaxHealth").Value)))
							HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / HealthBar.Size.Y))
							HealthBar.Color = Color3.fromRGB(255 - 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 0)
							HealthBar.Visible = true
	
							if v.TeamColor == lplr.TeamColor then
								--- Our Team
								BoxOutline.Visible = false
								Box.Visible = false
								HealthBarOutline.Visible = false
								HealthBar.Visible = false
							else
								---Enemy Team
								BoxOutline.Visible = true
								Box.Visible = true
								HealthBarOutline.Visible = true
								HealthBar.Visible = true
							end
	
						else
							BoxOutline.Visible = false
							Box.Visible = false
							HealthBarOutline.Visible = false
							HealthBar.Visible = false
						end
					else
						BoxOutline.Visible = false
						Box.Visible = false
						HealthBarOutline.Visible = false
						HealthBar.Visible = false
					end
				end)
			end
			coroutine.wrap(boxesp)()
		end
	
		game.Players.PlayerAdded:Connect(function(v)
			local BoxOutline = Drawing.new("Square")
			BoxOutline.Visible = false
			BoxOutline.Color = Color3.new(0, 0, 0)
			BoxOutline.Thickness = 3
			BoxOutline.Transparency = 1
			BoxOutline.Filled = false
	
			local Box = Drawing.new("Square")
			Box.Visible = false
			Box.Color = Color3.new(1, 0, 0.0156863)
			Box.Thickness = 1
			Box.Transparency = 1
			Box.Filled = false
	
			local HealthBarOutline = Drawing.new("Square")
			HealthBarOutline.Thickness = 3
			HealthBarOutline.Filled = false
			HealthBarOutline.Color = Color3.new(0, 0, 0)
			HealthBarOutline.Transparency = 1
			HealthBarOutline.Visible = false
	
			local HealthBar = Drawing.new("Square")
			HealthBar.Thickness = 1
			HealthBar.Filled = false
			HealthBar.Transparency = 1
			HealthBar.Visible = false
	
			function boxesp()
				game:GetService("RunService").RenderStepped:Connect(function()
					if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
						local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
	
						local RootPart = v.Character.HumanoidRootPart
						local Head = v.Character.Head
						local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
						local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
						local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)
	
						if onScreen then
							BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
							BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
							BoxOutline.Visible = true
	
							Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
							Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
							Box.Visible = true
	
							HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
							HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
							HealthBarOutline.Visible = true
	
							HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / math.clamp(game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value, 0, game:GetService("Players")[v.Character.Name].NRPBS:WaitForChild("MaxHealth").Value)))
							HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1/HealthBar.Size.Y))
							HealthBar.Color = Color3.fromRGB(255 - 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 0)                    
							HealthBar.Visible = true
	
							if v.TeamColor == lplr.TeamColor then
								--- Our Team
								BoxOutline.Visible = false
								Box.Visible = false
								HealthBarOutline.Visible = false
								HealthBar.Visible = false
							else
								---Enemy Team
								BoxOutline.Visible = true
								Box.Visible = true
								HealthBarOutline.Visible = true
								HealthBar.Visible = true
							end
	
						else
							BoxOutline.Visible = false
							Box.Visible = false
							HealthBarOutline.Visible = false
							HealthBar.Visible = false
						end
					else
						BoxOutline.Visible = false
						Box.Visible = false
						HealthBarOutline.Visible = false
						HealthBar.Visible = false
					end
				end)
			end
			coroutine.wrap(boxesp)()
		end)
	end)
	
end
coroutine.wrap(JHVXOYL_fake_script)()
local function WOHWJHF_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(WOHWJHF_fake_script)()
local function MSPWAP_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.BackgroundColor3 = Color3.new(0.494118, 1, 0.917647)
		script.Parent.BorderColor3 = Color3.new(1, 1, 1)
		local Camera = workspace.CurrentCamera
		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")
		local UserInputService = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local LocalPlayer = Players.LocalPlayer
		local Holding = false
		local Locked = false
		local Victim
	
		_G.AimbotEnabled = true
		_G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
		_G.AimPart = "Head" -- Where the aimbot script would lock at.
		_G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.
	
		_G.CircleSides = 64 -- How many sides the FOV circle would have.
		_G.CircleColor = Color3.fromRGB(52, 255, 249) -- (RGB) Color that the FOV circle would appear as.
		_G.CircleTransparency = 0.7 -- Transparency of the circle.
		_G.CircleRadius = 80 -- The radius of the circle / FOV.
		_G.CircleFilled = false -- Determines whether or not the circle is filled.
		_G.CircleVisible = true -- Determines whether or not the circle is visible.
		_G.CircleThickness = 0 -- The thickness of the circle.
	
		local FOVCircle = Drawing.new("Circle")
		FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
		FOVCircle.Radius = _G.CircleRadius
		FOVCircle.Filled = _G.CircleFilled
		FOVCircle.Color = _G.CircleColor
		FOVCircle.Visible = _G.CircleVisible
		FOVCircle.Radius = _G.CircleRadius
		FOVCircle.Transparency = _G.CircleTransparency
		FOVCircle.NumSides = _G.CircleSides
		FOVCircle.Thickness = _G.CircleThickness
	
		local function GetClosestPlayer()
			local MaximumDistance = _G.CircleRadius
			local Target
	
			for _, v in pairs(game.Players:GetPlayers()) do
				if v.Name ~= LocalPlayer.Name then
					if _G.TeamCheck == true then 
						if v.Team ~= LocalPlayer.Team then
							if workspace:FindFirstChild(v.Name) ~= nil then
								if workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
									if workspace[v.Name]:FindFirstChild("Humanoid") ~= nil and workspace[v.Name]:FindFirstChild("Humanoid").Health ~= 0 then
										local ScreenPoint = Camera:WorldToScreenPoint(workspace[v.Name]:WaitForChild("HumanoidRootPart", math.huge).Position)
										local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
	
										if VectorDistance < MaximumDistance then
											Target = v
										end
									end
								end
							end
						end
					else
						if workspace:FindFirstChild(v.Name) ~= nil then
							if workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
								if workspace[v.Name]:FindFirstChild("Humanoid") ~= nil and workspace[v.Name]:FindFirstChild("Humanoid").Health ~= 0 then
									local ScreenPoint = Camera:WorldToScreenPoint(workspace[v.Name]:WaitForChild("HumanoidRootPart", math.huge).Position)
									local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
	
									if VectorDistance < MaximumDistance then
										Target = v
									end
								end
							end
						end
					end
				end
			end
	
			return Target
		end
	
		UserInputService.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton2 then
				Holding = true
			end
		end)
	
		UserInputService.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton2 then
				Holding = false
				Locked = false
			end
		end)
	
		RunService.RenderStepped:Connect(function()
			FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
			FOVCircle.Radius = _G.CircleRadius
			FOVCircle.Filled = _G.CircleFilled
			FOVCircle.Color = _G.CircleColor
			FOVCircle.Visible = _G.CircleVisible
			FOVCircle.Radius = _G.CircleRadius
			FOVCircle.Transparency = _G.CircleTransparency
			FOVCircle.NumSides = _G.CircleSides
			FOVCircle.Thickness = _G.CircleThickness
			if Holding == true and _G.AimbotEnabled == true then
				TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
				Locked = true
			end
		end)
	end)
end
coroutine.wrap(MSPWAP_fake_script)()
local function IMZJKS_fake_script() -- TextButton_4.Script 
	local script = Instance.new('Script', TextButton_4)

	local Frame = script.Parent.Parent.Frame
	
	script.Parent.MouseButton1Click:Connect(function()
		Frame.Visible = true
	end)
end
coroutine.wrap(IMZJKS_fake_script)()
