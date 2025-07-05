local Handler = {}
Handler.Name = "GrowAGarden"

Handler.__index = Handler

local Import = getgenv().Import

if not Import then
	error("Handler: import not found")
	return
end

local Util = Import("Developer", "Profiles/GrowAGarden/Utility.luau")

local PlaceID = game.PlaceId
local JobID = game.JobId

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

	if not success then
		warn("Failed to get server list")
		return {}
	end

	local Data = Util.Services.HttpService:JSONDecode(Response)
	return Data.data or {}
end

function Handler:ServerHop()
	local Servers = self:GetServers()

	for _, v in ipairs(Servers) do
		if v.playing < v.maxPlayers and v.id ~= JobID then
			print("Teleporting to server", v.id)
			Util.Services.TeleportService:TeleportToPlaceInstance(PlaceID, v.id)
			return
		end
	end

	print("No suitable server found to hop to!")
end

return Handler
