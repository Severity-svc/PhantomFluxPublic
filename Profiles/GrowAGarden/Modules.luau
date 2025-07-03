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

	coroutine.wrap(Function)()
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

function ModuleHandler:GetPlants(Farm)
	local Plants = {}

	for _, v in pairs(Farm:GetDescendants()) do
		if v:IsA("Model") and v:FindFirstChild("Grow") then
			if v:FindFirstChild("Fruits") then
				for _, v in pairs(v.Fruits:GetChildren()) do
					if v:IsA("Model") and v:FindFirstChild("Grow") then
						table.insert(Plants, v)
					end
				end
			else
				table.insert(Plants, v)
			end
		end
	end

	return Plants
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

function ModuleHandler:HarvestPlant(Plant)
	local Proxy = self:GetProxy(Plant)
	if not Proxy then
		warn("[ModuleHandler:HarvestPlant] No proxy found for plant: " .. Plant.Name)
		return
	end

	if Proxy.Enabled then
		fireproximityprompt(Proxy)
	end
end

--// Auto Plant Modules
function ModuleHandler:Plant(Position, Name)
	local args = {
		Position,
		Name, --// Eg: Avocado, Tomato, etc.
	}
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Plant_RE"):FireServer(unpack(args))
end

function ModuleHandler:GetSeeds()
	local Backpack = Util.LocalPlayer.Backpack
	local Seeds = {}

	for _, v in pairs(Backpack:GetChildren()) do
		if v:IsA("Tool") and v.Name:find("Seed") then
			table.insert(Seeds, v)
			return Seeds
		end
	end

	for _, v in pairs(LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") and v.Name:find("Seed") then
			table.insert(Seeds, v)
			return Seeds
		end
	end

	return Seeds
end

function ModuleHandler:GetPosition(PlantMethod)
	if PlantMethod == "Random" then
		local Farm = self:GetFarm()
		local PetArea = Farm and Farm:FindFirstChild("PetArea")
		if not PetArea then
			warn("[GetPosition] PetArea not found")
			return nil
		end

		local Area = PetArea.Size

		local X = (math.random() - 0.5) * Area.X
		local Y = (math.random() - 0.5) * Area.Y
		local Z = (math.random() - 0.5) * Area.Z

		return PetArea.Position + Vector3.new(X, Y, Z)
	elseif PlantMethod == "UnderPlayer" then
		return HumanoidRootPart and HumanoidRootPart.Position or nil
	elseif PlantMethod == "UnderMouse" then
		local Mouse = Util.LocalPlayer.Mouse
		if Mouse and Mouse.Target then
			return Mouse.Hit.p
		else
			return nil
		end
	else
		error("[Module:GetPosition] Invalid Method: " .. tostring(PlantMethod))
		return nil
	end
end

return ModuleHandler
