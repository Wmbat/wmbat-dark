-- gitsigns highlights
local lush = require('lush')
local base = require('wmbat-dark.base')

local M = {}

M = lush(function()
    return {
--        GitSignsAdd { fg = base.green },
--        GitSignsChange { fg = base.blue },
--        GitSignsDelete { fg = base.red },
--        GitSignsAddNr { fg = base.green },
--        GitSignsChangeNr { fg = base.blue },
--        GitSignsDeleteNr { fg = base.red },
--        GitSignsAddLn { bg = base.dark_green },
--        GitSignsChangeLn { bg = base.dark_blue },
--        GitSignsDeleteLn { bg = base.dark_red },
--        GitSignsCurrentLineBlame { fg = base.grey_0 },
    }
end)

return M
