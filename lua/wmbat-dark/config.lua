-- Config module to setup user configuration for plugins, languages and options

local config = {
	plugins = {},
	langs = {}
}

local function apply_config(config_table)
	-- parse plugins
	if config_table.plugins then
		config.plugins = config_table.plugins
	end

	-- parse langs
	if config_table.langs then
		config.langs = config_table.langs
	end
end

return {config = config, apply_config = apply_config}
