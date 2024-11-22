local lush = require("lush")
local base = require("wmbat-dark.base")

local M = {}
M = lush(function()
    return {
        csType { base.wmbat_dark_purple },
        csStorage { base.wmbat_dark_red },
        csRepeat { csType },
        csConditional { csType },
        csLabel { csType },
        csBraces { base.wmbat_dark_fg },
        csEndColon { base.wmbat_dark_fb },
        csLogicSymbols { base.wmbat_dark_purple },
        csParens { base.wmbat_dark_fg },
    }
end)

return M
