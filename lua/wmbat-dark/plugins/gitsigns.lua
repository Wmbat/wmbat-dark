-- gitsigns highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

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
	}
end)
