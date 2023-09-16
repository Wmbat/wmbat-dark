-- vim-startify highlights
local lush = require("lush")
local base = require("wmbat-dark.base")

local group = lush(function()
    return {
        StartifyBracket { fg = base.grey_0 },
        StartifyFile { fg = base.white },
        StartifyNumber { fg = base.red },
        StartifyPath { fg = base.green },
        StartifySlash { fg = base.green },
        StartifySection { fg = base.blue },
        StartifyHeader { fg = base.purple },
        StartifySpecial { fg = base.grey_0 },
    }
end)

return group
