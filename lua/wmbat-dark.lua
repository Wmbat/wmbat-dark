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

Color.new('foreground', '#c5cdd9')
Color.new('background', '#2B2D3A')
Color.new('background_red', '#ec7279')
Color.new('background_green', '#a0c980')
Color.new('background_blue', '#6cb6eb')
Color.new('background_purple', '#d38aea')

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

Group.new('CurrentWord', nil, nil, styles.bold)

Group.new('Normal', colors.foreground, colors.background, styles.NONE)
Group.new('Terminal', colors.foreground, colors.background, styles.NONE)
Group.new('EndOfBuffer', colors.background, colors.background, styles.NONE)
Group.new('Folded', colors.grey, colors.background, styles.NONE)
Group.new('ToolbarLine', colors.foreground, colors.background, styles.NONE)
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

Group.new('CursorLine', nil, nil, styles.NONE) 
Group.new('CursorColumn', nil, nil, styles.NONE) 
Group.new('LineNr', colors.grey_dim, nil, styles.NONE)
Group.net('CursorLineNr', colors.grey, nil, styles.NONE)

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
Group.new('Number', colors.yellow, nil, styles.NONE)
Group.new('Float', colors.yellow, nil, styles.NONE)
Group.new('Operator', colors.purple, nil, styles.NONE)
Group.new('Title', colors.purple, nil, styles.bold)
Group.new('Tag', colors.yellow, nil, styles.NONE)
Group.new('Delimiter', colors.foreground, nil, styles.NONE)
Group.new('Comment', colors.green, nil, styles.italic)
Group.new('SpecialComment', colors.green, nil, styles.italic)
Group.new('Todo', colors.red, nil, styles.italic)

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

-- RRethy/vim-illuminate
Group.new('illuminatedWork', nil, nil, styles.bold)

-- nvim-telescope/telescope.nvim

-- lewis6991/gitsigns.nvim

-- p00f/nvim-ts-rainbow

-- rcarriga/nvim-dap-ui

-- kyazdani42/nvim-tree.lua

-- mhinz/vim-startify
