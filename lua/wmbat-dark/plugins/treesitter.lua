-- treesitter highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colors = require("wmbat-dark.colors")

local M = {}

M = lush(function()
    return {
        TSNone {},
        TSNote { fg = colors.black_0, bg = colors.blue },
        TSWarning { fg = colors.black_0, bg = colors.yellow },
        TSDanger { fg = colors.black_0, bg = colors.red },
        TSAnnotation { fg = colors.purple },
        TSAttribute { fg = colors.yellow },
        TSBoolean { fg = colors.green },
        TSCharacter { fg = colors.green },
        TSComment { fg = colors.grey_0 },
        TSConditional { fg = colors.purple },
        TSConstBuiltin { fg = colors.cyan, gui = styles.italic },
        TSConstMacro { fg = colors.cyan, gui = styles.italic },
        TSConstant { fg = colors.red, gui = styles.italic },
        TSConstructor { fg = colors.blue },
        TSException { fg = colors.purple },
        TSField { fg = colors.blue },
        TSFloat { fg = colors.yellow },
        TSNumber { fg = colors.yellow },
        TSFuncBuiltin { fg = colors.blue },
        TSFuncMacro { fg = colors.blue },
        TSFunction { fg = colors.blue },
        TSKeyword { fg = colors.purple },
        TSKeywordFunction { fg = colors.purple },
        TSKeywordOperator { fg = colors.purple },
        TSLabel { fg = colors.purple },
        TSMethod { fg = colors.blue },
        TSNamespace { fg = colors.yellow },
        TSOperator { fg = colors.purple },
        TSParameter { fg = colors.red, gui = styles.italic },
        TSParameterReference { fg = colors.red, gui = styles.italic },
        TSProperty { fg = colors.red, gui = styles.italic },
        TSPunctBracket { fg = colors.grey_0 },
        TSPunctDelimiter { fg = colors.grey_0 },
        TSPunctSpecial { fg = colors.yellow },
        TSRepeat { fg = colors.purple },
        TSString { fg = colors.green },
        TSStringEscape { fg = colors.yellow },
        TSStringRegex { fg = colors.yellow },
        TSStructure { fg = colors.cyan, gui = styles.italic },
        TSSymbol { fg = colors.red },
        TSTag { fg = colors.red, gui = styles.italic },
        TSTagDelimiter { fg = colors.purple },
        TSText { fg = colors.green },
        TSStrike { fg = colour.grey_0 },
        TSMath { fg = colors.green },
        TSType { fg = colors.yellow },
        TSTypeBuiltin { fg = colors.yelloww },
        TSURI { fg = colors.green, gui = styles.underline },
        TSVariable { fg = colors.red },
        TSVariableBuiltin { fg = colors.cyan, gui = styles.italic },
        TSStrong { gui = styles.bold },
        TSEmphasis { gui = styles.italic },
        TSUnderline { gui = styles.underline },
    }
end)

return M
