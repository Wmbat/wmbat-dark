-- lsp highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
	return {
		LspReferenceText { gui = styles.bold },
		LspReferenceRead { gui = styles.bold },
		LspReferenceWrite { gui = styles.bold },
	}
end)

return group
