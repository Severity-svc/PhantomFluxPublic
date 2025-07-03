local Library = {}
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

return Library
