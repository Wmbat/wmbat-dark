-- nvim-ts-rainbow highlights
local lush = require("lush")
local base = require("wmbat-dark.base")

local M = {}

M = lush(function()
    return {
        rainbowcol1 { fg = base.red },
        rainbowcol2 { fg = base.yellow },
        rainbowcol3 { fg = base.green },
        rainbowcol4 { fg = base.cyan },
        rainbowcol5 { fg = base.blue },
        rainbowcol6 { fg = base.purple },
        rainbowcol7 { fg = base.orange },
    }
end)

return M
