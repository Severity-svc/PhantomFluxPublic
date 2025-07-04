if not getgenv().GetDirectory then
	getgenv().GetDirectory = function(RunMode, FileName, URL)
		if RunMode == "Developer Mode" then
			local DirPath = "C:\\Users\\sentr\\OneDrive\\Documents\\GitHub\\PhantomFlux\\Profiles\\GrowAGarden\\"
			local FilePath = DirPath .. FileName

			if isfile(FilePath) then
				local Source = readfile(FilePath)

				if Source then
					return loadstring(Source)()
				else
					error("[Handler]: Failed to read file: " .. FilePath)
				end
			else
				error("[Handler]: File not found: " .. FilePath)
			end
		elseif RunMode == "Public" then
			if URL then
				return loadstring(game:HttpGet(URL))()
			else
				warn("[GetDirectory]: No url found")
			end
		else
			error("[Handler]: Invalid RunMode")
		end
	end
end
