-- lsp highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
	return {
		DiagnosticError { fg = colours.red }, 
		DiagnosticWarn { fg = colours.yellow }, 
		DiagnosticInfo { fg = colours.blue },
		DiagnosticHint { fg = colours.green },

		DiagnosticFloatingError { DiagnosticError }, 
		DiagnosticFloatingWarn { DiagnosticWarn }, 
		DiagnosticFloatingInfo { DiagnosticInfo },
		DiagnosticFloatingHint { DiagnosticHint },

		DiagnosticVirtualError { fg = colours.red }, 
		DiagnosticVirtualWarn { fg = colours.yellow }, 
		DiagnosticVirtualInfo { fg = colours.blue },
		DiagnosticVirtualHint { fg = colours.green },

		DiagnosticUnderlineError { fg = colours.red, gui = styles.undercurl },
		DiagnosticUnderlineWarn { fg = colours.yellow, gui = styles.undercurl },
		DiagnosticUnderlineInfo { fg = colours.blue, gui = styles.undercurl },
		DiagnosticUnderlineHint { fg = colours.green, gui = styles.undercurl },

		DiagnosticSignError { fg = colours.red }, 
		DiagnosticSignWarn { fg = colours.yellow }, 
		DiagnosticSignInfo { fg = colours.blue },
		DiagnosticSignHint { fg = colours.green },

		LspDiagnosticsDefaultError { fg = colours.red }, 
		LspDiagnosticsDefaultWarning { fg = colours.yellow }, 
		LspDiagnosticsDefaultInformation { fg = colours.blue },
		LspDiagnosticsDefaultHint { fg = colours.green },

		LspDiagnosticsFloatingError { fg = colours.red }, 
		LspDiagnosticsFloatingWarning { fg = colours.yellow }, 
		LspDiagnosticsFloatingInformation { fg = colours.blue },
		LspDiagnosticsFloatingHint { fg = colours.green },

		LspDiagnosticsVirtualError { fg = colours.red }, 
		LspDiagnosticsVirtualWarning { fg = colours.yellow }, 
		LspDiagnosticsVirtualInformation { fg = colours.blue },
		LspDiagnosticsVirtualHint { fg = colours.green },

		LspDiagnosticsUnderlineError { fg = colours.red, gui = styles.undercurl },
		LspDiagnosticsUnderlineWarning { fg = colours.yellow, gui = styles.undercurl },
		LspDiagnosticsUnderlineInformation { fg = colours.blue, gui = styles.undercurl },
		LspDiagnosticsUnderlineHint { fg = colours.green, gui = styles.undercurl },

		LspDiagnosticsSignError { fg = colours.red }, 
		LspDiagnosticsSignWarning { fg = colours.yellow }, 
		LspDiagnosticsSignInformation { fg = colours.blue },
		LspDiagnosticsSignHint { fg = colours.green },

		LspReferenceText { gui = styles.bold },
		LspReferenceRead { gui = styles.bold },
		LspReferenceWrite { gui = styles.bold },
	}
end)

return group
