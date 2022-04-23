local hsl = require('lush.hsl')
local loader = require('wmbat-dark.utils.loader')
local base = require('wmbat-dark.base')
local config_module = require("wmbat-dark.config")
local config = config_module.config

local function setup(user_config)
	if user_config then
		config_module.apply_config(user_config)
	end

	local load_plugins = loader.load_plugins(config)
	return lush.merge({base, load_plugins})
end

return {setup = setup}
