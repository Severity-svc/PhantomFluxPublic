--// Init
local Import = getgenv().Import
local RunMode = "Developer"

if not Import then
	getgenv().Import = function(RunMode, FilePath)
		if RunMode == "Developer" then
			local DirPath = "PhantomFlux-V2/"
			local FilePath = DirPath .. FilePath

			if isfolder(DirPath) then
				if isfile(FilePath) then
					local Source = readfile(FilePath)

					if Source then
						return loadstring(Source)()
					else
						error("[Import]: Failed to read file: " .. FilePath)
					end
				else
					error("[Import]: File not found: " .. FilePath)
				end
			else
				error("[Import]: Folder not found: " .. DirPath)
			end
		elseif RunMode == "Web" then
			local BaseUrl = "https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/main/"
			local FilePath = BaseUrl .. FilePath

			local Success, Response = pcall(function()
				return game:HttpGet(FilePath)
			end)

			if Success and Response then
				if Response:find("<html>") then
					error("[Import]: Invalid response content: " .. FilePath)
				end

				return loadstring(Response)()
			else
				error("[Import]: Failed to fetch file from URL: " .. FilePath)
			end
		else
			error("[Import]: Invalid RunMode")
		end
	end

	Import = getgenv().Import
end

--// Load Modules
local Library = Import(RunMode, "Library/GuiLibrary/Library.lua")
local Utility = Import(RunMode, "Profiles/GrowAGarden/Utility.lua")
local Module = Import(RunMode, "Profiles/GrowAGarden/Modules.lua")

local Collection = {
	["Auto Harvest"] = {
		TargetPlants = { "All" },
		TargetMutations = { "All" },
		PerformanceMode = false,
	},

	["Auto Plant"] = {
		TargetPlants = { "All" },
		PlantMethod = "Random",
		Delay = 0.1,
	},

	["Auto Sell"] = {
		Delay = 15,
		SellType = "OnDelay",
	},

	["Auto Buy Seeds"] = {
		TargetSeeds = { "Carrot" },
		Delay = 2.5,
	},

	["Auto Buy Gears"] = {
		TargetGears = { "Watering Can" },
		Delay = 2.5,
	},

	["Auto Input Pets"] = {
		TargetPet = "",
	},

	["Auto Quest"] = {},

	["Auto Move"] = {
		TargetPlants = { "All" },
		MoveMethod = "UnderPlayer",
		Delay = 0.1,
	},

	["Teleport"] = {
		Place = "Middle",
	},

	["Crafters"] = {
		["Seed Crafting"] = {
			Seed = "Peace Lily",
		},

		["Gear Crafting"] = {
			Gear = " Lightning Rod",
		},
		["Event Crafting"] = {
			Item = "Ancient Seed Pack",
		},
	},
}

local BackPack = Utility.BackPack
local HumanoidRootPart = Utility.HumanoidRootPart
local Humanoid = Utility.Humanoid
local LocalPlayer = Utility.LocalPlayer
local Character = Utility.Character
local Mouse = Utility.Mouse

--// Setup
local Window = Library:Setup()

local AboutUs = Library:CreateTab("About Us", "info")
local Farming = Library:CreateTab("Farming", "wheat")
local Stock = Library:CreateTab("Stock", "store")
--local Visual = Library:CreateTab("Visual", "eye")
local Event = Library:CreateTab("Event", "calendar")
local Exclusive = Library:CreateTab("Exclusive", "sparkles")
local Misc = Library:CreateTab("Misc", "ellipsis")

Library:SetupAboutUs(AboutUs)
Window:SelectTab(1)

