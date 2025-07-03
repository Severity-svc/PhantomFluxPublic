local ModuleHandler = {}
ModuleHandler.__index = ModuleHandler

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

--// Variables
local Workspace = Util.Services.Workspace
local RunService = Util.Services.RunService
local LocalPlayer = Util.LocalPlayer.Player
local Character = Util.LocalPlayer.Character
local Humanoid = Util.LocalPlayer.Humanoid
local HumanoidRootPart = Util.LocalPlayer.HumanoidRootPart
local Backpack = Util.LocalPlayer.Backpack
local PlayerGui = Util.LocalPlayer.PlayerGui

function ModuleHandler:Init(Function)
	if type(Function) ~= "function" then
		error("[ModuleHandler:Init] Function must be a function")
		return
	end

	Function()
end

function ModuleHandler:SpawnConnection()
	local ConnectionHandler = {}

	function ConnectionHandler:Connect(Type, Callback)
		local Connection

		if Type == "Heartbeat" then
			Connection = RunService.Heartbeat:Connect(function()
				Callback()
			end)
		elseif Type == "RenderStepped" then
			Connection = RunService.RenderStepped:Connect(function()
				Callback()
			end)
		end

		return Connection
	end

	function ConnectionHandler:Disconnect(Connection)
		if Connection and Connection.Connected then
			Connection:Disconnect()
		end
	end

	return ConnectionHandler
end

--// Farming Modules
function ModuleHandler:GetFarm()
	local Farm = Workspace:FindFirstChild("Farm")

	for _, v in pairs(Farm:GetChildren()) do
		if
			v:IsA("Folder")
			and v:FindFirstChild("Important"):FindFirstChild("Data"):FindFirstChild("Owner").Value
				== LocalPlayer.Name
		then
			return v, v:FindFirstChild("Important")
		end
	end

	return nil, nil
end

function ModuleHandler:GetPlant(Name)
	if type(Name) == "string" then
		if Name == "All" then
			local Farm, Important = self:GetFarm()
			if not Farm or not Important then
				return nil
			end

			local PlantsPhysical = Important:FindFirstChild("Plants_Physical")

			for _, v in pairs(PlantsPhysical:GetChildren()) do
				if v:IsA("Model") then
					return v
				end
			end
		else
			local Farm, Important = self:GetFarm()
			if not Farm or not Important then
				return nil
			end

			local PlantsPhysical = Important:FindFirstChild("Plants_Physical")

			for _, v in pairs(PlantsPhysical:GetChildren()) do
				if v:IsA("Model") and v.Name == Name then
					return v
				end
			end
		end
	elseif type(Name) == "table" then
		local Plants = {}
		for _, v in pairs(Name) do
			local Plant = self:GetPlant(v)

			if Plant then
				table.insert(Plants, Plant)
			end
		end
		return Plants
	else
		error("[ModuleHandler:GetPlant] Name must be a string or a table of strings")
	end

	return nil
end

function ModuleHandler:GetProxy(Plant)
	for _, v in pairs(Plant:GetDescendants()) do
		if v:IsA("ProximityPrompt") and v.Name == "ProximityPrompt" then
			return v
		end
	end

	return nil
end

function ModuleHandler:HasMutation(Plant, Mutation)
	local Variants = { "Gold", "Rainbow" }

	if type(Mutation) == "string" then
		for _, v in pairs(Variants) do
			if Mutation == v then
				local Variant = Plant:FindFirstChild("Variant")
				if Variant and Variant.Value == v then
					return true
				end
			else
				if Plant:GetAttribute(Mutation, true) then
					return true
				end
			end
		end
	elseif type(Mutation) == "table" then
		for _, v in pairs(Mutation) do
			if self:HasMutation(Plant, v) then
				return true
			end
		end
	end

	return false
end

return ModuleHandler
