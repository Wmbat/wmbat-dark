-- treesitter highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
	return {
		TSNone {},
		TSNote { fg = colours.black_0, bg = colours.blue },
		TSWarning { fg = colours.black_0, bg = colours.orange },
		TSDanger { fg = colours.black_0, bg = colours.red },
		TSAnnotation { fg = colours.purple },
		TSAttribute { fg = colours.yellow },
		TSBoolean { fg = colours.green },
		TSCharacter { fg = colours.green },
		TSComment { fg = colours.dark_green },
		TSConditional { fg = colours.purple },
		TSConstBuiltin { fg = colours.cyan, gui = styles.italic },
		TSConstMacro { fg = colours.cyan, gui = styles.italic },
		TSConstant { fg = colours.red, gui = styles.italic },
		TSConstructor { fg = colours.blue },
		TSException { fg = colours.purple },
		TSField { fg = colours.blue },
		TSFloat { fg = colours.yellow },
		TSNumber { fg = colours.yellow },
		TSFuncBuiltin { fg = colours.blue },
		TSFuncMacro { fg = colours.blue },
		TSFunction { fg = colours.blue },
		TSKeyword { fg = colours.purple },
		TSKeywordFunction { fg = colours.purple },
		TSKeywordOperator { fg = colours.purple },
		TSLabel { fg = colours.purple },
		TSMethod { fg = colours.blue },
		TSNamespace { fg = colours.yellow },
		TSOperator { fg = colours.purple },
		TSParameter { fg = colours.red, gui = styles.italic },
		TSParameterReference { fg = colours.red, gui = styles.italic },
		TSProperty { fg = colours.red, gui = styles.italic },
		TSPunctBracket { fg = colours.grey_0 },
		TSPunctDelimiter { fg = colours.grey_0 },
		TSPunctSpecial { fg = colours.yellow },
		TSRepeat { fg = colours.purple },
		TSString { fg = colours.green },
		TSStringEscape { fg = colours.yellow },
		TSStringRegex { fg = colours.yellow },
		TSStructure { fg = colours.cyan, gui = styles.italic },
		TSSymbol { fg = colours.red },
		TSTag { fg = colours.red, gui = styles.italic },
		TSTagDelimiter { fg = colours.purple },
		TSText { fg = colours.green },
		TSStrike { fg = colour.grey_0 },
		TSMath { fg = colours.green },
		TSType { fg = colours.yellow },
		TSTypeBuiltin { fg = colours.yelloww },
		TSURI { fg = colours.green, gui = styles.underline },
		TSVariable { fg = colours.red },
		TSVariableBuiltin { fg = colours.cyan, gui = styles.italic },
		TSStrong { gui = styles.bold },
		TSEmphasis { gui = styles.italic},
		TSUnderline { gui = styles.underline },
	}
end)

return group
