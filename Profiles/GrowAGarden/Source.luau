--// RunMode: This is for adding updates to the source, make sure to change it to "Public" when you are done.
local RunMode = "Developer"

--// Loading Modules
local Import = getgenv().Import

if not Import then
	error("Import not found")
	return
end

local Util = Import(RunMode, "Profiles/GrowAGarden/Utility.luau")
local Library = Import(RunMode, "Profiles/GrowAGarden/Library.luau")
local Module = Import(RunMode, "Profiles/GrowAGarden/Modules.luau")
local Handler = Import(RunMode, "Profiles/GrowAGarden/Handler.luau")

--// Init Library
local Window = Library:Init()

--// Tabs
local AboutUs = Library:CreateTab("About Us", "info")
local Farming = Library:CreateTab("Farming", "wheat")
local Stock = Library:CreateTab("Stock", "store")
local Player = Library:CreateTab("Player", "user")
local Visual = Library:CreateTab("Visual", "eye")
local Event = Library:CreateTab("Event", "calendar")
local Misc = Library:CreateTab("Misc", "ellipsis")

local Other = Library:AddConfigSection()

--// Config

local Config = {
	["Auto Harvest"] = {
		Enabled = false,
		TargetPlants = "All",
		TargetMutations = "All",
	},

	["Auto Plant"] = {
		Enabled = false,
		TargetPlants = "All",
		Position = nil,
		PlantMethod = "Random",
	},

	["Auto Selling"] = {
		Enabled = false,
		Delay = 10,
	},
}

--// Utility
local Services = Util.Services
local LocalPlayer = Util.LocalPlayer.Player
local Character = Util.LocalPlayer.Character
local Humanoid = Util.LocalPlayer.Humanoid
local HumanoidRootPart = Util.LocalPlayer.HumanoidRootPart
local Backpack = Util.LocalPlayer.Backpack
local PlayerGui = Util.LocalPlayer.PlayerGui

--// About Us
Window:SelectTab(1) -- Select the first tab by default (About Us)

AboutUs:Paragraph({
	Title = "Who Are We?",
	Icon = "user-circle",
	Desc = "PhantomFlux is a flexible and powerful script hub for Roblox, designed to enhance your gaming experience with a variety of features and tools.",
})

AboutUs:Paragraph({
	Title = "Discord Invites",
	Icon = "discord",
	Desc = "Join our communities for updates and support!",
})

AboutUs:Button({
	Title = "PhantomFlux Discord Link (Click to Copy)",
	Icon = "link",
	Callback = function()
		setclipboard("https://discord.gg/TWRyHQgJsf")
		Library:Notify({ Title = "Copied!", Content = "PhantomFlux Discord link copied!", Duration = 3 })
	end,
})
AboutUs:Paragraph({
	Title = "Our Team",
	Icon = "user-circle",
	Desc = "Our team consists of experienced developers and designers who are passionate about creating the best possible experience for our users.",
})

AboutUs:Button({
	Title = "Severity (severitysvc)",
	Icon = "link",
	Callback = function()
		setclipboard("https://github.com/Severity-svc")
		Library:Notify({ Title = "Copied!", Content = "Severity's socials link copied!", Duration = 3 })
	end,
})

AboutUs:Button({
	Title = "Sudais (itzsudais)",
	Icon = "link",
	Callback = function()
		setclipboard("https://www.youtube.com/@ItzSudais")
		Library:Notify({ Title = "Copied!", Content = "Sudais's socials link copied!", Duration = 3 })
	end,
})

AboutUs:Button({
	Title = "Void (0_void)",
	Icon = "link",
	Callback = function()
		setclipboard("https://github.com/0Void2391")
		Library:Notify({
			Title = "Copied!",
			Content = "Gang didnt want fame so all you get is his github 😭",
			Duration = 3,
		})
	end,
})

--// Farming, Auto Harvest
Library:CreateSection(Farming, "Auto Harvest")
local TargetPlants = Config["Auto Harvest"].TargetPlants --// Possible value types: nil, string, table {nil - none, string - one selected, table - multiple selected}
local TargetMutations = Config["Auto Harvest"].TargetMutations --// Possible value types: nil, string, table {nil - none, string - one selected, table - multiple selected}

