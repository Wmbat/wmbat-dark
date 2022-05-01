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

		LspDiagnosticsFloatingError { fg = colours.red },
		LspDiagnosticsFloatingWarn { fg = colours.yellow },
		LspDiagnosticsFloatingInfo { fg = colours.blue },
		LspDiagnosticsFloatingHint { fg = colours.green },

		LspDiagnosticsVirtualTextError { fg = colours.red },
		LspDiagnosticsVirtualTextWarn { fg = colours.yellow },
		LspDiagnosticsVirtualTextInfo { fg = colours.blue },
		LspDiagnosticsVirtualTextHint { fg = colours.green },

		LspDiagnosticsUnderlineError { fg = colours.red, gui = styles.undercurl },
		LspDiagnosticsUnderlineWarn { fg = colours.yellow, gui = styles.undercurl },
		LspDiagnosticsUnderlineInfo { fg = colours.blue, gui = styles.undercurl },
		LspDiagnosticsUnderlineHint { fg = colours.green, gui = styles.undercurl },

		LspDiagnosticsSignError { fg = colours.red },
		LspDiagnosticsSignWarn { fg = colours.yellow },
		LspDiagnosticsSignInfo { fg = colours.blue },
		LspDiagnosticsSignHint { fg = colours.green },

		LspReferenceText { gui = styles.bold },
		LspReferenceRead { gui = styles.bold },
		LspReferenceWrite { gui = styles.bold },
	}
end)

return group
