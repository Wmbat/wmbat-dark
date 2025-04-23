-- diffview highlights
--

local lush = require("lush")
local colours = require("wmbat-dark.colours")

local group = lush(function()
    return {
        DiffviewDiffAdd { bg = colours.dark_green },
        DiffviewDiffChange { bg = colours.dark_blue },
        DiffviewDiffDelete { bg = colours.dark_red }
    }
end)

return group
