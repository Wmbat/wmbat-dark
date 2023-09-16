-- telescope highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles

local group = lush(function()
    return {
        TelescopeMatching { fg = base.green, gui = styles.bold },
        TelescopeBorder { fg = base.purple },
        TelescopePromptPrefix { fg = base.blue },
        TelescopeSelection { bg = base.dark_green },
    }
end)

return group
