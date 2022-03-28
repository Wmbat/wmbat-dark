local Color, colors, Group, groups, styles = require("colorbuddy").setup()

vim.g.terminal_color_0 = '#2B2D3A'
vim.g.terminal_color_1 = '#ec7279'
vim.g.terminal_color_2 = '#a0c980'
vim.g.terminal_color_3 = '#deb974'
vim.g.terminal_color_4 = '#6cb6eb'
vim.g.terminal_color_5 = '#d38aea'
vim.g.terminal_color_6 = '#5dbbc1'
vim.g.terminal_color_7 = '#c5cdd9'
vim.g.terminal_color_8 = '#2B2D3A'
vim.g.terminal_color_9 = '#ec7279'
vim.g.terminal_color_10 = '#a0c980'
vim.g.terminal_color_11 = '#deb974'
vim.g.terminal_color_12 = '#6cb6eb'
vim.g.terminal_color_13 = '#d38aea'
vim.g.terminal_color_14 = '#5dbbc1'
vim.g.terminal_color_15 = '#c5cdd9'

-- Basic Colours
--
Color.new('foreground', '#c5cdd9')
Color.new('background', '#2B2D3A')
Color.new('background_1', '#333648')
Color.new('background_2', '#363a4e')
Color.new('background_3', '#393e53')
Color.new('background_4', '#3f445b')
Color.new('background_red', '#ec7279')
Color.new('background_green', '#a0c980')
Color.new('background_blue', '#6cb6eb')
Color.new('background_purple', '#d38aea')
Color.new('background_grey', '#7a819d')

Color.new('diff_red', '#55393d')
Color.new('diff_green', '#394634')
Color.new('diff_blue', '#354157')
Color.new('diff_yellow', '#4e432f')

Color.new('black', '#202023')
Color.new('red', '#ec7279')
Color.new('yellow', '#deb974')
Color.new('green', '#a0c980')
Color.new('cyan', '#5dbbc1')
Color.new('blue', '#6cb6eb')
Color.new('purple', '#d38aea')
Color.new('grey', '#7e8294')
Color.new('grey_dim', '#5c6071')

Group.new('Fg', colors.foreground, nil, styles.NONE)
Group.new('Red', colors.red, nil, styles.NONE)
Group.new('Yellow', colors.yellow, nil, styles.NONE)
Group.new('Green', colors.green, nil, styles.NONE)
Group.new('Cyan', colors.cyan, nil, styles.NONE)
Group.new('Blue', colors.blue, nil, styles.NONE)
Group.new('Purple', colors.purple, nil, styles.NONE)
Group.new('Grey', colors.grey, nil, styles.NONE)

Group.new('Normal', colors.foreground, colors.background, styles.NONE)
Group.new('Terminal', colors.foreground, colors.background, styles.NONE)
Group.new('EndOfBuffer', colors.background, colors.background, styles.NONE)
Group.new('Folded', colors.grey, colors.background, styles.NONE)
Group.new('ToolbarLine', colors.foreground, colors.background_2, styles.NONE)
Group.new('SignColumn', colors.foreground, nil, styles.NONE)
Group.new('FoldedColumn', colors.grey_dim, nil, styles.NONE)
Group.new('IncSearch', colors.background, colors.background_blue, styles.NONE)
Group.new('Search', colors.background, colors.background_green, styles.NONE)
Group.new('ColorColumn', nil, colors.background, styles.NONE)
Group.new('Conceal', colors.grey_dim, nil, styles.NONE)
Group.new('Cursor', nil, nil, styles.reverse)
Group.new('vCursor', nil, nil, styles.reverse)
Group.new('iCursor', nil, nil, styles.reverse)
Group.new('lCursor', nil, nil, styles.reverse)
Group.new('CursorIM', nil, nil, styles.reverse)

-- Group.new('CursorLine', nil, nil, styles.NONE) 
-- Group.new('CursorColumn', nil, nil, styles.NONE) 
Group.new('LineNr', colors.grey_dim, nil, styles.NONE)
-- Group.net('CursorLineNr', colors.grey, nil, styles.NONE)

