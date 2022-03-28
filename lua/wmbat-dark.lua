local Color, colors, Group, groups, styles = require("colorbuddy").setup()

vim.g.colors_name='wmbat-dark'

-- Basic Colours
--
Color.new('fg',                 '#c5cdd9')
Color.new('bg',                 '#2B2D3A')
Color.new('bg_1',               '#333648')
Color.new('bg_2',               '#363a4e')
Color.new('bg_3',               '#393e53')
Color.new('bg_4',               '#3f445b')
Color.new('bg_red',             '#ec7279')
Color.new('bg_green',           '#a0c980')
Color.new('bg_blue',            '#6cb6eb')
Color.new('bg_purple',          '#d38aea')
Color.new('bg_grey',            '#7a819d')

Color.new('diff_red',           '#55393d')
Color.new('diff_green',         '#394634')
Color.new('diff_blue',          '#354157')
Color.new('diff_yellow',        '#4e432f')

Color.new('black',              '#202023')
Color.new('red',                '#ec7279')
Color.new('yellow',             '#deb974')
Color.new('green',              '#a0c980')
Color.new('cyan',               '#5dbbc1')
Color.new('blue',               '#6cb6eb')
Color.new('purple',             '#d38aea')
Color.new('grey',               '#7e8294')
Color.new('grey_dim',           '#5c6071')

Group.new('Fg',                 colors.fg,          colors.none,        styles.NONE)
Group.new('Red',                colors.red,         colors.none,        styles.NONE)
Group.new('Yellow',             colors.yellow,      colors.none,        styles.NONE)
Group.new('Green',              colors.green,       colors.none,        styles.NONE)
Group.new('Cyan',               colors.cyan,        colors.none,        styles.NONE)
Group.new('Blue',               colors.blue,        colors.none,        styles.NONE)
Group.new('Purple',             colors.purple,      colors.none,        styles.NONE)
Group.new('Grey',               colors.grey,        colors.none,        styles.NONE)

