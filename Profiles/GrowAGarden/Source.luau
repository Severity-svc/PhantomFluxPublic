local RunMode = "Developer Mode"

local OldHandler = loadstring(
	game:HttpGet(
		"https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/refs/heads/main/Profiles/GrowAGarden/Handler.luau"
	)
)()
local NewHandler = OldHandler:GetDirectory(RunMode, "Handler.luau")

if not NewHandler then
	error("[Source] Failed to load Handler")
	return
end

local Util = NewHandler:GetDirectory(RunMode, "Utility.luau")
local Library = NewHandler:GetDirectory(RunMode, "Library.luau")
