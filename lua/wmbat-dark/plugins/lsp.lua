-- lsp highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
	return {
		LspDiagnosticsDefaultError { fg = colours.red }, 
		LspDiagnosticsDefaultWarn { fg = colours.yellow }, 
		LspDiagnosticsDefaultInfo { fg = colours.blue },
		LspDiagnosticsDefaultHint { fg = colours.green },

		LspDiagnosticsFloatingError { LspDiagnosticsDefaultError },
		LspDiagnosticsFloatingWarn { LspDiagnosticsDefaultWarn },
		LspDiagnosticsFloatingInfo { LspDiagnosticsDefaultInfo },
		LspDiagnosticsFloatingHint { LspDiagnosticsDefaultHint },

		LspDiagnosticsVirtualTextError { LspDiagnosticsDefaultError },
		LspDiagnosticsVirtualTextWarn { LspDiagnosticsDefaultWarn },
		LspDiagnosticsVirtualTextInfo { LspDiagnosticsDefaultInfo },
		LspDiagnosticsVirtualTextHint { LspDiagnosticsDefaultHint },

		LspDiagnosticsUnderlineError { fg = colours.red, gui = styles.undercurl },
		LspDiagnosticsUnderlineWarn { fg = colours.yellow, gui = styles.undercurl },
		LspDiagnosticsUnderlineInfo { fg = colours.blue, gui = styles.undercurl },
		LspDiagnosticsUnderlineHint { fg = colours.green, gui = styles.undercurl },

		LspDiagnosticsSignError { LspDiagnosticsDefaultError },
		LspDiagnosticsSignWarn { LspDiagnosticsDefaultWarn },
		LspDiagnosticsSignInfo { LspDiagnosticsDefaultInfo },
		LspDiagnosticsSignHint { LspDiagnosticsDefaultHint },

		LspReferenceText { gui = styles.bold },
		LspReferenceRead { gui = styles.bold },
		LspReferenceWrite { gui = styles.bold },
	}
end)

return group
