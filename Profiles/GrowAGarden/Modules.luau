local ModuleHandler = {}
ModuleHandler.__index = ModuleHandler

local RunMode = "Developer Mode"

local OldHandler = loadstring(
	game:HttpGet(
		"https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/refs/heads/main/Profiles/GrowAGarden/Handler.luau"
	)
)()
local NewHandler = OldHandler:GetDirectory(RunMode, "Handler.luau")

local Util = NewHandler:GetDirectory(RunMode, "Utility.luau")

--// Farming Modules
function ModuleHandler:GetFarm() end

return ModuleHandler
