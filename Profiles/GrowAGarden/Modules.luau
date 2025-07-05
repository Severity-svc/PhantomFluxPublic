local ModuleHandler = {}
ModuleHandler.__index = ModuleHandler

local RunMode = "Web"

--// Loading Modules
local Import = getgenv().Import

if not Import then
	error("[Module]: Import not found")
	return
end

local Util = Import(RunMode, "Profiles/GrowAGarden/Utility.luau")
localself = Import(RunMode, "Profiles/GrowAGarden/Handler.luau")

local CalculateValue = require(Util.Services.ReplicatedStorage.Modules.CalculatePlantValue)
local NotificationHandler = require(game:GetService("ReplicatedStorage").Modules.Notification)

--// Variables
local Workspace = Util.Services.Workspace
local RunService = Util.Services.RunService
local LocalPlayer = Util.LocalPlayer.Player
local Character = Util.LocalPlayer.Character
local Humanoid = Util.LocalPlayer.Humanoid
local HumanoidRootPart = Util.LocalPlayer.HumanoidRootPart

function ModuleHandler:Init(Function)
	if type(Function) ~= "function" then
		error("[ModuleHandler:Init] Function must be a function")
		return
	end

	coroutine.wrap(Function)()
end

function ModuleHandler:CalculateValue(Fruit)
	local Value = CalculateValue(Fruit)
	return Value
end

function ModuleHandler:SendNotification(Text)
	NotificationHandler.CreateNotification(_, Text)
end

function ModuleHandler:FireRemote(RemoteName, Arg1, Arg2) --// This is from the craftig module
	local CraftingTables = workspace:WaitForChild("CraftingTables")
	local Remote =
		game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("CraftingGlobalObjectService")
	if RemoteName == "SetRecipe1" then
		Remote:FireServer("SetRecipe", CraftingTables:WaitForChild("SeedEventCraftingWorkBench"), Arg1, Arg2)
	elseif RemoteName == "SetRecipe2" then
		Remote:FireServer("SetRecipe", CraftingTables:WaitForChild("EventCraftingWorkBench"), Arg1, Arg2)
	elseif RemoteName == "Polinate" then
		game:GetService("ReplicatedStorage")
			:WaitForChild("GameEvents")
			:WaitForChild("HoneyMachineService_RE")
			:FireServer("MachineInteract")
	elseif RemoteName == "SetRecipe3" then
		Remote:FireServer(
			"SetRecipe",
			workspace:WaitForChild("DinoEvent"):WaitForChild("DinoCraftingTable"),
			Arg1,
			Arg2
		)
	elseif RemoteName == "BuyGear" then
		local Args = { Arg1 }
		game:GetService("ReplicatedStorage")
			:WaitForChild("GameEvents")
			:WaitForChild("BuyGearStock")
			:FireServer(unpack(Args))
	end
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

--// Stock modules
function ModuleHandler:BuySeed(Name)
	local args = {
		Name,
	}
	game:GetService("ReplicatedStorage")
		:WaitForChild("GameEvents")
		:WaitForChild("BuySeedStock")
		:FireServer(unpack(args))
end

function ModuleHandler:BuyGear(Name)
	local args = {
		Name,
	}
	game:GetService("ReplicatedStorage")
		:WaitForChild("GameEvents")
		:WaitForChild("BuyGearStock")
		:FireServer(unpack(args))
end

--// AutoMove Section
function ModuleHandler:GetCFrame(PlantMethod)
	if PlantMethod == "Random" then
		local Farm = self:GetFarm()
		local PetArea = Farm and Farm:FindFirstChild("PetArea")
		if not PetArea then
			warn("[GetCFrame] PetArea not found")
			return nil
		end

		local Area = PetArea.Size
		local X = (math.random() - 0.5) * Area.X
		local Y = (math.random() - 0.5) * Area.Y
		local Z = (math.random() - 0.5) * Area.Z

		local Pos = PetArea.Position + Vector3.new(X, Y, Z)
		return CFrame.new(Pos)
	elseif PlantMethod == "UnderPlayer" then
		local HumanoidRootPart = Util.LocalPlayer.Character
			and Util.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		return HumanoidRootPart
				and CFrame.new(HumanoidRootPart.Position.X, 0.135528564453125, HumanoidRootPart.Position.Z)
			or nil
	elseif PlantMethod == "UnderMouse" then
		local Mouse = Util.LocalPlayer.Mouse
		if Mouse and Mouse.Target then
			local Hit = Mouse.Hit.Position
			return CFrame.new(Hit.X, 0.135528564453125, Hit.Z)
		end
		return nil
	else
		error("[Module:GetCFrame] Invalid Method: " .. tostring(PlantMethod))
		return nil
	end
