-- vim-startify highlights
local lush = require("lush")
local colours = require("wmbat-dark.colours")

local group = lush(function()
    return {
        StartifyBracket { fg = colours.Grey },
        StartifyFile { fg = colours.Fg },
        StartifyNumber { fg = colours.Red },
        StartifyPath { fg = colours.Green },
        StartifySlash { fg = colours.Green },
        StartifySection { fg = colours.Blue },
        StartifyHeader { fg = colours.Purple },
        StartifySpecial { fg = colours.Grey },
    }
end)

return group