-- UI
--
Group.new('DiffAdd', nil, colors.diff_green, styles.NONE)
Group.new('DiffChange', nil, colors.diff_blue, styles.NONE)
Group.new('DiffDelete', nil, colors.diff_red, styles.NONE)
Group.new('DiffText', colors.background, colors.blue, styles.NONE)
Group.new('Directory', colors.green, nil, styles.NONE)
Group.new('ErrorMsg', colors.red, nil, styles.bold + styles.underline)
Group.new('WarningMsg', colors.yellow, nil, styles.bold)
Group.new('ModeMsg', colors.foreground, nil, styles.bold)
Group.new('MoreMsg', colors.blue, nil, styles.bold)
Group.new('MatchParen', nil, colors.background_4, styles.NONE)
Group.new('NonText', colors.background_4, nil, styles.NONE)
Group.new('Whitespace', colors.background_4, nil, styles.NONE)
Group.new('SpecialKey', colors.background_4, nil, styles.NONE)
Group.new('Pmenu', colors.foreground, colors.background_2, styles.NONE)
Group.new('PmenuSbar', nil, colors.background_2, styles.NONE)

Group.new('PmenuSel', colors.background, colors.background_blue, styles.NONE)
Group.new('WildMenu', groups.PmenuSel, groups.PmenuSel, groups.PmenuSel)
Group.new('PmenuThumb', nil, colors.background_grey, styles.NONE)
Group.new('NormalFloat', colors.foreground, colors.background_2)
Group.new('Question', colors.yellow, nil, styles.NONE)
Group.new('SpellBad', colors.red, nil, styles.undercurl)
Group.new('SpellCap', colors.yellow, nil, styles.undercurl)
Group.new('SpellLocal', colors.blue, nil, styles.undercurl)
Group.new('SpellRare', colors.purple, nil, styles.undercurl)

Group.new('StatusLine', colors.foreground, colors.background_2, styles.NONE)
Group.new('StatusLineTerm', colors.foreground, colors.background_2, styles.NONE)
Group.new('StatusLineNC', colors.grey, colors.background_1, styles.NONE)
Group.new('StatusLineTermNC', colors.grey, colors.background_1, styles.NONE)
Group.new('TabLine', colors.foreground, colors.background_4, styles.NONE)
Group.new('TabLineFill', colors.grey, colors.background_1, styles.NONE)
Group.new('TabLineSel', colors.background, colors.background_purple, styles.NONE)
Group.new('VertSplit', colors.purple, nil, styles.NONE)
Group.new('Visual', nil, colors.background_3, styles.NONE)
Group.new('VisualNOS', nil, colors.background_3, styles.underline)
Group.new('QuickFixLine', colors.purple, nil, styles.bold)
Group.new('Debug', colors.yellow, nil, styles.NONE)
Group.new('debugPC', colors.background, colors.background_green, styles.NONE)
Group.new('debugBreakpoint', colors.background, colors.background_red, styles.NONE)
Group.new('ToolbarButton', colors.background, colors.background_purple, styles.NONE)

-- Syntax
--
Group.new('Type', colors.red, nil, styles.NONE)
Group.new('Structure', colors.red, nil, styles.NONE)
Group.new('StorageClass', colors.red, nil, styles.NONE)
Group.new('Identifier', colors.cyan, nil, styles.NONE)
Group.new('Constant', colors.yellow, nil, styles.NONE)
Group.new('PreProc', colors.purple, nil, styles.NONE)
Group.new('PreCondit', colors.purple, nil, styles.NONE)
Group.new('Include', colors.purple, nil, styles.NONE)
Group.new('Keyword', colors.purple, nil, styles.NONE)
Group.new('Define', colors.purple, nil, styles.NONE)
Group.new('Typedef', colors.purple, nil, styles.NONE)
Group.new('Exception', colors.purple, nil, styles.NONE)
Group.new('Conditional', colors.purple, nil, styles.NONE)
Group.new('Repeat', colors.purple, nil, styles.NONE)
Group.new('Statement', colors.purple, nil, styles.NONE)
Group.new('Macro', colors.yellow, nil, styles.NONE)
Group.new('Error', colors.red, nil, styles.NONE)
Group.new('Label', colors.yellow, nil, styles.NONE)
Group.new('Special', colors.yellow, nil, styles.NONE)
Group.new('SpecialChar', colors.yellow, nil, styles.NONE)
Group.new('Boolean', colors.green, nil, styles.NONE)
Group.new('String', colors.green, nil, styles.NONE)
Group.new('Character', colors.green, nil, styles.NONE)
Group.new('Number', colors.green, nil, styles.NONE)
Group.new('Float', colors.green, nil, styles.NONE)
Group.new('Operator', colors.purple, nil, styles.NONE)
Group.new('Title', colors.purple, nil, styles.bold)
Group.new('Tag', colors.yellow, nil, styles.NONE)
Group.new('Delimiter', colors.foreground, nil, styles.NONE)
Group.new('Comment', colors.grey, nil, styles.italic)
Group.new('SpecialComment', colors.grey, nil, styles.italic)
Group.new('Todo', colors.red, nil, styles.italic)

