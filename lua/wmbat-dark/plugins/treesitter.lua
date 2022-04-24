-- treesitter highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local M = {}

vim.pretty_print('treesitter plugin colours')
vim.pretty_print(lush)
vim.pretty_print(table_concat)

M = lush(function()
	return {
		TSNone {},
		TSError { wmbat_dark_error },
		TSStrong { gui = styles.bold },
		TSEmphasis { gui = styles.italic},
		TSUnderline { gui = styles.underline },
	}
end)

vim.pretty_print(M)

return M
