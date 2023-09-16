local lush = require("lush")
local colors = require("wmbat-dark.colors")
local styles = require("wmbat-dark.settings").styles

local fg = colors.white

local bg_0 = colors.black_0
local bg_1 = colors.black_1
local bg_2 = colors.black_2
local bg_3 = colors.black_3
local bg_4 = colors.black_4

local white = colors.white
local red = colors.red
local dark_red = colors.dark_red
local green = colors.green
local dark_green = colors.dark_green
local blue = colors.blue
local dark_blue = colors.dark_blue
local yellow = colors.yellow
local dark_yellow = colors.dark_yellow
local cyan = colors.cyan
local purple = colors.purple
local orange = colors.orange

local grey_0 = colors.grey_0
local grey_1 = colors.grey_1
local grey_2 = colors.grey_2

vim.o.background = 'dark'

vim.g.terminal_color_0 = bg_0.hex
vim.g.terminal_color_1 = colors.dark_red.hex
vim.g.terminal_color_2 = colors.dark_green.hex
vim.g.terminal_color_3 = colors.dark_yellow.hex
vim.g.terminal_color_4 = colors.dark_blue.hex
vim.g.terminal_color_5 = purple.hex
vim.g.terminal_color_6 = cyan.hex
vim.g.terminal_color_7 = grey_0.hex
vim.g.terminal_color_8 = grey_2.hex
vim.g.terminal_color_9 = red.hex
vim.g.terminal_color_10 = green.hex
vim.g.terminal_color_11 = yellow.hex
vim.g.terminal_color_12 = blue.hex
vim.g.terminal_color_13 = purple.hex
vim.g.terminal_color_14 = cyan.hex
vim.g.terminal_color_15 = fg.hex

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

        GitSignsAdd { fg = base.green },
        GitSignsChange { fg = base.blue },
        GitSignsDelete { fg = base.red },
        GitSignsAddNr { fg = base.green },
        GitSignsChangeNr { fg = base.blue },
        GitSignsDeleteNr { fg = base.red },
        GitSignsAddLn { bg = base.dark_green },
        GitSignsChangeLn { bg = base.dark_blue },
        GitSignsDeleteLn { bg = base.dark_red },
        GitSignsCurrentLineBlame { fg = base.grey_0 },

        -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
        -- groups, mostly used for styling UI elements.
        -- Comment them out and add your own properties to override the defaults.
        -- An empty definition `{}` will clear all styling, leaving elements looking
        -- like the 'Normal' group.
        -- To be able to link to a group, it must already be defined, so you may have
        -- to reorder items as you go.
        --
        -- See :h highlight-groups
        --
        ColorColumn {},                  -- Columns set with 'colorcolumn'
        Conceal { fg = grey_1 },         -- Placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor { gui = styles.inverse }, -- Character under the cursor
        lCursor { Cursor },              -- Character under the cursor when |language-mapping| is used (see 'guicursor')
        iCursor { Cursor },
        vCursor { Cursor },
        CursorIM { Cursor },               -- Like Cursor, but used when in IME mode |CursorIM|
        CursorColumn {},                   -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine {},                     -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory { wmbat_dark_green },    -- Directory names (and other special names in listings)
        DiffAdd { bg = green },            -- Diff mode: Added line |diff.txt|
        DiffChange { bg = blue },          -- Diff mode: Changed line |diff.txt|
        DiffDelete { bg = red },           -- Diff mode: Deleted line |diff.txt|
        DiffText { fg = bg_0, bg = blue }, -- Diff mode: Changed text within a changed line |diff.txt|
        -- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        -- TermCursor   { }, -- Cursor in a focused terminal
        -- TermCursorNC { }, -- Cursor in an unfocused terminal
        ErrorMsg { fg = red, gui = table_concat({ styles.bold, styles.underline }, ',') }, -- Error messages on the command line
        VertSplit { fg = purple },                                                         -- Column separating vertically split windows
        Folded { fg = grey_0 },                                                            -- Line used for closed folds
        -- FoldColumn   { }, -- 'foldcolumn'
        SignColumn { fg = fg },                                                            -- Column where |signs| are displayed
        IncSearch { fg = bg_0, bg = blue },                                                -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr { fg = grey_1 },                                                            -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr { fg = grey_0 },                                                      -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        -- MatchParen   { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        -- MoreMsg      { }, -- |more-prompt|
        NonText { fg = bg_2 },              -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal { fg = fg, bg = bg_0 },      -- Normal text
        NormalFloat { fg = fg, bg = bg_0 }, -- Normal text in floating windows.
        FloatBorder { fg = blue, bg = bg_0 },
        -- NormalNC     { }, -- normal text in non-current windows
        Pmenu { fg = fg, bg = bg_2 },      -- Popup menu: Normal item.
        PmenuSel { fg = bg_0, bg = blue }, -- Popup menu: Selected item.
        PmenuSbar { bg = bg_2 },           -- Popup menu: Scrollbar.
        PmenuThumb { bg = grey_0 },        -- Popup menu: Thumb of the scrollbar.
        Question { fg = orange },          -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine { fg = purple, gui = styles.bold }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search { fg = bg_0, bg = fg },     -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        -- StatusLine   { }, -- Status line of current window
        -- StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        -- TabLine      { }, -- Tab pages line, not active tab page label
        -- TabLineFill  { }, -- Tab pages line, where there are no labels
        -- TabLineSel   { }, -- Tab pages line, active tab page label
        Title { fg = purple, gui = styles.bold },                                               -- Titles for output from ":set all", ":autocmd" etc.
        Visual { bg = bg_2 },                                                                   -- Visual mode selection
        VisualNOS { Visual },                                                                   -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg { fg = orange, gui = table_concat({ styles.bold, styles.underline }, ',') }, -- Warning messages
        Whitespace { fg = grey_1 },                                                             -- "nbsp", "space", "tab" and "trail" in 'listchars'
        Winseparator { fg = blue },                                                             -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
        -- WildMenu     { }, -- Current match in 'wildmenu' completion

        -- Common vim syntax groups used for all kinds of code and markup.
        -- Commented-out groups should chain up to their preferred (*) group
        -- by default.
        --
        -- See :h group-name
        --
        -- Uncomment and edit if you want more specific syntax highlighting.

        Comment { fg = grey_0 },                       -- Any comment

        Constant { fg = orange, gui = styles.italic }, -- (*) Any constant
        String { fg = green },                         --   A string constant: "this is a string"
        Character { fg = green },                      --   A character constant: 'c', '\n'
        Number { fg = yellow },                        --   A number constant: 234, 0xff
        Boolean { fg = yellow },                       --   A boolean constant: TRUE, false
        Float { fg = yellow },                         --   A floating point constant: 2.3e10

        Identifier { fg = red },                       -- (*) Any variable name
        Function { fg = blue },                        --   Function name (also: methods for classes)

        Statement { fg = purple },                     -- (*) Any statement
        Conditional { fg = purple },                   --   if, then, else, endif, switch, etc.
        Repeat { fg = purple },                        --   for, do, while, etc.
        Label { fg = purple },                         --   case, default, etc.
        Operator { fg = purple },                      --   "sizeof", "+", "*", etc.
        Keyword { fg = purple },                       --   any other keyword
        Exception { fg = purple },                     --   try, catch, throw

        PreProc { fg = purple },                       -- (*) Generic Preprocessor
        Include { fg = purple },                       --   Preprocessor #include
        Define { fg = purple },                        --   Preprocessor #define
        Macro { fg = yellow },                         --   Same as Define
        PreCondit { fg = purple },                     --   Preprocessor #if, #else, #endif, etc.

        Type { fg = red },                             -- (*) int, long, char, etc.
        StorageClass { fg = red },                     --   static, register, volatile, etc.
        Structure { fg = red },                        --   struct, union, enum, etc.
        Typedef { fg = purple },                       --   A Typedef

        Special { fg = yellow },                       -- (*) Any special symbol
        SpecialChar { fg = yellow },                   --   Special character in a constant
        Tag { fg = yellow },                           --   You can use CTRL-] on this
        Delimiter { fg = fg },                         --   Character that needs attention
        SpecialComment { fg = grey_0 },                --   Special things inside a comment (e.g. '\n')
        -- Debug          { }, --   Debugging statements

        Underlined { gui = styles.underline },   -- Text that stands out, HTML links
        -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
        Error { fg = red },                      -- Any erroneous construct
        Todo { fg = yellow, gui = styles.bold }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    }
end)

return base_group
