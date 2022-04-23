local M = {}

M.tobool = function(val)
	if val == 0 or not val then
		return false
	end
	return true
end

M.get_color_from_var = function(color, default, colors)
	if color == nil then
		return default
	end
	
	local c = colors[color]
	if c == nil then
		print(string.format("%s color could not be found, using default", color))
		return default
	end

	return c
end

return M
