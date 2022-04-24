-- nvim-ts-rainbow highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
	return {
		rainbowcol1 { fg = colours.red },
		rainbowcol2 { fg = colours.yellow },
		rainbowcol3 { fg = colours.green },
		rainbowcol4 { fg = colours.cyan },
		rainbowcol5 { fg = colours.blue },
		rainbowcol6 { fg = colours.purple },
		rainbowcol7 { fg = colours.orange }
	}
end)

return group
