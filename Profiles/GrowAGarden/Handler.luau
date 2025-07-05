local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Handler = {}
Handler.Name = "GrowAGarden"

Handler.__index = Handler

local Import = getgenv().Import

if not Import then
	error("Handler: import not found")
	return
end

local Util = Import("Developer", "Profiles/GrowAGarden/Utility.luau")

local HttpService = Util.Services and Util.Services.HttpService or game:GetService("HttpService")
local TeleportService = Util.Services and Util.Services.TeleportService or game:GetService("TeleportService")

local PlaceID = game.PlaceId
local JobID = game.JobId

local CalculateValue = require(Util.Services.ReplicatedStorage.Modules.CalculatePlantValue)

function Handler:SortArray(Array)
	if type(Array) ~= "table" then
		error("[Handler]: Array must be a table")
	end

	table.sort(Array, function(a, b)
		return tostring(a):lower() < tostring(b):lower()
	end)

	return Array
end

function Handler:IsSupported(Name)
	local Directory = getgenv()

	if Directory[Name] then
		return true
	end

	return false
end

function Handler:GetServers()
	local URL = ("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100"):format(PlaceID)
	local Success, Response = pcall(function()
		return game:HttpGet(URL)
	end)

	if not Success then
		warn("[Handler]: Failed to get server list")
		return {}
	end

	local Data = HttpService:JSONDecode(Response)
	return Data.data or {}
end

function Handler:ServerHop()
	local Servers = self:GetServers()

	for _, v in ipairs(Servers) do
		if v.playing < v.maxPlayers and v.id ~= JobID then
			TeleportService:TeleportToPlaceInstance(PlaceID, v.id)
			return
		end
	end

	print("[Handler]: No suitable server found to hop to!")
end

function Handler:CalculateValue(Fruit)
	return CalculateValue(Fruit)
end

return Handler
