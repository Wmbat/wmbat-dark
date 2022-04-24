local lush = require("lush")
local base = require("wmbat-dark.base")
local loader = require("wmbat-dark.utils.loader")
local config_module = require("wmbat-dark.config")
local config = config_module.config

local function setup(user_config)
	vim.pretty_print("setup");

	if user_config then
		config_module.apply_config(user_config)
	end

	vim.pretty_print("loading plugins")

	local load_plugins = loader.load_plugins(config)		

	vim.pretty_print("loading langs")

	local load_langs = loader.load_langs(config)

	return lush.merge({base, load_plugins, load_langs})
end

return {setup = setup}
