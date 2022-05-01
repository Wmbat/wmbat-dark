-- lsp highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
	return {
		LspDiagnosticDefaultError { fg = colours.red }, 
		LspDiagnosticDefaultWarn { fg = colours.orange }, 
		LspDiagnosticDefaultInfo { fg = colours.blue },
		LspDiagnosticDefaultHint { fg = colours.green },

		LspDiagnosticFloatingError { LspDiagnosticDefaultError },
		LspDiagnosticFloatingWarn { LspDiagnosticDefaultWarn },
		LspDiagnosticFloatingInfo { LspDiagnosticDefaultInfo },
		LspDiagnosticFloatingHint { LspDiagnosticDefaultHint },

		LspDiagnosticVirtualTextError { LspDiagnosticDefaultError },
		LspDiagnosticVirtualTextWarn { LspDiagnosticDefaultWarn },
		LspDiagnosticVirtualTextInfo { LspDiagnosticDefaultInfo },
		LspDiagnosticVirtualTextHint { LspDiagnosticDefaultHint },

		LspDiagnosticUnderlineError { fg = colours.red, gui = styles.undercurl },
		LspDiagnosticUnderlineWarn { fg = colours.orange, gui = styles.undercurl },
		LspDiagnosticUnderlineInfo { fg = colours.blue, gui = styles.undercurl },
		LspDiagnosticUnderlineHint { fg = colours.green, gui = styles.undercurl },

		LspDiagnosticSignError { LspDiagnosticDefaultError },
		LspDiagnosticSignWarn { LspDiagnosticDefaultWarn },
		LspDiagnosticSignInfo { LspDiagnosticDefaultInfo },
		LspDiagnosticSignHint { LspDiagnosticDefaultHint },

		LspReferenceText { gui = styles.bold },
		LspReferenceRead { gui = styles.bold },
		LspReferenceWrite { gui = styles.bold },
	}
end)

return group
