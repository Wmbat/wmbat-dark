local M = {}

M.tobool = function(val)
	if val == 0 or not val then
		return false
	end
	return true
end

M.get_colour_from_var = function(colour, default, colours)
	if colour == nil then
		return default
	end
	
	local c = colours[colour]
	if c == nil then
		print(string.format("%s colour could not be found, using default", colour))
		return default
	end

	return c
end

return M