-- Predifined Highlight Groups
--
Group.new('RedItalic', colors.red, nil, styles.NONE)
Group.new('YellowItalic', colors.yellow, nil, styles.NONE)
Group.new('GreenItalic', colors.green, nil, styles.NONE)
Group.new('CyanItalic', colors.cyan, nil, styles.NONE)
Group.new('BlueItalic', colors.blue, nil, styles.NONE)
Group.new('PurpleItalic', colors.purple, nil, styles.NONE)

Group.new('RedSign', colors.red, nil, styles.NONE)
Group.new('YellowSign', colors.yellow, nil, styles.NONE)
Group.new('GreenSign', colors.green, nil, styles.NONE)
Group.new('CyanSign', colors.cyan, nil, styles.NONE)
Group.new('BlueSign', colors.blue, nil, styles.NONE)
Group.new('PurpleSign', colors.purple, nil, styles.NONE)

Group.new('ErrorText', colors.red, nil, styles.undercurl)
Group.new('WarningText', colors.yellow, nil, styles.undercurl)
Group.new('InfoText', colors.blue, nil, styles.undercurl)
Group.new('HintText', colors.green, nil, styles.undercurl)

Group.new('ErrorLine', nil, nil, styles.NONE)
Group.new('WarningLine', nil, nil, styles.NONE)
Group.new('InfoLine', nil, nil, styles.NONE)
Group.new('HintLine', nil, nil, styles.NONE)

Group.new('ErrorFloat', colors.red, nil, styles.NONE)
Group.new('WarningFloat', colors.yellow, nil, styles.NONE)
Group.new('InfoFloat', colors.blue, nil, styles.NONE)
Group.new('HintFloat', colors.green, nil, styles.NONE)

Group.new('VirtualTextError', colors.red, nil, styles.NONE)
Group.new('VirtualTextWarning', colors.yellow, nil, styles.NONE)
Group.new('VirtualTextInfo', colors.blue, nil, styles.NONE)
Group.new('VirtualTextHint', colors.green, nil, styles.NONE)

Group.new('CurrentWord', nil, nil, styles.bold)

Group.new('Substitute', colors.background, colors.yellow, styles.NONE)

Group.new('DiagnosticError', groups.ErrorText, groups.ErrorText, groups.ErrorText)
Group.new('DiagnosticWarn', groups.WarningText, groups.WarningText, groups.WarningText)
Group.new('DiagnosticInfo', groups.InfoText, groups.InfoText, groups.InfoText)
Group.new('DiagnosticHint', groups.HintText, groups.HintText, groups.HintText)

Group.new('DiagnosticFloatingError', groups.ErrorFloat, groups.ErrorFloat, groups.ErrorFloat)
Group.new('DiagnosticFloatingWarn', groups.WarningFloat, groups.WarningFloat, groups.WarningFloat)
Group.new('DiagnosticFloatingInfo', groups.InfoFloat, groups.InfoFloat, groups.InfoFloat)
Group.new('DiagnosticFloatingHint', groups.HintFloat, groups.HintFloat, groups.HintFloat)

Group.new('DiagnosticVirtualTextError', groups.ErrorText, groups.ErrorText, groups.ErrorText)
Group.new('DiagnosticVirtualTextWarn', groups.WarningText, groups.WarningText, groups.WarningText)
Group.new('DiagnosticVirtualTextInfo', groups.InfoText, groups.InfoText, groups.InfoText)
Group.new('DiagnosticVirtualTextHint', groups.HintText, groups.HintText, groups.HintText)

Group.new('DiagnosticUnderlineError', groups.ErrorText, groups.ErrorText, groups.ErrorText)
Group.new('DiagnosticUnderlineWarn', groups.WarningText, groups.WarningText, groups.WarningText)
Group.new('DiagnosticUnderlineInfo', groups.InfoText, groups.InfoText, groups.InfoText)
Group.new('DiagnosticUnderlineHint', groups.HintText, groups.HintText, groups.HintText)

Group.new('DiagnosticSignError', groups.RedSign, groups.RedSign, groups.RedSign)
Group.new('DiagnosticSignWarn', groups.YellowSign, groups.YellowSign, groups.YellowSign)
Group.new('DiagnosticSignInfo', groups.BlueSign, groups.BlueSign, groups.BlueSign)
Group.new('DiagnosticSignHint', groups.GreenSign, groups.GreenSign, groups.GreenSign)

Group.new('LspDiagnosticDefaultError', groups.ErrorText, groups.ErrorText, groups.ErrorText)
Group.new('LspDiagnosticDefaultWarn', groups.WarningText, groups.WarningText, groups.WarningText)
Group.new('LspDiagnosticDefaultInfo', groups.InfoText, groups.InfoText, groups.InfoText)
Group.new('LspDiagnosticDefaultHint', groups.HintText, groups.HintText, groups.HintText)

