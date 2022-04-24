local lush = require("lush")
local colours = require("wmbat-dark.colours")
local styles = require("wmbat-dark.settings").styles
local utils = require("wmbat-dark.utils")

local fg = colours.white

local bg_0 = colours.black_0
local bg_1 = colours.black_1
local bg_2 = colours.black_2
local bg_3 = colours.black_3
local bg_4 = colours.black_4

local red = colours.red
local green = colours.green
local blue = colours.blue
local yellow = colours.yellow
local cyan = colours.cyan
local purple = colours.purple
local orange = colours.orange

local grey_0 = colours.grey_0
local grey_1 = colours.grey_1
local grey_2 = colours.grey_2

vim.o.background = 'dark'

vim.g.colors_name = "wmbat-dark"

local table_concat = table.concat

local base_group = lush(function()
	return {
		wmbat_dark_fg { fg = fg },

		wmbat_dark_grey_0 { fg = grey_0 },
		wmbat_dark_grey_1 { fg = grey_1 },
		wmbat_dark_grey_2 { fg = grey_2 },

		wmbat_dark_red { fg = red },
		wmbat_dark_green { fg = green },
		wmbat_dark_blue { fg = blue },
		wmbat_dark_yellow { fg = yellow },
		wmbat_dark_cyan { fg = cyan },
		wmbat_dark_purple { fg = purple },
		wmbat_dark_orange { fg = orange },

		wmbat_dark_red_underline { gui = styles.undercurl, sp = red },
		wmbat_dark_green_underline { gui = styles.undercurl, sp = green },
		wmbat_dark_blue_underline { gui = styles.undercurl, sp = blue },
		wmbat_dark_yellow_underline { gui = styles.undercurl, sp = yellow },
		wmbat_dark_cyan_underline { gui = styles.undercurl, sp = cyan },
		wmbat_dark_purple_underline { gui = styles.undercurl, sp = purple },
		wmbat_dark_orange_underline { gui = styles.undercurl, sp = orange },

		wmbat_dark_error { fg = red },
		wmbat_dark_warning { fg = orange },

		Whitespace { fg = grey_1 },
		ColorCulumn { },
		Conceal { fg = grey_1 },
		Cursor { bg = purple },
		lCursor { Cursor },
		iCursor { Cursor },
		vCursor { Cursor },
		CursorIM { Cursor },
		CursorLine { },
		CursorColumn { },
		Directory { wmbat_dark_green },
		DiffAdd { bg = green },
		DiffChange { bg = blue },
		DiffDelete { bg = red },
		DiffText { fg = bg_0, bg = blue },
		ErrorMsg { fg = red, gui = table_concat({ styles.bold, styles.underline }, ',') },
		VertSplit { fg = purple },
		Folded { fg = grey_0 },
		SignColumn { fg = fg },
		IncSearch { fg = bg_0, bg = blue },
		LineNr { fg = grey_1 },
		CursorLineNr { fg = grey_0 },
		NonText { fg = bg_2 },
		Normal { fg = fg, bg = bg_0 },
		NormalFloat { fg = fg, bg = bg_2 },
		Pmenu { fg = fg, bg = bg_2 },
		PmenuSbar { bg = bg_2 },
		PmenuSel { fg = bg, bg = blue },
		PmenuThumb { bg = grey_0 },
	}
end)

return base_group
