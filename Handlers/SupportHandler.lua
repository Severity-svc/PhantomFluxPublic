local Handler = {}
Handler.__index = Handler

function Handler:GetGenv(Name)
	for i, _ in pairs(getgenv()) do
		if i:lower():find(Name:lower()) then
			return true
		end
	end

	return false
end

return Handler
