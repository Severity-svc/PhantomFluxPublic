--// RunMode: This is for adding updates to the source, make sure to change it to "Public" when you are done.
local RunMode = "Public"

--// Loading Modules
local OldHandler = loadstring(
	game:HttpGet(
		"https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/refs/heads/main/Profiles/GrowAGarden/Handler.luau"
	)
)()

local NewHandler = OldHandler:GetDirectory(
	RunMode,
	"Handler.luau",
	"https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/refs/heads/main/Profiles/GrowAGarden/Handler.luau"
) --// If the runmode is "Public" then the newhandler will be the same as the oldhandler.

if not NewHandler then
	error("[Source] Failed to load Handler")
	NewHandler = OldHandler
end

local Util
local Library
local Module

--// Loading Modules
if RunMode == "Developer Mode" then
	Util = NewHandler:GetDirectory(RunMode, "Utility.luau")
	Library = NewHandler:GetDirectory(RunMode, "Library.luau")
	Module = NewHandler:GetDirectory(RunMode, "Modules.luau")
elseif RunMode == "Public" then
	Util = loadstring(
		game:HttpGet(
			"https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/refs/heads/main/Profiles/GrowAGarden/Utility.luau"
		)
	)()

	Library = loadstring(
		game:HttpGet(
			"https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/refs/heads/main/Profiles/GrowAGarden/Library.luau"
		)
	)()

	Module = loadstring(
		game:HttpGet(
			"https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/refs/heads/main/Profiles/GrowAGarden/Module.luau"
		)
	)()
end

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
		Delay = 10, --// Delay in seconds
	},

	["Visuals"] = {
		Enabled = false,
		ShowPlants = true,
		ShowMutations = true,
		ShowSeeds = true,
	},

	["Player"] = {
		Enabled = false,
		ShowBackpackItems = true,
		ShowCharacterItems = true,
	},

	["Misc"] = {
		Enabled = false,
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
		Library:Notify({
			Title = "Copied!",
			Content = "Gang didnt want fame so all you get is his discord :sob:",
			Duration = 3,
		})
	end,
})

--// Farming, Auto Harvest
local AutoHarvest = Library:CreateSection(Farming, "Auto Harvest")
local TargetPlants = Config["Auto Harvest"].TargetPlants --// Possible value types: nil, string, table {nil - none, string - one selected, table - multiple selected}
local TargetMutations = Config["Auto Harvest"].TargetMutations --// Possible value types: nil, string, table {nil - none, string - one selected, table - multiple selected}

local PlantsToHarvest = Library:CreateDropdown(Farming, {
	Title = "Plants to Harvest",
	Values = NewHandler:SortArray(Util.Fruits),
	Value = { "All" },
	Multi = true,
	AllowNone = true,
	Callback = function(option)
		TargetPlants = option
	end,
})

local Mutations = Library:CreateDropdown(Farming, {
	Title = "Required Mutations",
	Values = NewHandler:SortArray(Util.Mutations),
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

	Farming:Toggle({
		Title = "AutoHarvest",
		Desc = "Automatically Harvest Plants Based On Your Filters",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				Connection = ConnectionInit:Connect("Heartbeat", function()
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
local AutoPlant = Library:CreateSection(Farming, "Auto Plant")
local PlantMethod = Config["Auto Plant"].PlantMethod --// Possible value types: "Random", "UnderPlayer", "UnderMouse"
local TargetPlants2 = Config["Auto Plant"].TargetPlants --// Possible value types: nil, string, table {nil - none, string - one selected, table - multiple selected}

local PlantsToPlant = Library:CreateDropdown(Farming, {
	Title = "Plants to Plant",
	Values = NewHandler:SortArray(Util.Fruits),
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
									print(tostring(Module:GetPosition(PlantMethod)))
									Module:Plant(Module:GetPosition(PlantMethod), FruitName)
								end
							end
						end
					elseif type(TargetPlants2) == "string" and not TargetPlants2 == "All" then
						for _, v in pairs(Seeds) do
							if v:IsA("Tool") then
								local FruitName = v.Name:match("^(.-) Seed")

								if FruitName and FruitName == TargetPlants2 then
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
local AutoSelling = Library:CreateSection(Farming, "Auto Selling")
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
		Delay = Value
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

local UISection = Library:CreateSection(Farming, "Proximity Prompts")

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
local UISection = Library:CreateSection(Stock, "Enable Uis")

Module:Init(function()
	Stock:Toggle({
		Title = "Enable Seeds UI",
		Desc = "Show Seed Stock ui",
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
		Title = "Enable Gear UI",
		Desc = "Show Seed Stock ui",
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
		Title = "Enable Event UI",
		Desc = "Show Seed Stock ui",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Util.LocalPlayer.PlayerGui.EventShop_UI.Enabled = State
		end,
	})
end)

--// AutoBuy Stocks
local AutoBuySec = Library:CreateSection(Stock, "Auto Buy Seeds")
local TargetPlants3 = "Carrot"

local PlantsToPlant = Library:CreateDropdown(Stock, {
	Title = "Seeds to buy",
	Values = NewHandler:SortArray(Util.SeedStock),
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

local AutoBuySec = Library:CreateSection(Stock, "Auto Buy Gear")
local TargetGear = "Watering Can"

local PlantsToPlant = Library:CreateDropdown(Stock, {
	Title = "Seeds to buy",
	Values = NewHandler:SortArray(Util.GearStock),
	Value = { "Carrot" },
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