-- vim
--
Group.new('Bold',               colors.none,        colors.none,        styles.bold)
Group.new('ColorColumn',        colors.none,        colors.bg,          styles.NONE)
Group.new('Conceal',            colors.grey_dim,    colors.none,        styles.NONE)
Group.new('Cursor',             colors.none,        colors.purple,      styles.NONE)
Group.new('CursorColumn',       colors.none,        colors.none,        styles.NONE) 
Group.new('CursorLine',         colors.none,        colors.none,        styles.NONE) 
Group.new('CursorLineNr',       colors.grey,        colors.none,        styles.NONE)
Group.new('DiffAdd',            colors.none,        colors.diff_green,  styles.NONE)
Group.new('DiffChange',         colors.none,        colors.diff_blue,   styles.NONE)
Group.new('DiffDelete',         colors.none,        colors.diff_red,    styles.NONE)
Group.new('DiffText',           colors.bg,          colors.blue,        styles.NONE)
Group.new('Directory',          colors.green,       colors.none,        styles.NONE)
Group.new('Debug',              colors.yellow,      colors.none,        styles.NONE)
Group.new('debugPC',            colors.bg,          colors.bg_green,    styles.NONE)
Group.new('debugBreakpoint',    colors.bg,          colors.bg_red,      styles.NONE)
Group.new('EndOfBuffer',        colors.bg,          colors.none,        styles.NONE)
Group.new('ErrorMsg',           colors.red,         colors.none,        styles.bold + styles.underline)
Group.new('Folded',             colors.grey,        colors.bg,          styles.NONE)
Group.new('FoldedColumn',       colors.grey_dim,    colors.none,        styles.NONE)
Group.new('Ignore',             colors.none,        colors.none,        styles.NONE)
Group.new('IncSearch',          colors.bg,          colors.bg_blue,     styles.NONE)
Group.new('Italic',             colors.none,        colors.none,        styles.italic)
Group.new('LineNr',             colors.grey_dim,    colors.none,        styles.NONE)
Group.new('MatchParen',         colors.none,        colors.bg_4,        styles.NONE)
Group.new('ModeMsg',            colors.fg,          colors.none,        styles.bold)
Group.new('MoreMsg',            colors.blue,        colors.none,        styles.bold)
Group.new('NonText',            colors.bg_4,        colors.none,        styles.NONE)
Group.new('Normal',             colors.fg,          colors.bg,          styles.NONE)
Group.new('NormalFloat',        colors.fg,          colors.bg_2,        styles.NONE)
Group.new('Pmenu',              colors.fg,          colors.bg_2,        styles.NONE)
Group.new('PmenuSbar',          colors.none,        colors.bg_2,        styles.NONE)
Group.new('PmenuSel',           colors.bg,          colors.bg_blue,     styles.NONE)
Group.new('PmenuThumb',         colors.none,        colors.bg_grey,     styles.NONE)
Group.new('Question',           colors.yellow,      colors.none,        styles.NONE)
Group.new('QuickFixLine',       colors.purple,      colors.none,        styles.bold)
Group.new('Search',             colors.bg,          colors.bg_green,    styles.NONE)
Group.new('SignColumn',         colors.fg,          colors.none,        styles.NONE)
Group.new('SpecialKey',         colors.bg_4,        colors.none,        styles.NONE)
Group.new('SpellBad',           colors.none,        colors.none,        styles.undercurl, colors.red)
Group.new('SpellCap',           colors.none,        colors.none,        styles.undercurl, colors.yellow)
Group.new('SpellLocal',         colors.none,        colors.none,        styles.undercurl, colors.blue)
Group.new('SpellRare',          colors.none,        colors.none,        styles.undercurl, colors.purple)
Group.new('StatusLine',         colors.fg,          colors.bg_2,        styles.NONE)
Group.new('StatusLineTerm',     colors.fg,          colors.bg_2,        styles.NONE)
Group.new('StatusLineNC',       colors.grey,        colors.bg_1,        styles.NONE)
Group.new('StatusLineTermNC',   colors.grey,        colors.bg_1,        styles.NONE)
Group.new('TabLine',            colors.fg,          colors.bg_4,        styles.NONE)
Group.new('TabLineFill',        colors.grey,        colors.bg_1,        styles.NONE)
Group.new('TabLineSel',         colors.bg,          colors.bg_purple,   styles.NONE)
Group.new('ToolbarButton',      colors.bg,          colors.bg_purple,   styles.NONE)
Group.new('ToolbarLine',        colors.fg,          colors.bg_2,        styles.NONE)
Group.new('Underlined',         colors.none,        colors.none,        styles.underline)
Group.new('VertSplit',          colors.purple,      colors.none,        styles.NONE)
Group.new('Visual',             colors.none,        colors.bg_3,        styles.NONE)
Group.new('VisualNOS',          colors.none,        colors.bg_3,        styles.underline)
Group.new('WarningMsg',         colors.yellow,      colors.none,        styles.bold)
Group.new('WildMenu',           groups.PmenuSel,    groups.PmenuSel,    groups.PmenuSel)

-- Group.new('Terminal', colors.fg, colors.bg, styles.NONE)
-- Group.new('Whitespace', colors.bg_4, colors.none, styles.NONE)

-- Syntax
--
Group.new('Type',               colors.red,         colors.none,        styles.NONE)
Group.new('Structure',          colors.red,         colors.none,        styles.NONE)
Group.new('StorageClass',       colors.red,         colors.none,        styles.NONE)
Group.new('Identifier',         colors.cyan,        colors.none,        styles.NONE)
Group.new('Constant',           colors.yellow,      colors.none,        styles.NONE)
Group.new('PreProc',            colors.purple,      colors.none,        styles.NONE)
Group.new('PreCondit',          colors.purple,      colors.none,        styles.NONE)
Group.new('Include',            colors.purple,      colors.none,        styles.NONE)
Group.new('Keyword',            colors.purple,      colors.none,        styles.NONE)
Group.new('Define',             colors.purple,      colors.none,        styles.NONE)
Group.new('Typedef',            colors.purple,      colors.none,        styles.NONE)
Group.new('Exception',          colors.purple,      colors.none,        styles.NONE)
Group.new('Conditional',        colors.purple,      colors.none,        styles.NONE)
Group.new('Repeat',             colors.purple,      colors.none,        styles.NONE)
Group.new('Statement',          colors.purple,      colors.none,        styles.NONE)
Group.new('Macro',              colors.yellow,      colors.none,        styles.NONE)
Group.new('Error',              colors.red,         colors.none,        styles.NONE)
Group.new('Label',              colors.yellow,      colors.none,        styles.NONE)
Group.new('Special',            colors.yellow,      colors.none,        styles.NONE)
Group.new('SpecialChar',        colors.yellow,      colors.none,        styles.NONE)
Group.new('Boolean',            colors.green,       colors.none,        styles.NONE)
Group.new('String',             colors.green,       colors.none,        styles.NONE)
Group.new('Character',          colors.green,       colors.none,        styles.NONE)
Group.new('Number',             colors.green,       colors.none,        styles.NONE)
Group.new('Float',              colors.green,       colors.none,        styles.NONE)
Group.new('Operator',           colors.purple,      colors.none,        styles.NONE)
Group.new('Title',              colors.purple,      colors.none,        styles.bold)
Group.new('Tag',                colors.yellow,      colors.none,        styles.NONE)
Group.new('Delimiter',          colors.fg,          colors.none,        styles.NONE)
Group.new('Comment',            colors.grey,        colors.none,        styles.italic)
Group.new('SpecialComment',     colors.grey,        colors.none,        styles.italic)
Group.new('Todo',               colors.red,         colors.none,        styles.italic)

