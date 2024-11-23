-- Aerial highlights
--
local lush = require("lush")
local colours = require("wmbat-dark.colours")

local group = lush(function()
    return {
        AerialFunctionIcon { fg = colours.purple },
        AerialLine { fg = colours.red, bg = colours.black_2 },
        AerialLineNC { fg = colours.red, bg = colours.black_2 },
    }
end)

return group
