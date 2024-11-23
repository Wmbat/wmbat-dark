-- Utility function to load user config

local lush = require("lush")

local function load_plugins(config)
    for index, plugin in pairs(config.plugins) do
        if type(plugin) == 'string' then
            local local_plugin = require('wmbat-dark.plugins.' .. plugin)

            vim.print(local_plugin)
            config.plugins[index] = local_plugin
        elseif type(plugin) == 'table' then
            config.plugins[index] = plugin
        end
    end

    local loaded_plugins = lush.merge(config.plugins)
    return loaded_plugins
end

local function load_langs(config)
    for index, lang in pairs(config.langs) do
        if type(lang) == 'string' then
            local local_lang = require('wmbat-dark.languages.' .. lang)
            config.langs[index] = local_lang
        elseif type(lang) == 'table' then
            config.langs[index] = lang
        end
    end

    local loaded_langs = lush.merge(config.langs)
    return loaded_langs
end

--[[ local function load_all(config)
	load_plugins(config)
	load_langs(config)
end ]]

return { load_plugins = load_plugins, load_langs = load_langs }
