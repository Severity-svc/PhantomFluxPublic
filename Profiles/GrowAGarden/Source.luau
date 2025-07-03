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
local AboutUs = Window:CreateTab("About Us", "info")
local Farming = Window:CreateTab("Farming", "plant")
local Stock = Window:CreateTab("Stock", "money")
local Player = Window:CreateTab("Player", "user")
local Visual = Window:CreateTab("Visual", "eye")
local Event = Window:CreateTab("Event", "calendar")
local Misc = Window:CreateTab("Misc", "ellipsis")

local Other = Library:AddConfigSection()

--// Utility
local Config = Util.Config

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

--// Farming
local AutoHarvest = Library:CreateSection(Farming, "Auto Harvest")
local TargetPlants = nil --// Possible value types: nil, string, table {nil - none, string - one selected, table - multiple selected}
local TargetMutations = nil --// Possible value types: nil, string, table {nil - none, string - one selected, table - multiple selected}

local PlantsToHarvest = Library:CreateDropdown(Farming, {
	Title = "Plants To Harvest",
	Values = NewHandler:SortArray(Util.Fruits),
	Value = { "All" },
	Multi = true,
	AllowNone = true,
	Callback = function(option)
		TargetPlants = option
	end,
})

local Mutations = Library:CreateDropdown(Farming, {
	Title = "Mutations",
	Values = NewHandler:SortArray(Util.Mutations),
	Value = { "All" },
	Multi = true,
	AllowNone = true,
	Callback = function(option)
		TargetMutations = option
	end,
})

AutoHarvest:Toggle({
	Title = "Auto Harvest",
	Icon = "check",
	Callback = function(State) end,
})
