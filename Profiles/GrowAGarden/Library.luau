--// The reason i added Library is for my vscode to recognize the library and its functions :Heart:

local Library = {}
Library.__index = Library

local RunMode = "Developer Mode"

local OldHandler = loadstring(
	game:HttpGet(
		"https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/refs/heads/main/Profiles/GrowAGarden/Handler.luau"
	)
)()
local NewHandler = OldHandler:GetDirectory(RunMode, "Handler.luau")

local WindUI =
	NewHandler:GetDirectory("Public", nil, "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")

if not NewHandler then
	error("[Library] Failed to load Handler")
	return
end

function Library:Init()
	if not WindUI then
		error("[Library] Failed to load WindUI")
		return
	end

	local Success, Result = pcall(function()
		local Window = WindUI:CreateWindow({
			Title = "PhantomFlux | Grow a Garden",
			Icon = "rbxassetid://79794145409508",
			IconThemed = true,
			Author = "severitysvc",
			Folder = "PhantomFlux",
			Size = UDim2.fromOffset(580, 460),
			Transparent = true,
			Theme = "Dark",
			User = {
				Enabled = true,
				Callback = function() end,
				Anonymous = false,
			},
			SideBarWidth = 200,
			ScrollBarEnabled = true,
			KeySystem = false, --// Will use our custom keysystem in the loader.luau
		})

		return Window
	end)

	if not Success then
		error("[Library] Failed to create Window: " .. tostring(Result))
	end

	return Result
end

function Library:CreateTab(Name, Icon)
	local Window = self:Init()

	if not Window then
		error("[Library] Failed to find Window")
		return
	end

	local Tab = Window:Tab({
		Title = Name,
		Icon = Icon,
		Locked = false,
	})

	return Tab
end

function Library:Notify(Table)
	local Notification = WindUI:CreateNotification({
		Title = Table.Title,
		Content = Table.Content,
		Duration = Table.Duration,
	})

	return Notification
end

function Library:SelectTab(Index)
	local Window = self:Init()

	if not Window then
		error("[Library] Failed to find Window")
		return
	end

	Window:SelectTab(Index)
end

function Library:AddConfigSection()
	local Window = self:Init()

	local Divider = Window:Divider()
	local WindowTab = Window:Tab({
		Title = "Window and File Configuration",
		Icon = "settings",
		Desc = "Manage window settings and file configurations.",
		ShowTabTitle = true,
	})

	local CreateThemeTab =
		Window:Tab({ Title = "Create Theme", Icon = "palette", Desc = "Design and apply custom themes." })
end

function Library:CreateSection(Tab, Title)
	local Section = Tab:Section({
		Title = Title,
		TextXAlignment = "Left",
		TextSize = 17,
	})

	return Section
end

function Library:CreateToggle(Tab, Table)
	local Toggle = Tab:Toggle(Table)

	return Toggle
end

function Library:CreateButton(Tab, Table)
	local Button = Tab:Button(Table)

	return Button
end

function Library:CreateSlider(Tab, Table)
	local Slider = Tab:Slider(Table)

	return Slider
end

function Library:CreateDropdown(Tab, Table)
	local Dropdown = Tab:Dropdown(Table)

	return Dropdown
end

function Library:CreateInput(Tab, Table)
	local Input = Tab:Input(Table)

	return Input
end

return Library
