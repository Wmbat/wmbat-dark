local hsl = require('lush.hsl')
local loader = require('wmbat-dark.utils.loader')
local base = require('wmbat-dark.base')
local config_module = require("wmbat-dark.config")
local config = config_module.config

print(loader)
print(base)
print(config_module)
print(config)

local function setup(user_config)
	if user_config then
		config_module.apply_config(user_config)
	end

	local load_plugins = loader.load_plugins(config)
	
	print(load_plugins)

	return lush.merge({base})
end

return {setup = setup}