end

function ModuleHandler:GetTrowel(Equip)
	local Backpack = Util.LocalPlayer.Backpack

	for _, v in pairs(Backpack:GetChildren()) do
		if v:IsA("Tool") and v.Name:find("Trowel") then
			print("sj")
			if Equip then
				Humanoid:EquipTool(v)
			end

			return v
		end
	end

	for _, v in pairs(Character:GetChildren()) do
		if v:IsA("Tool") and v.Name:find("Trowel") then
			print("sk2")
			return v
		end
	end

	return nil
end

function ModuleHandler:Place(Trowel, Plant, CFrame)
	local args = {
		"Place",
		Trowel, --// Loc: Character
		Plant,
		CFrame,
	}
	game:GetService("ReplicatedStorage")
		:WaitForChild("GameEvents")
		:WaitForChild("TrowelRemote")
		:InvokeServer(unpack(args))
end

function ModuleHandler:Pickup(Trowel, Plant)
	local args = {
		"Pickup",
		Trowel,
		Plant,
	}
	game:GetService("ReplicatedStorage")
		:WaitForChild("GameEvents")
		:WaitForChild("TrowelRemote")
		:InvokeServer(unpack(args))
end

function ModuleHandler:GetPhysicalPlants()
	local Plants = {}
	local Farm, Imp = self:GetFarm()

	for _, v in pairs(Imp:FindFirstChild("Plants_Physical"):GetChildren()) do
		if v:IsA("Model") then
			table.insert(Plants, v)
		end
	end

	return Plants
end

function ModuleHandler:MovePlant(Trowel, Plant, PlantMethod)
	if not Plant:GetAttribute("Moved") then
		self:Pickup(Trowel, Plant)
		self:Place(Trowel, Plant, self:GetCFrame(PlantMethod))
		Plant:SetAttribute("Moved", true)
	end
end

--// Object_Physical

function ModuleHandler:GetEgg()
	local Farm, Imp = self:GetFarm()

	for _, v in pairs(Imp:FindFirstChild("Objects_Physical"):GetChildren()) do
		if v.Name == "PetEgg" then
			return v
		end
	end

	return nil
end

--// Honey
function ModuleHandler:GetPolinated(Equip)
	for _, v in pairs(Util.LocalPlayer.Backpack:GetChildren()) do
		if v.Name:find("Polinated") then
			if Equip then
				Humanoid:EquipTool(v)
			end

			return v
		end
	end

	for _, v in pairs(Util.LocalPlayer.Character:GetChildren()) do
		if v.Name:find("Polinated") and v:IsA("Tool") then
			return v
		end
	end

	return nil
end

function ModuleHandler:InsertFruit()
	local args = {
		"MachineInteract",
	}
	game:GetService("ReplicatedStorage")
		:WaitForChild("GameEvents")
		:WaitForChild("HoneyMachineService_RE")
		:FireServer(unpack(args))
end

function ModuleHandler:RefreshSelectionUI(Number)
	local SelectionUI = Util.LocalPlayer.PlayerGui:FindFirstChild("RecipeSelection_UI")
	if not SelectionUI then
		return
	end

	if Number == 1 then
		local Prompt = workspace.CraftingTables.SeedEventCraftingWorkBench.Model.BenchTable.CraftingProximityPrompt
		fireproximityprompt(Prompt)
	elseif Number == 2 then
		local Prompt = workspace.CraftingTables.EventCraftingWorkBench.Model:GetChildren()[4].CraftingProximityPrompt
		fireproximityprompt(Prompt)
	end

	SelectionUI.Enabled = false
	Util.Services.Lighting:FindFirstChild("Blur").Enabled = false
