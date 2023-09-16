-- language specific higlights
local lush = require("lush")
local base = require("wmbat-dark.base")

local M = {}

M = lush(function()
    return {
        cOperator { base.wmbat_dark_purple },
        cppOperator { base.wmbat_dark_purple },
        cStructure { base.wmbat_dark_cyan },
    }
end)

return M
