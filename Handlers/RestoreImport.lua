return function()
	getgenv().Import = function(RunMode, FilePath)
		if RunMode == "Developer" then
			local DirPath = "C:/Users/sentr/OneDrive/Documents/GitHub/PhantomFlux-V2"
			local FilePath = DirPath .. FilePath

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
end
