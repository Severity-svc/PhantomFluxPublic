local Handler = {}
Handler.__index = Handler

local Import = getgenv().Import

if not Import then
	error("[Handler]: import not found")
	return
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

return Handler
