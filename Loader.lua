local Collection = {
	["Alias"] = {
		["GrowAGarden"] = 126884695634066,
	},
}

if not getgenv().Import then
	getgenv().Import = function(RunMode, FileName)
		if RunMode == "Developer" then
			local DirPath = "C:/Users/sentr/OneDrive/Documents/GitHub/PhantomFlux/"
			local FilePath = DirPath .. FileName

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
		elseif RunMode == "Web" then
			local BaseUrl = "https://raw.githubusercontent.com/Severity-svc/PhantomFluxPublic/main/"
			local FilePath = BaseUrl .. FileName

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
end

local GameID = game.PlaceId

for i, v in pairs(Collection.Alias) do
	if v == GameID then
		local Branch = i
		getgenv().Branch = "Profiles/" .. Branch .. "/Source.lua"
		Import("Web", "KeySystem/KeyLoader.lua")
	end
end
