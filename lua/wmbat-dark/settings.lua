local utils = require('wmbat-dark.utils')

local settings = {
	bold = true,
	italic = true,
	undercurl = true,
	underline = true,
	inverse = true,
	improved_strings = false,
	improved_warnings = false,
	invert_signs = false,
	invert_selection = true,
	invert_tabline = false,
	italicize_comments = true,
	italicize_strings = false,
	invert_intend_guides = false,
}

local styles = {
	italic = "italic",
	bold = "bold",
	underline = "underline",
	inverse = "inverse",
	undercurl = "undercurl",
	invert_signs = "",
	invert_selection = "inverse",
	invert_tabline = "",
	italic_comments = "italic",
	italic_strings = "NONE",
}

-- setting default values
for k, val in pairs(settings) do
	local key = "wmbat_dark_" .. k
	if vim.g[key] == nil then
		vim.g[key] = val
	end
end

-- styles check
if not utils.tobool(vim.g.wmbat_dark_bold) then
	styles.bold = "NONE"
end

if not utils.tobool(vim.g.wmbat_dark_underline) then
	styles.underline = "NONE"
end

if not utils.tobool(vim.g.wmbat_dark_italic) then
	styles.italic = "NONE"
end

if not utils.tobool(vim.g.wmbat_dark_inverse) then
	styles.inverse = "NONE"
end

if not utils.tobool(vim.g.wmbat_dark_inverse) then
	styles.inverse = "NONE"
end

if not utils.tobool(vim.g.wmbat_dark_undercurl) then
	styles.undercurl = "NONE"
end

if utils.tobool(vim.g.wmbat_dark_invert_signs) then
	styles.invert_signs = "inverse"
end

if not utils.tobool(vim.g.wmbat_dark_invert_selection) then
	styles.invert_selection = "NONE"
end

if utils.tobool(vim.g.wmbat_dark_invert_tabline) then
	styles.invert_tabline = "inverse"
end

if not utils.tobool(vim.g.wmbat_dark_italicize_comments) then
	styles.italic_comments = "NONE"
end

if utils.tobool(vim.g.wmbat_dark_italicize_strings) then
	styles.italic_strings = "italic"
end

return {settings = settings, styles = styles}
