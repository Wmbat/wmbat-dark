local lush = require('lush')
local base = require("wmbat-dark.base")
local loader = require("wmbat-dark.utils.loader")
local config_module = require("wmbat-dark.config")

---comment
---@param user_config { langs: { }, plugins: { } }
local function setup(user_config)
    if user_config then
        config_module.apply_config(user_config)
    end

    local load_plugins = loader.load_plugins(config_module.config)
    local load_langs = loader.load_langs(config_module.config)
    return lush.merge({ base, load_plugins, load_langs })
end

return {setup = setup}
-- 
-- 
-- local colours = require("wmbat-dark.colours")
-- local styles = require("wmbat-dark.settings").styles
-- local table_concat = table.concat
-- local hsl = lush.hsl
-- 
-- local fg = colours.white
-- 
-- local bg_0 = colours.black_0
-- local bg_1 = colours.black_1
-- local bg_2 = colours.black_2
-- local bg_3 = colours.black_3
-- local bg_4 = colours.black_4
-- 
-- local red = colours.red
-- local dark_red = colours.dark_red
-- local green = colours.green
-- local blue = colours.blue
-- local dark_blue = colours.dark_blue
-- local yellow = colours.yellow
-- local dark_yellow = colours.dark_yellow
-- local cyan = colours.cyan
-- local purple = colours.purple
-- local dark_purple = colours.dark_purple
-- local orange = colours.orange
-- local pink = colours.pink
-- 
-- local grey_0 = colours.grey_0
-- local grey_1 = colours.grey_1
-- local grey_2 = colours.grey_2
-- 
-- -- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- -- support an annotation like the following. Consult your server documentation.
-- -- @diagnostic disable: undefined-global
-- local theme = lush(function(injected_functions)
--     local sym = injected_functions.sym
--     return {
--     }
-- end)
-- 
-- -- Return our parsed theme for extension or use elsewhere.
-- return theme
-- 
-- -- vi:nowrap