-- Predifined Highlight Groups
--
Group.new('RedItalic',          colors.red,         colors.none,        styles.NONE)
Group.new('YellowItalic',       colors.yellow,      colors.none,        styles.NONE)
Group.new('GreenItalic',        colors.green,       colors.none,        styles.NONE)
Group.new('CyanItalic',         colors.cyan,        colors.none,        styles.NONE)
Group.new('BlueItalic',         colors.blue,        colors.none,        styles.NONE)
Group.new('PurpleItalic',       colors.purple,      colors.none,        styles.NONE)

Group.new('RedSign', colors.red, colors.none, styles.NONE)
Group.new('YellowSign', colors.yellow, colors.none, styles.NONE)
Group.new('GreenSign', colors.green, colors.none, styles.NONE)
Group.new('CyanSign', colors.cyan, colors.none, styles.NONE)
Group.new('BlueSign', colors.blue, colors.none, styles.NONE)
Group.new('PurpleSign', colors.purple, colors.none, styles.NONE)

Group.new('ErrorText', colors.none, colors.none, styles.undercurl, colors.red)
Group.new('WarningText', colors.none, colors.none, styles.undercurl, colors.yellow)
Group.new('InfoText', colors.none, colors.none, styles.undercurl, colors.blue)
Group.new('HintText', colors.none, colors.none, styles.undercurl, colors.green)

Group.new('ErrorLine', colors.none, colors.none, styles.NONE)
Group.new('WarningLine', colors.none, colors.none, styles.NONE)
Group.new('InfoLine', colors.none, colors.none, styles.NONE)
Group.new('HintLine', colors.none, colors.none, styles.NONE)

Group.new('ErrorFloat', colors.red, colors.none, styles.NONE)
Group.new('WarningFloat', colors.yellow, colors.none, styles.NONE)
Group.new('InfoFloat', colors.blue, colors.none, styles.NONE)
Group.new('HintFloat', colors.green, colors.none, styles.NONE)

Group.new('VirtualTextError', colors.red, colors.none, styles.NONE)
Group.new('VirtualTextWarning', colors.yellow, colors.none, styles.NONE)
Group.new('VirtualTextInfo', colors.blue, colors.none, styles.NONE)
Group.new('VirtualTextHint', colors.green, colors.none, styles.NONE)

Group.new('CurrentWord', colors.none, colors.none, styles.bold)

Group.new('Substitute',         colors.bg,          colors.yellow,      styles.NONE)

-- LSP 
--
Group.new('DiagnosticError',    groups.ErrorText,    groups.ErrorText,      groups.ErrorText)
Group.new('DiagnosticWarn',     groups.WarningText,  groups.WarningText,    groups.WarningText)
Group.new('DiagnosticInfo',     groups.InfoText,     groups.InfoText,       groups.InfoText)
Group.new('DiagnosticHint',     groups.HintText,     groups.HintText,       groups.HintText)

