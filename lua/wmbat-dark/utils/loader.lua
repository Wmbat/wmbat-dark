-- Utility function to load user config

local lush = require("lush")

local function load_plugins(config)
	vim.pretty_print('loading plugins...')

	for index, plugin in pairs(config.plugins) do
		
		vim.pretty_print(plugin)

		if type(plugin) == 'string' then
			local plugin_path = 'wmbat-dark.plugins.' .. plugin

			vim.pretty_print(plugin_path)

			local local_plugin = require(plugin_path)
			
			vim.pretty_print(local_plugin)

			config.plugins[index] = local_plugin
		elseif type(plugin) == 'table' then
			vim.pretty_print('table path')

			config.plugins[index] = plugin
		end
	end

	local loaded_plugins = lush.merge(config.plugins)

	vim.pretty_print(loaded_plugins)

	return loaded_plugins
end

local function load_langs(config)
	vim.pretty_print('loading langs...')

	for index, lang in pairs(config.langs) do
		if type(lang) == 'string' then
			local local_lang = require('wmbat-dark.languages.' .. lang)

			vim.pretty_print(local_lang)

			config.langs[index] = local_lang
		elseif type(lang) == 'table' then
			config.langs[index] = lang
		end
	end
	local loaded_langs = lush.merge(config.langs)

	vim.pretty_print(loaded_langs)

	return loaded_langs
end

--[[ local function load_all(config)
	load_plugins(config)
	load_langs(config)
end ]]

return {load_plugins = load_plugins, load_langs = load_langs}