end

function ModuleHandler:SetCraftingRecipe(ItemName, Bench)
	if typeof(Bench) ~= "number" or typeof(ItemName) ~= "string" then
		return
	end
	self:RefreshSelectionUI(Bench)
	task.wait(0.2)
	local SelectionUI = Util.LocalPlayer.PlayerGui:WaitForChild("RecipeSelection_UI")
	local Frame = SelectionUI:WaitForChild("Frame")
	local Scroll = Frame:WaitForChild("ScrollingFrame")

	for _, v in pairs(Scroll:GetChildren()) do
		if v:IsA("Frame") and not v.Name:find("_Padding") then
			local FrameName = v.Name:gsub("_", " "):lower()
			if FrameName:find(ItemName:lower()) then
				if Bench == 1 then
					self:FireRemote("SetRecipe1", "SeedEventWorkbench", ItemName)
				elseif Bench == 2 then
					self:FireRemote("SetRecipe2", "GearEventWorkbench", ItemName)
				end
				return v
			end
		end
	end

	if Bench == 1 then
		self:FireRemote("SetRecipe1", "SeedEventWorkbench", ItemName)
	elseif Bench == 2 then
		self:FireRemote("SetRecipe2", "GearEventWorkbench", ItemName)
	elseif Bench == 3 then
		self:FireRemote("SetRecipe3", "DinoEventWorkbench", ItemName)
	end
end

function ModuleHandler:GetIngredients(Recipe)
	local Ingredients = {}
	if typeof(Recipe) ~= "Instance" then
		return Ingredients
	end

	local MainFrame = Recipe:FindFirstChild("Main_Frame")
	local Display = MainFrame and MainFrame:FindFirstChild("Display")
	local Details = Display and Display:FindFirstChild("RecipeDetails")
	if not Details then
		return Ingredients
	end

	local timeout, elapsed = 2, 0
	while #Details:GetChildren() == 0 and elapsed < timeout do
		task.wait(0.1)
		elapsed += 0.1
	end

	if #Details:GetChildren() == 0 then
		return Ingredients
	end

	for _, v in pairs(Details:GetChildren()) do
		if v:IsA("Frame") then
			local ItemName = v:FindFirstChild("ItemName")
			local ItemAmount = v:FindFirstChild("ItemAmount")
			if ItemName and ItemName:IsA("TextLabel") then
				Ingredients[ItemName.Text] = tonumber(ItemAmount.Text:match("%d+"))
			end
		end
	end
	return Ingredients
end

function ModuleHandler:SubmitItem(Number)
	if Number == 1 then
		local Prompt = workspace.CraftingTables.SeedEventCraftingWorkBench.Model.BenchTable.CraftingProximityPrompt
		fireproximityprompt(Prompt)
	elseif Number == 2 then
		local Prompt = workspace.CraftingTables.EventCraftingWorkBench.Model:GetChildren()[4].CraftingProximityPrompt
		fireproximityprompt(Prompt)
	elseif Number == 3 then
		local Prompt = workspace.DinoEvent.DinoCraftingTable
			:GetChildren()[2].Model
			:GetChildren()[3].EventCraftingWorkBench.Model.TableTop
			:GetChildren()[2]
		fireproximityprompt(Prompt)
	end
end

function ModuleHandler:HasItem(ItemName, Apply)
	local Backpack = LocalPlayer:FindFirstChild("Backpack")
	if not Backpack then
		return false
	end
	for _, v in pairs(Backpack:GetChildren()) do
		if v:IsA("Tool") and v.Name:lower():find(ItemName:lower()) then
			if Apply then
				Humanoid:EquipTool(v)
			end
			return true, v
		end
	end
	return false
end

