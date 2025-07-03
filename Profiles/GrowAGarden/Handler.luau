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
			local Path = "C:\\Users\\sentr\\OneDrive\\Documents\\GitHub\\PhantomFlux\\Profiles\\GrowAGarden\\"
				.. FileName

			if isfolder(Path) then
				local File = Path .. FileName
				local Source = readfile(File)

				if Source then
					return loadstring(Source)()
				else
					error("[Handler]: Failed to read file: " .. File)
				end
			end
		end
	elseif RunMode == "Public" then
		if URL then
			local Path = URL

			return self:Loadstring(Path)
		else
			local Path = "https://raw.githubusercontent.com/Severity-svc/PhantomFlux/refs/heads/main/Profiles/"
				.. self.Name
				.. "/"
				.. FileName
			return self:Loadstring(Path)
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
