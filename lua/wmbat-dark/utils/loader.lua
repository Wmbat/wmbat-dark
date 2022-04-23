-- Utility function to load user config

local lush = require("lush")

local function load_plugins(config)
	for index, plugin in pairs(config.plugins) do
		if type(plugin) == "string" then
			local local_plugin = require("wmbat-dark.plugins." .. plugin)
			config.plugins[index] = local_plugin
		elseif type(plugin) == 'table' then
			config.plugins[index] = plugin
		end
	end

	local loaded_plugins = lush.merge(config.plugins)
	return loaded_plugins
end

return {load_plugins = load_plugins}
