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

local function ParseIso8601(S)
	local Year, Month, Day, Hour, Min, Sec = S:match("^(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)")
	if not (Year and Month and Day and Hour and Min and Sec) then
		return nil
	end
	return os.time({
		year = tonumber(Year),
		month = tonumber(Month),
		day = tonumber(Day),
		hour = tonumber(Hour),
		min = tonumber(Min),
		sec = tonumber(Sec),
	})
end

function Handler:ServerHop(Filter)
	Filter = Filter or "Normal"
	local Servers = self:GetServers()

	if #Servers == 0 then
		print("[Handler]: No servers found!")
		return
	end

	if Filter == "Normal" then
		for _, Server in ipairs(Servers) do
			if Server.playing < Server.maxPlayers and Server.id ~= JobID then
				print("Teleporting to server", Server.id)
				TeleportService:TeleportToPlaceInstance(PlaceID, Server.id)
				return
			end
		end
	elseif Filter == "Oldest" or Filter == "Newest" then
		local TargetServer = nil
		local TargetTime = (Filter == "Oldest") and math.huge or 0

		for _, Server in ipairs(Servers) do
			if Server.playing < Server.maxPlayers and Server.id ~= JobID then
				local ServerTime = ParseIso8601(Server.updated)
				if ServerTime then
					if
						(Filter == "Oldest" and ServerTime < TargetTime)
						or (Filter == "Newest" and ServerTime > TargetTime)
					then
						TargetTime = ServerTime
						TargetServer = Server
					end
				end
			end
		end

		if TargetServer then
			print(("Teleporting to %s server: %s"):format(Filter, TargetServer.id))
			TeleportService:TeleportToPlaceInstance(PlaceID, TargetServer.id)
			return
		else
			print(("[Handler]: No suitable %s server found!"):format(Filter))
		end
	else
		warn("[Handler]: Invalid filter parameter:", Filter)
	end

	print("[Handler]: No suitable server found to hop to!")
end

return Handler
