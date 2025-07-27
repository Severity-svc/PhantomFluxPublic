local RunMode = "Web"
local GameID = game.PlaceId

local Alias = {
	["GrowAGarden"] = 126884695634066,
	["StealABrainrot"] = {96342491571673, 109983668079237},
}

getgenv().Import = function(RunMode, FilePath)
	if RunMode == "Developer" then
		local DirPath = "PhantomFlux-V2/"
		local FullPath = DirPath .. FilePath

		if isfolder(DirPath) then
			if isfile(FullPath) then
				local Source = readfile(FullPath)
				if Source then
					return loadstring(Source)()
				else
					error("[Import]: Failed to read file: " .. FullPath)
				end
			else
				error("[Import]: File not found: " .. FullPath)
			end
		else
			error("[Import]: Folder not found: " .. DirPath)
		end
	elseif RunMode == "Web" then
		local FileUrl = "https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/main/" .. FilePath

		local Success, Response = pcall(function()
			return game:HttpGet(FileUrl)
		end)

		if Success and Response then
			if Response:find("<html>") then
				error("[Import]: Invalid response content: " .. FileUrl)
			end

			return loadstring(Response)()
		else
			error("[Import]: Failed to fetch file from URL: " .. FileUrl)
		end
	else
		error("[Import]: Invalid RunMode")
	end
end

local Match = false

for i, v in pairs(Alias) do
	if type(v) == "table" then
		for _, v2 in ipairs(ids) do
			if v2 == GameID then
				Match = true
				getgenv().Branch = "Profiles/" .. i .. "/Source.lua"
				Import(RunMode, "Library/KeySystem/KeyLoader.lua")
				--// print(getgenv().Branch)
				break
			end
		end
	else
		if v == GameID then
			Match = true
			getgenv().Branch = "Profiles/" .. i .. "/Source.lua"
			Import(RunMode, "Library/KeySystem/KeyLoader.lua")
			print(getgenv().Branch)
			break
		end
	end
end

if not Match then
	warn("[Loader]: game not supported")
end
