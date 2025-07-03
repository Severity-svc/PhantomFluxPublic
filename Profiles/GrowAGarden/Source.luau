--// RunMode: This is for adding updates to the source, make sure to change it to "Public" when you are done.
local RunMode = "Developer Mode"

--// Loading Modules
local OldHandler = loadstring(
	game:HttpGet(
		"https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/refs/heads/main/Profiles/GrowAGarden/Handler.luau"
	)
)()

local NewHandler = OldHandler:GetDirectory(RunMode, "Handler.luau") --// If the runmode is "Public" then the newhandler will be the same as the oldhandler.

if not NewHandler then
	error("[Source] Failed to load Handler")
	return
end

local Util = NewHandler:GetDirectory(RunMode, "Utility.luau")
local Library = NewHandler:GetDirectory(RunMode, "Library.luau")
local Module = NewHandler:GetDirectory(RunMode, "Modules.luau")

--// Init Library
local Window = Library:Init()

--// Tabs
local AboutUs = Library:CreateTab("About Us", "info")
local Farming = Library:CreateTab("Farming", "plant")
local Stock = Library:CreateTab("Stock", "money")
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
			if State then
				ConnectionInit:Disconnect(Connection)

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
local PlantMethod = Config["Auto Plant"].PlantMethod
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
	local Position = Config["Auto Plant"].Position
	local Farm, Important = Module:GetFarm()

	local LastTick = 0
	local Delay = 0.1

	Farming:Toggle({
		Title = "Auto Plant",
		Desc = "Automatically Plant Stuff Based On Your Farm",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local currentTime = tick()
					if currentTime - LastTick < Delay then
						return
					end
					LastTick = currentTime

					if TargetPlants2 == "All" then
						local Seeds = Module:GetSeeds()
						for _, v in pairs(Seeds) do
							Module:Plant(v.Name, PlantMethod)
						end
					elseif type(TargetPlants2) == "string" and TargetPlants2 ~= "All" then
						local Seeds = Module:GetSeeds()
						for _, v in pairs(Seeds) do
							if v.Name:lower():find(TargetPlants2:lower()) then
								Module:Plant(v.Name, PlantMethod)
							end
						end
					elseif type(TargetPlants2) == "table" and #TargetPlants2 > 0 then
						local Seeds = Module:GetSeeds()
						for _, v in pairs(Seeds) do
							if table.find(TargetPlants2, v.Name) then
								Module:Plant(v.Name, PlantMethod)
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
