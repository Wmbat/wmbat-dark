-- gitsigns highlights
--
local lush = require("lush")
local colours = require("wmbat-dark.colours")

local group = lush(function()
    return {
        GitSignsAdd { fg = colours.green },
        GitSignsChange { fg = colours.blue },
        GitSignsDelete { fg = colours.red },
        GitSignsAddNr { fg = colours.green },
        GitSignsChangeNr { fg = colours.blue },
        GitSignsDeleteNr { fg = colours.red },
        GitSignsAddLn { bg = colours.dark_green },
        GitSignsChangeLn { bg = colours.dark_blue },
        GitSignsDeleteLn { bg = colours.dark_red },
        GitSignsCurrentLineBlame { fg = colours.grey_0 },
        GitSignsAddPreview { bg = colours.dark_green },
        GitSignsDeletePreview { bg = colours.dark_red },
    }
end)

return group