Group.new('LspDiagnosticFloatingError', groups.ErrorFloat, groups.ErrorFloat, groups.ErrorFloat)
Group.new('LspDiagnosticFloatingWarn', groups.WarningFloat, groups.WarningFloat, groups.WarningFloat)
Group.new('LspDiagnosticFloatingInfo', groups.InfoFloat, groups.InfoFloat, groups.InfoFloat)
Group.new('LspDiagnosticFloatingHint', groups.HintFloat, groups.HintFloat, groups.HintFloat)

Group.new('LspDiagnosticVirtualTextError', groups.ErrorText, groups.ErrorText, groups.ErrorText)
Group.new('LspDiagnosticVirtualTextWarn', groups.WarningText, groups.WarningText, groups.WarningText)
Group.new('LspDiagnosticVirtualTextInfo', groups.InfoText, groups.InfoText, groups.InfoText)
Group.new('LspDiagnosticVirtualTextHint', groups.HintText, groups.HintText, groups.HintText)

Group.new('LspDiagnosticUnderlineError', groups.ErrorText, groups.ErrorText, groups.ErrorText)
Group.new('LspDiagnosticUnderlineWarn', groups.WarningText, groups.WarningText, groups.WarningText)
Group.new('LspDiagnosticUnderlineInfo', groups.InfoText, groups.InfoText, groups.InfoText)
Group.new('LspDiagnosticUnderlineHint', groups.HintText, groups.HintText, groups.HintText)

Group.new('LspDiagnosticSignError', groups.RedSign, groups.RedSign, groups.RedSign)
Group.new('LspDiagnosticSignWarn', groups.YellowSign, groups.YellowSign, groups.YellowSign)
Group.new('LspDiagnosticSignInfo', groups.BlueSign, groups.BlueSign, groups.BlueSign)
Group.new('LspDiagnosticSignHint', groups.GreenSign, groups.GreenSign, groups.GreenSign)

Group.new('LspReferenceText', groups.CurrentWord, groups.CurrentWord, groups.CurrentWord)
Group.new('LspReferenceRead', groups.CurrentWord, groups.CurrentWord, groups.CurrentWord)
Group.new('LspReferenceWrite', groups.CurrentWord, groups.CurrentWord, groups.CurrentWord)

Group.new('TermCursor', groups.Cursor, groups.Cursor, groups.Cursor)

Group.new('healthError', groups.red, groups.red, groups.red)
Group.new('healthWarning', groups.yellow, groups.yellow, groups.yellow)
Group.new('healthSuccess', groups.green, groups.green, groups.green)