--// Farming
Module:Init(function() --// Auto Harvest
	Library:CreateSection(Farming, "Auto Harvest")
	local TargetPlants = Collection["Auto Harvest"].TargetPlants
	local TargetMutations = "All"

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay = 2

	local Performance = true

	Library:CreateDropdown(Farming, {
		Title = "Plants to Harvest",
		Values = Module:SortArray(Utility.Fruits),
		Value = { "All" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetPlants = option
		end,
	})

	Library:CreateDropdown(Farming, {
		Title = "Required Mutations",
		Values = Module:SortArray(Utility.Mutations),
		Value = { "All" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetMutations = option
		end,
	})

	Farming:Toggle({
		Title = "Auto Harvest Fruits",
		Desc = "Automatically Harvest Plants Based On Your Filters",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				Connection = ConnectionInit:Connect("Heartbeat", function()
					if not State then
						return
					end
					if Module:IsMaxInventory() then
						return
					end
					local Current = tick()
					if Current - LastTick < Delay then
						return
					end
					LastTick = Current

					local Farm, Important = Module:GetFarm()

					if not Farm or not Important then
						warn("[AutoHarvest]: Farm not found")
						return
					end

					local Plants = Module:GetPlants(Farm)

					for _, v in pairs(Plants) do
						if type(TargetPlants) == "table" then
							if table.find(TargetPlants, "All") then
								Module:HarvestPlant(v)
							else
								if table.find(TargetPlants, v.Name) then
									if table.find(TargetMutations, "All") then
										Module:HarvestPlant(v)
									else
										for _, v2 in pairs(TargetMutations) do
											if Module:HasMutation(v, v2) then
												Module:HarvestPlant(v)
											end
										end
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

Module:Init(function() --// Auto Plant
	Library:CreateSection(Farming, "Auto Plant")

	local PlantMethod = Collection["Auto Plant"].PlantMethod
	local TargetPlants = Collection["Auto Plant"].TargetPlants
	local Delay = Collection["Auto Plant"].Delay

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil

	local LastTick = 0

	local PlantsToPlant = Library:CreateDropdown(Farming, {
		Title = "Plants to Plant",
		Values = Module:SortArray(Utility.Fruits),
		Value = { "All" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetPlants = option
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

	Farming:Toggle({
		Title = "Auto Plant",
		Desc = "Automatically Plant Stuff Based On Your Farm",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				Connection = ConnectionInit:Connect("Heartbeat", function()
					if not State then
						return
					end

					local Current = tick()
					if Current - LastTick < Delay then
						return
					end

					LastTick = Current

					local Seeds = Module:GetSeeds()

					if type(TargetPlants) == "table" then
						if table.find(TargetPlants, "All") then
							for _, v in pairs(Seeds) do
								if v:IsA("Tool") then
									local FruitName = v.Name:match("^(.-) Seed")

									if FruitName then
										Utility.Humanoid:EquipTool(v)
										Module:Plant(Module:GetPosition(PlantMethod), FruitName)
									end
								end
							end
						else
							for _, v in pairs(Seeds) do
								if v:IsA("Tool") then
									local FruitName = v.Name:match("^(.-) Seed")

									if FruitName and table.find(TargetPlants, FruitName) then
										Utility.Humanoid:EquipTool(v)
										Module:Plant(Module:GetPosition(PlantMethod), FruitName)
									end
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

Module:Init(function() --// Auto Sell
	Library:CreateSection(Farming, "Auto Selling")
	local Delay = Collection["Auto Sell"].Delay --// Delay in seconds

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	Library:CreateSlider(Farming, {
		Title = "Sell Delay (Seconds)",
		Desc = "Change Delay Between Each Sell",
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

					if not HumanoidRootPart then
						return
					end

					local LastCFrame = HumanoidRootPart.CFrame
					HumanoidRootPart.CFrame = CFrame.new(88.1068573, 2.99999976, 0.248745888)

					task.wait(0.25)
					Utility.GameEvents:WaitForChild("Sell_Inventory"):FireServer()

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

Module:Init(function() --// Enabled Proxys
	Library:CreateSection(Farming, "Proximity Prompts")

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	local Delay = Collection["Auto Sell"].Delay
	local Farm, Imp = Module:GetFarm()

	Farming:Toggle({
		Title = "Enable Multiple Proxy's",
		Desc = "Lets You Harvest More Plants At Once",
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
Module:Init(function() --// Show UI's
	Library:CreateSection(Stock, "Enable Ui's")

	Stock:Toggle({
		Title = "Enable Seeds Shop UI",
		Desc = "Shows The Seed Shop UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Utility.PlayerGui.Seed_Shop.Enabled = State
		end,
	})

	Stock:Toggle({
		Title = "Enable Gear Shop UI",
		Desc = "Shows The Gear Shop UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Utility.PlayerGui.Gear_Shop.Enabled = State
		end,
	})

	--[[Stock:Toggle({
		Title = "Enable Event Shop UI",
		Desc = "Shows The Event UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Utility.PlayerGui.EventShop_UI.Enabled = State
		end,
	})]]

	Stock:Toggle({
		Title = "Enable Cosmetic Shop UI",
		Desc = "Shows The Cosmetic UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Utility.PlayerGui.CosmeticShop_UI.Enabled = State
		end,
	})
end)

Module:Init(function() --// Auto Buy Seeds
	Library:CreateSection(Stock, "Auto Buy Seeds")
	local TargetSeeds = Collection["Auto Buy Seeds"].TargetSeeds
	local Delay2 = Collection["Auto Buy Seeds"].Delay

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	local ConnectionInit2 = Module:SpawnConnection() --// For the Auto Buy All
	local Connection2 = nil
	local LastTick2 = 0

	Library:CreateDropdown(Stock, {
		Title = "Seeds to buy",
		Values = Module:SortArray(Utility.SeedStock),
		Value = { "Carrot" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetSeeds = option
		end,
	})

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

					if type(TargetSeeds) == "table" and #TargetSeeds > 0 then
						for _, v in pairs(TargetSeeds) do
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

	Stock:Toggle({
		Title = "Auto Buy All Seeds",
		Desc = "Automatically Buys All The Seeds In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit2:Disconnect(Connection2)

				Connection2 = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick2 = Current

					for _, v in pairs(Utility.SeedStock) do
						Module:BuySeed(v)
					end
				end)
			else
				if Connection2 then
					ConnectionInit2:Disconnect(Connection2)
					Connection2 = nil
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Buy Gears
	Library:CreateSection(Stock, "Auto Buy Gears")
	local TargetGears = Collection["Auto Buy Gears"].TargetGears
	local Delay2 = Collection["Auto Buy Gears"].Delay

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	local ConnectionInit2 = Module:SpawnConnection() --// For the Auto Buy All
	local Connection2 = nil
	local LastTick2 = 0

	Library:CreateDropdown(Stock, {
		Title = "Gears to buy",
		Values = Module:SortArray(Utility.GearStock),
		Value = { "Watering Can" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetGears = option
		end,
	})

	Stock:Toggle({
		Title = "Auto Buy Gears",
		Desc = "Automatically Buys Gears In Stock",
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

					if type(TargetGears) == "table" and #TargetGears > 0 then
						for _, v in pairs(TargetGears) do
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

	Stock:Toggle({
		Title = "Auto Buy All Gears",
		Desc = "Automatically Buys All The Gears In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit2:Disconnect(Connection2)

				Connection2 = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick2 = Current

					for _, v in pairs(Utility.SeedStock) do
						Module:BuySeed(v)
					end
				end)
			else
				if Connection2 then
					ConnectionInit2:Disconnect(Connection2)
					Connection2 = nil
				end
			end
		end,
	})
end)

--// Event
Module:Init(function() --// Input Pets
	Library:CreateSection(Event, "Prehistoric Event")
	local TargetPet = Collection["Auto Input Pets"].TargetPet
	local Tool, Strings = Module:GetPets()

	local PetsToInput = Library:CreateDropdown(Event, {
		Title = "Pets To Input",
		Desc = "Select the pets you want to input in the machine",
		Values = Module:SortArray(Strings),
		Value = {},
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetPet = option
		end,
	})

	local PetInput = Library:CreateButton(Event, {
		Title = "Input Pet",
		Desc = "Inputs the selected pet into the dino machine",
		Locked = false,
		Callback = function()
			if type(TargetPet) == "string" then
				local Tools, Strings = Module:GetPets()

				for _, v in pairs(Strings) do
					if v == TargetPet then
						for _, v2 in pairs(Tools) do
							if v2.Name == TargetPet then
								Humanoid:EquipTool(v2)
							end
						end

						local args = {
							"MachineInteract",
						}

						Utility.GameEvents:WaitForChild("DinoMachineService_RE"):FireServer(unpack(args))
					end
				end
			elseif type(TargetPet) == "table" then
				for _, v in pairs(TargetPet) do
					local Tools, Strings = Module:GetPets()

					for _, v2 in pairs(Strings) do
						if v2 == v then
							for _, v3 in pairs(Tools) do
								if v3.Name == v then
									Humanoid:EquipTool(v3)
								end
							end

							local args = {
								"MachineInteract",
							}
							Utility.GameEvents:WaitForChild("DinoMachineService_RE"):FireServer(unpack(args))
						end
					end
				end
			end
		end,
	})

	Library:CreateButton(Event, {
		Title = "Refresh Pets LIst",
		Locked = false,
		Callback = function()
			local Tool, Strings = Module:GetPets()

			PetsToInput:Refresh(Module:SortArray(Strings))
		end,
	})
end)

Module:Init(function() --// Auto Quest
	Library:CreateSection(Event, "Auto Dino Quests")
	local AutoQuestThread = nil
	local SelectedFruits = nil

	local CurrentQuests = {
		Quest1 = {
			Name = "",
			Progress = "Unknown",
			Completed = false,
		},
		Quest2 = {
			Name = "",
			Progress = "Unknown",
			Completed = false,
		},
		Quest3 = {
			Name = "",
			Progress = "Unknown",
			Completed = false,
		},
	}

	Library:CreateToggle(Event, {
		Title = "Auto Quest",
		Desc = "Automatically Complete Quests",
		Type = "Checkbox",
		Icon = "check",
		Default = false,
		Callback = function(State)
			Module:UpdateQuest(CurrentQuests)

			local function HandlePlantQuest(SeedName, RequiredAmount)
				if not State then
					return
				end

				local StockText = Utility.PlayerGui.Seed_Shop.Frame.ScrollingFrame[SeedName].Main_Frame.Stock_Text.Text
				local StockNumber = tonumber(StockText:match("X(%d+)")) or 0
				local SeedsToBuy = math.min(StockNumber, RequiredAmount)

				for I = 1, SeedsToBuy do
					if not State then
						break
					end
					pcall(function()
						Utility.GameEvents.BuySeedStock:FireServer(SeedName)
					end)
					task.wait(0.2)
				end

				if State then
					Module:UpdateQuest(CurrentQuests)
					local Planted = 0
					while State and Planted < RequiredAmount do
						local Has, Tool = Module:HasItem(SeedName, true)

						if Has then
							Humanoid:EquipTool(Tool) --// Fallback
							Module:Plant(Module:GetPosition("Random"), SeedName)
							Planted = Planted + 1
						end
						task.wait(0.25)
					end
				end
			end

			local function HandleHarvestQuest(FruitName, RequiredAmount)
				if not State then
					return
				end

				local PlayerName = game:GetService("Players").LocalPlayer.Name
				local Farm = workspace:FindFirstChild("Farm")

				for _, Plot in ipairs(Farm:GetChildren()) do
					local Important = Plot:FindFirstChild("Important")
					if Important then
						local Data = Important:FindFirstChild("Data")
						if Data then
							local Owner = Data:FindFirstChild("Owner")
							if Owner and Owner.Value == PlayerName then
								local PlantsPhysical = Important:FindFirstChild("Plants_Physical")
								if PlantsPhysical then
									local Plants = PlantsPhysical:FindFirstChild(FruitName)
									if Plants then
										SelectedFruits = { FruitName }
										local Harvested = 0
										while State and Harvested < RequiredAmount do
											task.wait(1)
											for _, Quest in pairs(CurrentQuests) do
												if
													Quest.Name == "Harvest " .. RequiredAmount .. " " .. FruitName
													and Quest.Completed
												then
													Harvested = RequiredAmount
													break
												end
											end
										end
									else
										HandlePlantQuest(FruitName, RequiredAmount)
									end
								end
							end
						end
					end
				end
			end

			if State then
				AutoQuestThread = task.spawn(function()
					while State do
						for _, Quest in pairs(CurrentQuests) do
							if not State then
								break
							end

							Utility.GameEvents:WaitForChild("ClaimDinoQuest"):InvokeServer(1)
							Utility.GameEvents:WaitForChild("ClaimDinoQuest"):InvokeServer(2)
							Utility.GameEvents:WaitForChild("ClaimDinoQuest"):InvokeServer(3)

							if Quest.Name == "Plant 100 Carrot Seeds" and Quest.Progress ~= "Completed!" then
								HandlePlantQuest("Carrot", 100)
							elseif Quest.Name == "Plant 10 Watermelon Seeds" and Quest.Progress ~= "Completed!" then
								HandlePlantQuest("Watermelon", 10)
							elseif Quest.Name == "Plant 5 Pumpkin Seeds" and Quest.Progress ~= "Completed!" then
								HandlePlantQuest("Pumpkin", 5)
							elseif Quest.Name == "Plant 25 Bamboo Seeds" and Quest.Progress ~= "Completed!" then
								HandlePlantQuest("Bamboo", 25)
							elseif Quest.Name == "Plant 1 Mango Seeds" and Quest.Progress ~= "Completed!" then
								HandlePlantQuest("Mango", 1)
							elseif Quest.Name == "Harvest 50 Strawberrys" and Quest.Progress ~= "Completed!" then
								HandleHarvestQuest("Strawberry", 50)
							elseif Quest.Name == "Harvest 150 Blueberrys" and Quest.Progress ~= "Completed!" then
								HandleHarvestQuest("Blueberry", 150)
							elseif Quest.Name == "Harvest 25 Apples" and Quest.Progress ~= "Completed!" then
								HandleHarvestQuest("Apple", 25)
							elseif Quest.Name == "Harvest 10 Coconuts" and Quest.Progress ~= "Completed!" then
								HandleHarvestQuest("Coconut", 10)
							elseif Quest.Name == "Harvest 5 Dragon Fruits" and Quest.Progress ~= "Completed!" then
								HandleHarvestQuest("Dragon Fruit", 5)
							end
						end
						task.wait(5)
					end
				end)
			else
				State = false
				if AutoQuestThread then
					task.cancel(AutoQuestThread)
					AutoQuestThread = nil
				end
			end
		end,
	})
end)

--// Misc
Module:Init(function() --// Auto Move Plants
	Library:CreateSection(Misc, "Auto Move Plants (Trowel Required)")
	local TargetPlants = Collection["Auto Move"].TargetPlants
	local MoveMethod = Collection["Auto Move"].MoveMethod
	local Delay2 = Collection["Auto Move"].Delay

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	local Farm, Important = Module:GetFarm()

	Library:CreateDropdown(Misc, {
		Title = "Plants To Move",
		Values = Module:SortArray(Utility.Fruits),
		Value = { "All" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetPlants = option
		end,
	})

	Library:CreateDropdown(Misc, {
		Title = "Move Method",
		Values = { "UnderPlayer", "UnderMouse", "Random" },
		Value = "UnderPlayer",
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			MoveMethod = option
		end,
	})

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
						if table.find(TargetPlants, "All") then
							for _, v in pairs(Plants) do
								Module:MovePlant(Trowel, v, MoveMethod)
							end
						else
							for _, v in pairs(Plants) do
								if table.find(TargetPlants, v.Name) then
									Module:MovePlant(Trowel, v, MoveMethod)
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
end)

Module:Init(function() --// Teleport to places
	Library:CreateSection(Misc, "Teleport to places")
	local TpZone = Collection.Teleport.Place

	Library:CreateDropdown(Misc, {
		Title = "Teleport Zones",
		Values = { "Gear Shop", "Pet Shop", "Middle", "Cosmetics Shop", "Crafting Zone" },
		Value = "Middle",
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			TpZone = option
		end,
	})

	Library:CreateButton(Misc, {
		Title = "Tp To Zone",
		Desc = "Teleports you to the selected zone",
		Locked = false,
		Callback = function()
			for i, v in pairs(Utility.Positions) do
				if i == TpZone then
					HumanoidRootPart.CFrame = v
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Hatch Eggs
	Library:CreateSection(Misc, "Hatching Eggs")
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 5

	local Farm, Imp = Module:GetFarm()

	Misc:Toggle({
		Title = "Auto Hatch Eggs",
		Desc = "Automatically hatches all the ready eggs in ur garden",
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

					for _, v in pairs(Imp:FindFirstChild("Objects_Physical"):GetChildren()) do
						if v.Name == "PetEgg" and v:GetAttribute("READY", true) then
							Module:ManagePetService("HatchPet", v)
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

	Library:CreateButton(Misc, {
		Title = "Hatch All Pets",
		Desc = "Hatches all the ready eggs in ur garden",
		Locked = false,
		Callback = function()
			for _, v in pairs(Imp:FindFirstChild("Objects_Physical"):GetChildren()) do
				if v.Name == "PetEgg" and v:GetAttribute("READY", true) then
					Module:ManagePetService("HatchPet", v)
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Place Eggs
	Library:CreateSection(Misc, "Placing Eggs")

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 1
	local Farm, Imp = Module:GetFarm()

	Misc:Toggle({
		Title = "Auto Place Eggs",
		Desc = "Automatically Places All The Eggs In Ur Inventory",
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

					local Has, Apply = Module:HasItem("Egg", true)

					if Has then
						Module:ManagePetService("CreateEgg", Module:GetPosition("Random"))
					else
						for _, v in pairs(Character:GetChildren()) do
							if v:IsA("Tool") and v.Name:find("Egg") then
								Module:ManagePetService("CreateEgg", Module:GetPosition("Random"))
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

	local HatchAllButton = Library:CreateButton(Misc, {
		Title = "Place All Eggs",
		Desc = "places all the eggs in ur inventory",
		Locked = false,
		Callback = function()
			local Has, Apply = Module:HasItem("Egg", true)

			if Has then
				Module:ManagePetService("CreateEgg", Module:GetPosition("Random"))
			else
				for _, v in pairs(Character:GetChildren()) do
					if v:IsA("Tool") and v.Name:find("Egg") then
						Module:ManagePetService("CreateEgg", Module:GetPosition("Random"))
					end
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Open Crates
	Library:CreateSection(Misc, "Opening Crates")
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 5

	local Farm, Imp = Module:GetFarm()

	Misc:Toggle({
		Title = "Auto Open Crates",
		Desc = "Automatically opens all the ready crates in ur garden",
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

					for _, v in pairs(Imp:FindFirstChild("Objects_Physical"):GetChildren()) do
						if v.Name == "CosmeticCrate" and v:GetAttribute("READY", true) then
							Module:ManageCrateService("OpenCrate", v)
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

	Library:CreateButton(Misc, {
		Title = "Open All Crates",
		Desc = "Opens all the ready crates in ur garden",
		Locked = false,
		Callback = function()
			for _, v in pairs(Imp:FindFirstChild("Objects_Physical"):GetChildren()) do
				if v.Name == "CosmeticCrate" and v:GetAttribute("READY", true) then
					Module:ManageCrateService("OpenCrate", v)
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Place Crates
	Library:CreateSection(Misc, "Placing Crates")
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 1
	local Farm, Imp = Module:GetFarm()

	Misc:Toggle({
		Title = "Auto Place Crates",
		Desc = "Automatically places all the crates in ur inventory",
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

					local Has, Apply = Module:HasItem("Crate", true)

					if Has then
						Module:ManageCrateService("CreateCrate", Module:GetPosition("Random"))
					else
						for _, v in pairs(Character:GetChildren()) do
							if v:IsA("Tool") and v.Name:find("Crate") then
								Module:ManagePetService("CreateCrate", Module:GetPosition("Random"))
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

	Library:CreateButton(Misc, {
		Title = "Place All Crates",
		Desc = "Places All The Crates In Ur Inventory",
		Locked = false,
		Callback = function()
			local Has, Apply = Module:HasItem("Crate", true)

			if Has then
				Module:ManageCrateService("CreateCrate", Module:GetPosition("Random"))
			else
				for _, v in pairs(Character:GetChildren()) do
					if v:IsA("Tool") and v.Name:find("Crate") then
						Module:ManagePetService("CreateCrate", Module:GetPosition("Random"))
					end
				end
			end
		end,
	})
end)

--// Exclusive
Module:Init(function() --// Pet Freezer
	Library:CreateSection(Exclusive, "Exclusive Features")

	Library:CreateButton(Exclusive, {
		Title = "Pet Freezer",
		Desc = "Freeze all the pets in the game",
		Locked = false,
		Callback = function()
			local PetsPhysical = Utility.Workspace.PetsPhysical

			for _, v in pairs(PetsPhysical:GetChildren()) do
				if v:IsA("Part") then
					v.Anchored = false
				end
			end
		end,
	})

	Library:CreateButton(Exclusive, {
		Title = "Pet UnFreezer",
		Desc = "UnFreeze all the pets in the game",
		Locked = false,
		Callback = function()
			local PetsPhysical = Utility.Workspace.PetsPhysical

			for _, v in pairs(PetsPhysical:GetChildren()) do
				if v:IsA("Part") then
					v.Anchored = true
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Craft Seeds
	Library:CreateSection(Exclusive, "Auto Craft Seeds")
	local SeedToCraft = Collection.Crafters["Seed Crafting"].Seed

	Library:CreateDropdown(Misc, {
		Title = "Seed to Craft",
		Values = Module:SortArray(Utility["Seed Crafts"]),
		Value = "Peace Lily",
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			SeedToCraft = option
		end,
	})

	Library:CreateButton(Misc, {
		Title = "Craft Selected Seed",
		Desc = "Crafts the seed you selected",
		Locked = false,
		Callback = function()
			Module:Craft(SeedToCraft, 1)
		end,
	})
end)

Module:Init(function() --// Auto Craft Gears
	Library:CreateSection(Exclusive, "Auto Craft Gears")
	local GearToCraft = Collection.Crafters["Gear Crafting"].Gear

	Library:CreateDropdown(Misc, {
		Title = "Gear to Craft",
		Values = Module:SortArray(Utility["Gear Crafts"]),
		Value = GearToCraft,
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			GearToCraft = option
		end,
	})

	Library:CreateButton(Misc, {
		Title = "Craft Selected Seed",
		Desc = "Crafts the seed you selected",
		Locked = false,
		Callback = function()
			Module:Craft(GearToCraft, 2)
		end,
	})
end)

Module:Init(function() --// Auto Craft Event Items
	Library:CreateSection(Exclusive, "Auto Craft Event Items")
	local ItemToCraft = Collection.Crafters["Event Crafting"].Item

	Library:CreateDropdown(Event, {
		Title = "Item to Craft",
		Values = Module:SortArray(Utility["Event Crafts"]),
		Value = ItemToCraft,
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			ItemToCraft = option
		end,
	})

	Library:CreateButton(Event, {
		Title = "Craft Selected Item",
		Desc = "Crafts the item you selected",
		Locked = false,
		Callback = function()
			Module:Craft(ItemToCraft, 3)
		end,
	})
end)

Module:Init(function() --// Exit //--
	Module:SendNotification('<font color="rgb(173,216,230)">Thanks for using Phantom Flux!</font>')
	Module:SendNotification('<font color="rgb(173,216,230)">Join Our Discord For More Updates</font>')
	Module:SendNotification('<font color="rgb(173,216,230)">Scripted by severitysvc :heart: </font>')
end)