Group.new('DiagnosticFloatingError', groups.ErrorFloat, groups.ErrorFloat, groups.ErrorFloat)
Group.new('DiagnosticFloatingWarn', groups.WarningFloat, groups.WarningFloat, groups.WarningFloat)
Group.new('DiagnosticFloatingInfo', groups.InfoFloat, groups.InfoFloat, groups.InfoFloat)
Group.new('DiagnosticFloatingHint', groups.HintFloat, groups.HintFloat, groups.HintFloat)

Group.new('DiagnosticVirtualTextError', groups.VirtualTextError, groups.VirtualTextError, groups.VirtualTextError)
Group.new('DiagnosticVirtualTextWarn', groups.VirtualTextWarning, groups.VirtualTextWarning, groups.VirtualTextWarning)
Group.new('DiagnosticVirtualTextInfo', groups.VirtualTextInfo, groups.VirtualTextInfo, groups.VirtualTextInfo)
Group.new('DiagnosticVirtualTextHint', groups.VirtualTextHint, groups.VirtualTextHint, groups.VirtualTextHint)

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

Group.new('LspDiagnosticVirtualTextError', groups.VirtualTextError, groups.VirtualTextError, groups.VirtualTextError)
Group.new('LspDiagnosticVirtualTextWarn', groups.VirtualTextWarning, groups.VirtualTextWarning, groups.VirtualTextWarning)
Group.new('LspDiagnosticVirtualTextInfo', groups.VirtualTextInfo, groups.VirtualTextInfo, groups.VirtualTextInfo)
Group.new('LspDiagnosticVirtualTextHint', groups.VirtualTextHint, groups.VirtualTextHint, groups.VirtualTextHint)

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
Group.new('LspReferenceWrite',  groups.CurrentWord, groups.CurrentWord, groups.CurrentWord)

Group.new('TermCursor', groups.Cursor, groups.Cursor, groups.Cursor)

Group.new('healthError', groups.red, groups.red, groups.red)
Group.new('healthWarning', groups.yellow, groups.yellow, groups.yellow)
Group.new('healthSuccess', groups.green, groups.green, groups.green)

-- nvim-treesiter/nvim-treesitter
--
Group.new('TSStrong', colors.none, colors.none, styles.bold)
Group.new('TSEmphasis', colors.none, colors.none, styles.italic)
Group.new('TSUnderline', colors.none, colors.none, styles.underline)
Group.new('TSNote', colors.bg, colors.blue, styles.bold)
Group.new('TSWarning', colors.bg, colors.yellow, styles.bold)
Group.new('TSDanger', colors.bg, colors.red, styles.bold)
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
Group.new('TSURI', colors.green, colors.none, styles.underline)
Group.new('TSVariable', groups.RedItalic, groups.RedItalic, groups.RedItalic)
Group.new('TSVariableBuiltin', groups.CyanItalic, groups.CyanItalic, groups.CyanItalic)

-- RRethy/vim-illuminate
--
Group.new('illuminatedWork', colors.none, colors.none, styles.bold)

-- nvim-telescope/telescope.nvim
--
Group.new('TelescopeMatching', colors.green, colors.none, styles.bold)
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
--
-- highlight! link NvimTreeSymlink Fg
-- highlight! link NvimTreeFolderName Green
-- highlight! link NvimTreeRootFolder Grey
-- highlight! link NvimTreeFolderIcon Blue
-- highlight! link NvimTreeEmptyFolderName Green
-- highlight! link NvimTreeOpenedFolderName Green
-- highlight! link NvimTreeExecFile Fg
-- highlight! link NvimTreeOpenedFile Fg
-- highlight! link NvimTreeSpecialFile Fg
-- highlight! link NvimTreeImageFile Fg
-- highlight! link NvimTreeMarkdownFile Fg
-- highlight! link NvimTreeIndentMarker Grey
-- highlight! link NvimTreeGitDirty Yellow
-- highlight! link NvimTreeGitStaged Blue
-- highlight! link NvimTreeGitMerge Cyan
-- highlight! link NvimTreeGitRenamed Purple
-- highlight! link NvimTreeGitNew Green
-- highlight! link NvimTreeGitDeleted Red
-- highlight! link NvimTreeLspDiagnosticsError RedSign
-- highlight! link NvimTreeLspDiagnosticsWarning YellowSign
-- highlight! link NvimTreeLspDiagnosticsInformation BlueSign
-- highlight! link NvimTreeLspDiagnosticsHint GreenSign

-- mhinz/vim-startify
