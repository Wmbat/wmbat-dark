-- telescope highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
    return {
        TelescopeMatching { fg = colours.green, gui = styles.bold },
        TelescopeBorder { fg = colours.purple },
        TelescopePromptPrefix { fg = colours.blue },
        TelescopeSelection { bg = colours.dark_green },
    }
end)

return group