function ModuleHandler:Craft(Item, Bench)
	local Recipe = self:SetCraftingRecipe(Item, Bench)
	if not Recipe then
		return
	end
	task.wait(0.25)
	local Ingredients = self:GetIngredients(Recipe)
	local Submitted = false
	for I, V in pairs(Ingredients) do
		if I ~= "Name" then
			if I == "Honey" then
				local HoneyAmount = Util.LocalPlayer.PlayerGui.Honey_UI.Frame.TextLabel1.val.Value
				if HoneyAmount and HoneyAmount < V then
					local Has, Tool = self:HasItem("Polinated", true)
					if Has then
						self:FireRemote("Polinate")
					else
						local Found = false
						for _, Obj in pairs(self:GetFarm().Important:GetChildren()) do
							if Obj:IsA("Model") and Obj:GetAttribute("Polinated") then
								for _, Prompt in pairs(Obj:GetDescendants()) do
									if Prompt:IsA("ProximityPrompt") then
										fireproximityprompt(Prompt)
										task.wait(0.1)
										local HasTool = self:HasItem("Polinated", true)
										if HasTool then
											self:FireRemote("Polinate")
											Found = true
											break
										end
									end
								end
							end
							if Found then
								break
							end
						end
					end
				end
			elseif I:find("Sprinkler") then
				local Has, Tool = self:HasItem(I, true)
				if Has then
					task.wait(1)
					self:SubmitItem(Bench)
					Submitted = true
				else
					local GearShop = Util.LocalPlayer.PlayerGui.Gear_Shop.Frame.ScrollingFrame
					if GearShop:FindFirstChild(I) then
						local MainFrame = GearShop[I]:FindFirstChild("Main_Frame")
						local Stock = MainFrame and MainFrame:FindFirstChild("Stock_Text")
						if Stock then
							local Tries = 0
							while Stock.Text == "X0 Stock" and Tries < 50 do
								task.wait(0.2)
								Tries += 1
							end
							if Stock.Text ~= "X0 Stock" then
								self:FireRemote("BuyGear", I)
							end
						end
					end
				end
			else
				local Has, Tool = self:HasItem(I, true)
				if Has and Tool then
					local ItemType
					for K, V3 in pairs(Util.Types) do
						if V3 == Tool:GetAttribute("b") then
							ItemType = K
							break
						end
					end
					if ItemType then
						task.wait(1)
						self:SubmitItem(Bench)
						Submitted = true
					end
				end
			end
		end
	end
end

--// Stats
function ModuleHandler:CalculateInventory()
	local Backpack = Util.LocalPlayer.Backpack
	local Value = 0

	for _, v in pairs(Backpack:GetChildren()) do
		if v:GetAttribute("b", "j") then
			local FruitValue = self:CalculateValue(v)
			Value = Value + FruitValue
		end
	end

	return tostring(Value)
end

function ModuleHandler:CalculateHeldItem()
	local Backpack = Util.LocalPlayer.Backpack
	local Value = 0

	for _, v in pairs(Character:GetChildren()) do
		if v:IsA("Tool") and v:GetAttribute("b", "j") then
			Value = self:CalculateValue(v)
		end
	end

	return tostring(Value)
end

function ModuleHandler:GetItemCount(Directory)
	local Count = 0
	for _, v in pairs(Directory:GetChildren()) do
		Count = Count + 1
	end

	return Count
end

--// PetService
function ModuleHandler:ManagePetService(Action, Arg)
	local args = {
		Action,
		Arg,
	}
	game:GetService("ReplicatedStorage")
		:WaitForChild("GameEvents")
		:WaitForChild("PetEggService")
		:FireServer(unpack(args))
end

--// Crate Service
function ModuleHandler:ManageCrateService(Action, Arg)
	local args = {
		Action,
		Arg,
	}
	game:GetService("ReplicatedStorage")
		:WaitForChild("GameEvents")
		:WaitForChild("CosmeticCrateService")
		:FireServer(unpack(args))
end

--// Dino Event

function ModuleHandler:GetPets()
	local Backpack = Util.LocalPlayer.Backpack
	local Pets = {}
	local PetStrings = {}

	for _, v in pairs(Backpack:GetChildren()) do
		if v:GetAttribute("b", "l") and v:FindFirstChild("PetToolLocal") then
			table.insert(Pets, v)
			table.insert(PetStrings, v.Name)
		end
	end

	return Pets, PetStrings
end

return ModuleHandler