-- nvim-treesiter/nvim-treesitter
--
Group.new('TSStrong', nil, nil, styles.bold)
Group.new('TSEmphasis', nil, nil, styles.italic)
Group.new('TSUnderline', nil, nil, styles.underline)
Group.new('TSNote', colors.background, colors.blue, styles.bold)
Group.new('TSWarning', colors.background, colors.yellow, styles.bold)
Group.new('TSDanger', colors.background, colors.red, styles.bold)
Group.new('TSAnnotation', groups.Purple, groups.Purple, groups.Purple)
Group.new('TSAttribute', groups.Yellow, groups.Yellow, groups.Yellow)
Group.new('TSBoolean', groups.Green, groups.Green, groups.Green)
Group.new('TSCharacter', groups.Green, groups.Green, groups.Green)
Group.new('TSComment', groups.Comment, groups.Comment, groups.Comment)
Group.new('TSConditional', groups.Purple, groups.Purple, groups.Purple)
Group.new('TSConstBuiltin', groups.CyanItalic, groups.CyanItalic, groups.CyanItalic)
Group.new('TSConstMacro', groups.CyanItalic, groups.CyanItalic, groups.CyanItalic)
Group.new('TSConstant', groups.RedItalic, groups.RedItalic, groups.RedItalic)
Group.new('TSConstructor', groups.Blue, groups.Blue, groups.Blue)
Group.new('TSException', groups.Purple, groups.Purple, groups.Purple)
Group.new('TSField', groups.Blue, groups.Blue, groups.Blue)
Group.new('TSFloat', groups.Green, groups.Green, groups.Green)
Group.new('TSFuncBuiltin', groups.Blue, groups.Blue, groups.Blue)
Group.new('TSFuncMacro', groups.Blue, groups.Blue, groups.Blue)
Group.new('TSFunction', groups.Blue, groups.Blue, groups.Blue)
Group.new('TSInclude', groups.Purple, groups.Purple, groups.Purple)
Group.new('TSKeyword', groups.Purple, groups.Purple, groups.Purple)
Group.new('TSKeywordFunction', groups.Purple, groups.Purple, groups.Purple)
Group.new('TSKeywordOperator', groups.Purple, groups.Purple, groups.Purple)
Group.new('TSLabel', groups.Purple, groups.Purple, groups.Purple) 
Group.new('TSMethod', groups.Blue, groups.Blue, groups.Blue)
Group.new('TSNamespace', groups.Yellow, groups.Yellow, groups.Yellow)
Group.new('TSNone', groups.Fg, groups.Fg, groups.Fg)
Group.new('TSNumber', groups.Green, groups.Green, groups.Green)
Group.new('TSOperator', groups.Purple, groups.Purple, groups.Purple)
Group.new('TSParameter', groups.RedItalic, groups.RedItalic, groups.RedItalic)
Group.new('TSParameterReference', groups.RedItalic, groups.RedItalic, groups.RedItalic)
Group.new('TSProperty', groups.RedItalic, groups.RedItalic, groups.RedItalic)
Group.new('TSPunctBracket', groups.Grey, groups.Grey, groups.Grey)
Group.new('TSPunctDelimiter', groups.Grey, groups.Grey, groups.Grey)
Group.new('TSPunctSpecial', groups.Yellow, groups.Yellow, groups.Yellow)
Group.new('TSRepeat', groups.Purple, groups.Purple, groups.Purple)
Group.new('TSString', groups.Green, groups.Green, groups.Green)
Group.new('TSStringEscape', groups.Yellow, groups.Yellow, groups.Yellow)
Group.new('TSStringRegex', groups.Yellow, groups.Yellow, groups.Yellow)
Group.new('TSStructure', groups.CyanItalic, groups.CyanItalic, groups.CyanItalic)
Group.new('TSSymbol', groups.Red, groups.Red, groups.Red)
Group.new('TSTag', groups.RedItalic, groups.RedItalic, groups.RedItalic)
Group.new('TSTagDelimiter', groups.Purple, groups.Purple, groups.Purple)
Group.new('TSText', groups.Green, groups.Green, groups.Green)
Group.new('TSStrike', groups.Grey, groups.Grey, groups.Grey)
Group.new('TSMath', groups.Green, groups.Green, groups.Green)
Group.new('TSType', groups.Yellow, groups.Yellow, groups.Yellow)
Group.new('TSTypeBuiltin', groups.Yellow, groups.Yellow, groups.Yellow)
-- Group.new('TSURI markdownUrl
Group.new('TSVariable', groups.RedItalic, groups.RedItalic, groups.RedItalic)
Group.new('TSVariableBuiltin', groups.CyanItalic, groups.CyanItalic, groups.CyanItalic)

-- RRethy/vim-illuminate
--
Group.new('illuminatedWork', nil, nil, styles.bold)

-- nvim-telescope/telescope.nvim
--
Group.new('TelescopeMatching', colors.green, nil, styles.bold)
Group.new('TelescopeBorder', groups.Purple, groups.Purple, groups.Purple)
Group.new('TelescopePromptPrefix', groups.Blue, groups.Blue, groups.Blue)
Group.new('TelescopeSelection', groups.DiffAdd, groups.DiffAdd, groups.DiffAdd)

-- lewis6991/gitsigns.nvim-tree
--
Group.new('GitSignsAdd', groups.GreenSign, groups.GreenSign, groups.GreenSign)
Group.new('GitSignsChange', groups.BlueSign, groups.BlueSign, groups.BlueSign)
Group.new('GitSignsDelete', groups.RedSign, groups.RedSign, groups.RedSign)
Group.new('GitSignsAddNr', groups.Green, groups.Green, groups.Green)
Group.new('GitSignsChangeNr', groups.Blue, groups.Blue, groups.Blue)
Group.new('GitSignsDeleteNr', groups.Red, groups.Red, groups.Red)
Group.new('GitSignsAddLn', groups.DiffAdd, groups.DiffAdd, groups.DiffAdd)
Group.new('GitSignsChangeLn', groups.DiffChange, groups.DiffChange, groups.DiffChange)
Group.new('GitSignsDeleteLn', groups.DiffDelete, groups.DiffDelete, groups.DiffDelete)
Group.new('GitSignsCurrentLineBlame', groups.Grey, groups.Grey, groups.Grey)

-- p00f/nvim-ts-rainbow

-- rcarriga/nvim-dap-ui

-- kyazdani42/nvim-tree.lua

-- mhinz/vim-startify
