-- lsp highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
	return {
		LspDiagnosticsDefaultError { fg = colours.red }, 
		LspDiagnosticsDefaultWarning { fg = colours.yellow }, 
		LspDiagnosticsDefaultInformation { fg = colours.blue },
		LspDiagnosticsDefaultHint { fg = colours.green },

		LspDiagnosticsUnderlineError { fg = colours.red, gui = styles.undercurl },
		LspDiagnosticsUnderlineWarning { fg = colours.yellow, gui = styles.undercurl },
		LspDiagnosticsUnderlineInformation { fg = colours.blue, gui = styles.undercurl },
		LspDiagnosticsUnderlineHint { fg = colours.green, gui = styles.undercurl },

		LspReferenceText { gui = styles.bold },
		LspReferenceRead { gui = styles.bold },
		LspReferenceWrite { gui = styles.bold },
	}
end)

return group
