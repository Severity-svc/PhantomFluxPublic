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

return Handler