local PlantsToHarvest = Library:CreateDropdown(Farming, {
	Title = "Plants to Harvest",
	Values = Handler:SortArray(Util.Fruits),
	Value = { "All" },
	Multi = true,
	AllowNone = true,
	Callback = function(option)
		TargetPlants = option
	end,
})

local Mutations = Library:CreateDropdown(Farming, {
	Title = "Required Mutations",
	Values = Handler:SortArray(Util.Mutations),
	Value = { "All" },
	Multi = true,
	AllowNone = true,
	Callback = function(option)
		TargetMutations = option
	end,
})

Module:Init(function()
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay = 2

	Farming:Toggle({
		Title = "AutoHarvest",
		Desc = "Automatically Harvest Plants Based On Your Filters",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay then
						return
					end
					LastTick = Current

					local Farm, Important = Module:GetFarm()

					if not Farm or not Important then
						warn("[AutoHarvest] Farm not found")
						return
					end

					local Plants = Module:GetPlants(Farm)

					for _, v in pairs(Plants) do
						if TargetPlants == "All" then
							if TargetMutations == "All" then
								Module:HarvestPlant(v)
							else
								if Module:HasMutation(v, TargetMutations) then
									Module:HarvestPlant(v)
								end
							end
						elseif type(TargetPlants) == "string" and not TargetPlants == "All" then
							if v.Name == TargetPlants then
								if TargetMutations == "All" then
									Module:HarvestPlant(v)
								else
									if Module:HasMutation(v, TargetMutations) then
										Module:HarvestPlant(v)
									end
								end
							end
						elseif type(TargetPlants) == "table" and #TargetPlants > 0 then
							if table.find(TargetPlants, v.Name) then
								if TargetMutations == "All" then
									Module:HarvestPlant(v)
								else
									if Module:HasMutation(v, TargetMutations) then
										Module:HarvestPlant(v)
									end
								end
							end
						end
					end
				end)
			else
				ConnectionInit:Disconnect(Connection)
				Connection = nil
			end
		end,
	})
end)

--// Auto Plant
Library:CreateSection(Farming, "Auto Plant")
local PlantMethod = Config["Auto Plant"].PlantMethod --// Possible value types: "Random", "UnderPlayer", "UnderMouse"
local TargetPlants2 = Config["Auto Plant"].TargetPlants --// Possible value types: nil, string, table {nil - none, string - one selected, table - multiple selected}

local PlantsToPlant = Library:CreateDropdown(Farming, {
	Title = "Plants to Plant",
	Values = Handler:SortArray(Util.Fruits),
	Value = { "All" },
	Multi = true,
	AllowNone = true,
	Callback = function(option)
		TargetPlants2 = option
	end,
})

local PlantMethods = Library:CreateDropdown(Farming, {
	Title = "Plant Method",
	Values = { "Random", "UnderPlayer", "UnderMouse" },
	Value = "Random",
	Multi = false,
	AllowNone = true,
	Callback = function(option)
		PlantMethod = option
	end,
})

