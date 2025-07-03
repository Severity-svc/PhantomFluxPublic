local Handler = {}
Handler.Name = "GrowAGarden"
Handler.Attribute = "Public"

Handler.__index = Handler

function Handler:Loadstring(Url)
	if type(Url) ~= "string" then
		error("[Handler]: Url must be a string")
	end
	local Success, Result = pcall(function()
		return game:HttpGet(Url)
	end)

	if not Success then
		error("[Handler]: Failed to load string from URL")
	end

	return Result
end

function Handler:GetDirectory(RunMode, FileName, URL)
	if RunMode == "Developer Mode" then
		if self:IsSupported("readfile") and self:IsSupported("isfile") and self:IsSupported("listfiles") then
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
		else
			error("[Handler]: Required file functions not supported")
		end
	elseif RunMode == "Public" then
		if URL then
			return self:Loadstring(URL)
		else
			local URLPath = "https://raw.githubusercontent.com/Severity-svc/PhantomFlux/refs/heads/main/Profiles/"
				.. self.Name
				.. "/"
				.. FileName
			return self:Loadstring(URLPath)
		end
	else
		error("[Handler]: Invalid RunMode")
	end
end

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

return Handler
