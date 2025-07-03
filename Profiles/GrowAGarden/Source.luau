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

--// Utility
local Config = Util.Config
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
local TargetPlants = nil --// Possible value types: nil, string, table {nil - none, string - one selected, table - multiple selected}
local TargetMutations = nil --// Possible value types: nil, string, table {nil - none, string - one selected, table - multiple selected}

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
						warn("[AutoHarvest] Failed to find Farm or Important folder")
						return
					end

					if not TargetPlants or not TargetMutations then
						warn("[AutoHarvest] No plants or mutations selected")
						return
					end

					local Plants = Module:GetPlant(TargetPlants)
					if not Plants then
						warn("[AutoHarvest] No plants found for selected filters")
						return
					end

					if type(Plants) ~= "table" then
						Plants = { Plants }
					end

					for _, v in pairs(Plants) do
						if TargetMutations[1] == "All" or Module:HasMutation(v, TargetMutations) then
							local FruitsFolder = v:FindFirstChild("Fruits")
							if FruitsFolder then
								for _, Fruit in pairs(FruitsFolder:GetChildren()) do
									if Fruit:IsA("Model") then
										local IsReady = Fruit:FindFirstChild("IsReady")
										if (IsReady and IsReady.Value) or not IsReady then
											local Proxy = Module:GetProxy(Fruit)
											if Proxy then
												fireproximityprompt(Proxy)
											end
										end
									end
								end
							else
								local Proxy = Module:GetProxy(v)
								if Proxy then
									fireproximityprompt(Proxy)
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