Module:Init(function()
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil

	Farming:Toggle({
		Title = "Auto Plant",
		Desc = "Automatically Plant Stuff Based On Your Farm",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Seeds = Module:GetSeeds()

					if TargetPlants2 == "All" then
						for _, v in pairs(Seeds) do
							if v:IsA("Tool") then
								local FruitName = v.Name:match("^(.-) Seed")

								if FruitName then
									Humanoid:EquipTool(v)
									Module:Plant(Module:GetPosition(PlantMethod), FruitName)
								end
							end
						end
					elseif type(TargetPlants2) == "string" and not TargetPlants2 == "All" then
						for _, v in pairs(Seeds) do
							if v:IsA("Tool") then
								local FruitName = v.Name:match("^(.-) Seed")

								if FruitName and FruitName:find(TargetPlants2) then
									Humanoid:EquipTool(v)
									Module:Plant(Module:GetPosition(PlantMethod), FruitName)
								end
							end
						end
					elseif type(TargetPlants2) == "table" and #TargetPlants2 > 0 then
						for _, v in pairs(Seeds) do
							if v:IsA("Tool") then
								local FruitName = v.Name:match("^(.-) Seed")

								if FruitName and table.find(TargetPlants2, FruitName) then
									Humanoid:EquipTool(v)
									Module:Plant(Module:GetPosition(PlantMethod), FruitName)
								end
							end
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

--// Auto Selling
Library:CreateSection(Farming, "Auto Selling")
local Delay = Config["Auto Selling"].Delay --// Delay in seconds

local DelaySlider = Library:CreateSlider(Farming, {
	Title = "Sell Delay (Seconds)",
	Desc = "Change Delay between each sell",
	Step = 0.1,
	Value = {
		Min = 0.1,
		Max = 100,
		Default = 15,
	},
	Callback = function(Value)
		Delay = tonumber(Value)
	end,
})

Module:Init(function()
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	Farming:Toggle({
		Title = "Auto Sell",
		Desc = "Automatically Sell Your Plants",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)
				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay then
						return
					end
					LastTick = Current

					local Character = LocalPlayer.Character
					local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

					if not HumanoidRootPart then
						return
					end

					local LastCFrame = HumanoidRootPart.CFrame
					HumanoidRootPart.CFrame = CFrame.new(88.1068573, 2.99999976, 0.248745888)

					task.wait(0.25)
					game:GetService("ReplicatedStorage")
						:WaitForChild("GameEvents")
						:WaitForChild("Sell_Inventory")
						:FireServer()

					task.wait(1.25)

					HumanoidRootPart.CFrame = LastCFrame
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

Library:CreateSection(Farming, "Proximity Prompts")

Module:Init(function()
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Farm, Imp = Module:GetFarm()

	Farming:Toggle({
		Title = "Enable Multiple Proxys",
		Desc = "Lets you harvest more plants at once",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)
				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay then
						return
					end
					LastTick = Current

					local Plants = Module:GetPlants(Imp)
					for _, v in pairs(Plants) do
						local Proxy = Module:GetProxy(v)

						if Proxy then
							Proxy.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
						end
					end
				end)
			else
				if Connection then
					local Plants = Module:GetPlants(Imp)
					for _, v in pairs(Plants) do
						local Proxy = Module:GetProxy(v)

						if Proxy then
							Proxy.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
						end
					end

					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

--// Stock
Library:CreateSection(Stock, "Enable Uis")

Module:Init(function()
	Stock:Toggle({
		Title = "Enable Seeds Shop UI",
		Desc = "Shows Seed Shop ui",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Util.LocalPlayer.PlayerGui.Seed_Shop.Enabled = State
		end,
	})
end)

Module:Init(function()
	Stock:Toggle({
		Title = "Enable Gear Shop UI",
		Desc = "Shows Gear Shop UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Util.LocalPlayer.PlayerGui.Gear_Shop.Enabled = State
		end,
	})
end)

Module:Init(function()
	Stock:Toggle({
		Title = "Enable Event Shop UI",
		Desc = "Shows Event UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Util.LocalPlayer.PlayerGui.EventShop_UI.Enabled = State
		end,
	})
end)

Module:Init(function()
	Stock:Toggle({
		Title = "Enable Cosmetic Shop UI",
		Desc = "Shows Cosmetic UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Util.LocalPlayer.PlayerGui.CosmeticShop_UI.Enabled = State
		end,
	})
end)

--// AutoBuy Stocks
Library:CreateSection(Stock, "Auto Buy Seeds")
local TargetPlants3 = "Carrot"

local PlantsToPlant = Library:CreateDropdown(Stock, {
	Title = "Seeds to buy",
	Values = Handler:SortArray(Util.SeedStock),
	Value = { "Carrot" },
	Multi = true,
	AllowNone = true,
	Callback = function(option)
		TargetPlants3 = option
	end,
})

Module:Init(function()
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 5

	Stock:Toggle({
		Title = "Auto Buy Seeds",
		Desc = "Automatically Buys Seeds In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					if type(TargetPlants3) == "string" and TargetPlants3 == "All" then
						for _, v in pairs(Util.SeedStock) do
							Module:BuySeed(v)
						end
					elseif type(TargetPlants3) == "table" and #TargetPlants3 > 0 then
						for _, v in pairs(TargetPlants3) do
							Module:BuySeed(v)
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

Module:Init(function()
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 5

	Stock:Toggle({
		Title = "Auto Buy All Seeds",
		Desc = "Automatically Buys Seeds In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					for _, v in pairs(Util.SeedStock) do
						Module:BuySeed(v)
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

Library:CreateSection(Stock, "Auto Buy Gear")
local TargetGear = "Watering Can"

local PlantsToPlant = Library:CreateDropdown(Stock, {
	Title = "Gears to buy",
	Values = Handler:SortArray(Util.GearStock),
	Value = { "Watering Can" },
	Multi = true,
	AllowNone = true,
	Callback = function(option)
		TargetGear = option
	end,
})

Module:Init(function()
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 5

	Stock:Toggle({
		Title = "Auto Buy Gear",
		Desc = "Automatically Buys Seeds In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					if type(TargetGear) == "string" and TargetGear == "All" then
						for _, v in pairs(Util.SeedStock) do
							Module:BuyGear(v)
						end
					elseif type(TargetGear) == "table" and #TargetGear > 0 then
						for _, v in pairs(TargetGear) do
							Module:BuyGear(v)
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

Module:Init(function()
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 5

	Stock:Toggle({
		Title = "Auto Buy All Gears",
		Desc = "Automatically Buys Seeds In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					for _, v in pairs(Util.GearStock) do
						Module:BuyGear(v)
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

--// Event

Module:Init(function()
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 5

	Event:Toggle({
		Title = "Auto Summer Harvest",
		Desc = "Automatically Put Fruits In The Summer Harvest",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					local args = {
						"SubmitAllPlants",
					}
					game:GetService("ReplicatedStorage")
						:WaitForChild("GameEvents")
						:WaitForChild("SummerHarvestRemoteEvent")
						:FireServer(unpack(args))
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

--// Misc
Library:CreateSection(Misc, "Auto Move Plants (Trowel Required)")
local TargetPlants4 = "All"
local PlantMethod2 = "UnderPlayer"

local PlantsToPlant = Library:CreateDropdown(Misc, {
	Title = "Plants To Move",
	Values = Handler:SortArray(Util.Fruits),
	Value = { "All" },
	Multi = true,
	AllowNone = true,
	Callback = function(option)
		TargetPlants4 = option
	end,
})

local PlantsToPlant = Library:CreateDropdown(Misc, {
	Title = "Move Method",
	Values = { "UnderPlayer", "UnderMouse", "Random" },
	Value = "UnderPlayer",
	Multi = false,
	AllowNone = true,
	Callback = function(option)
		PlantMethod2 = option
	end,
})

function Module:Init()
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 0.1
	local Farm, Important = Module:GetFarm()

	Misc:Toggle({
		Title = "Auto Move Plants",
		Desc = "Automatically Moves Plants In The Selected Place",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					local Plants = Module:GetPhysicalPlants()
					local Trowel = Module:GetTrowel(true)

					if Trowel then
						if TargetPlants4 == "All" then
							for _, v in pairs(Plants) do
								Module:MovePlant(Trowel, v, PlantMethod2)
							end
						elseif type(TargetPlants4) == "string" and TargetPlants4 ~= "All" then
							for _, v in pairs(Plants) do
								if v.Name:find(TargetPlants4) then
									Module:MovePlant(Trowel, v, PlantMethod2)
								end
							end
						elseif type(TargetPlants4) == "table" and #TargetPlants4 > 0 then
							for _, v in pairs(Plants) do
								if table.find(TargetPlants4, v.Name) then
									Module:MovePlant(Trowel, v, PlantMethod2)
								end
							end
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end

				local Plants = Module:GetPhysicalPlants()
				for _, v in pairs(Plants) do
					if v:GetAttribute("Moved") ~= nil then
						v:SetAttribute("Moved", nil)
					end
				end
			end
		end,
	})
end

--// Teleports
Library:CreateSection(Misc, "Teleport to places")

local TpZone = "Middle"
local TeleportZones = Library:CreateDropdown(Misc, {
	Title = "Teleport Zones",
	Values = { "Gear Shop", "Pet Shop", "Middle", "Cosmetics", "Crafting Zone" },
	Value = "Middle",
	Multi = false,
	AllowNone = true,
	Callback = function(option)
		TpZone = option
	end,
})

local TpButton = Library:CreateButton(Misc, {
	Title = "Tp To Zone",
	Desc = "Teleports you to the selected zone",
	Locked = false,
	Callback = function()
		for i, v in pairs(Util.Positions) do
			if i == TpZone then
				HumanoidRootPart.CFrame = v
			end
		end
	end,
})

--// Pets
Library:CreateSection(Misc, "Auto Hatching")

--// Server Hopping
Library:CreateSection(Misc, "Server Hop")

if getgenv().queue_on_teleport then
	queue_on_teleport(Import("Web", "Loader.lua"))
end

Handler:ServerHop("Oldest")
