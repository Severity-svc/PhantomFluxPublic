--// Note: This is WindUI, not a custom gui library by phantom flux.

local Library = {}
Library.__index = Library
Library.Async = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local UI = Library.Async --// Shortened

local Window = nil

function Library:Setup()
	Window = UI:CreateWindow({
		Title = "PhantomFlux | Grow a Garden",
		Icon = "rbxassetid://79794145409508",
		IconThemed = true,
		Author = "Scripted by severitysvc",
		Folder = "",
		Size = UDim2.fromOffset(620, 480),
		Transparent = true,
		Theme = "Dark",
		User = {
			Enabled = true,
			Callback = function() end,
			Anonymous = false,
		},
		SideBarWidth = 200,
		ScrollBarEnabled = true,
		KeySystem = false, --// Will use our custom keysystem in the loader.lua
	})

	return Window
end

function Library:CreateTab(Name, Icon)
	local Window = Window or self:Setup()

	if not Window then
		error("[Library]: Failed to find Window")
		return
	end

	local Tab = Window:Tab({
		Title = Name,
		Icon = Icon,
		Locked = false,
	})

	return Tab
end

function Library:CreateSection(Tab, Title, Size)
	local Section = Tab:Section({
		Title = Title,
		TextXAlignment = "Left",
		TextSize = Size or 17,
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

--// Special Setups
function Library:SetupAboutUs(AboutUs)
	local Window = Window or self:Setup()

	if not Window then
		error("[Library]: Failed to find Window")
		return
	end

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
end

return Library
