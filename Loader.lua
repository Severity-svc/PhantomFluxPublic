local RunMode = "Web"
local GameID = game.PlaceId
local Alias = {
	["GrowAGarden"] = 126884695634066,
	["StealABrainrot"] = 109983668079237,
}

getgenv().Import = function(RunMode, FilePath)
	if RunMode == "Developer" then
		local DirPath = "PhantomFlux-V2/"
		local FilePath = DirPath .. FilePath

		if isfolder(DirPath) then
			if isfile(FilePath) then
				local Source = readfile(FilePath)

				if Source then
					return loadstring(Source)()
				else
					error("[Import]: Failed to read file: " .. FilePath)
				end
			else
				error("[Import]: File not found: " .. FilePath)
			end
		else
			error("[Import]: Folder not found: " .. DirPath)
		end
	elseif RunMode == "Web" then
		local BaseUrl = "https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/main/"
		local FilePath = BaseUrl .. FilePath

		local Success, Response = pcall(function()
			return game:HttpGet(FilePath)
		end)

		if Success and Response then
			if Response:find("<html>") then
				error("[Import]: Invalid response content: " .. FilePath)
			end

			return loadstring(Response)()
		else
			error("[Import]: Failed to fetch file from URL: " .. FilePath)
		end
	else
		error("[Import]: Invalid RunMode")
	end
end

for i, v in pairs(Alias) do
	if v == GameID then
		getgenv().Branch = "Profiles/" .. i .. "/Source.lua"
		Import(RunMode, "Library/KeySystem/KeyLoader.lua")

		print(tostring(getgenv().Branch))
	else
		warn("[Loader]: game not supported")
	end
end
