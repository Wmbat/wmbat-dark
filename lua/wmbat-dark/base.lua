---@diagnostic disable: undefined-global
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

vim.g.terminal_color_0 = bg_0.hex
vim.g.terminal_color_1 = colours.dark_red.hex
vim.g.terminal_color_2 = colours.dark_green.hex
vim.g.terminal_color_3 = colours.dark_yellow.hex
vim.g.terminal_color_4 = colours.dark_blue.hex
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
        ColorColumn {},                   -- Columns set with 'colorcolumn'
        Conceal { fg = grey_1 },          -- Placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor { gui = styles.inverse },  -- Character under the curso
        lCursor { Cursor },               -- Character under the cursor when |language-mapping| is used (see 'guicursor')
        iCursor { Cursor },
        vCursor { Cursor },
        CursorIM { Cursor },                -- Like Cursor, but used when in IME mode |CursorIM|
        CursorColumn {},                    -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine {},                      -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory { wmbat_dark_green },     -- Directory names (and other special names in listings)
        DiffAdd { bg = green },             -- Diff mode: Added line |diff.txt|
        DiffChange { bg = blue },           -- Diff mode: Changed line |diff.txt|
        DiffDelete { bg = red },            -- Diff mode: Deleted line |diff.txt|
        DiffText { fg = bg_0, bg = blue },  -- Diff mode: Changed text within a changed line |diff.txt|
        -- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        -- TermCursor   { }, -- Cursor in a focused terminal
        -- TermCursorNC { }, -- Cursor in an unfocused terminal
        ErrorMsg { fg = red, gui = table_concat({ styles.bold, styles.underline }, ',') },  -- Error messages on the command line
        VertSplit { fg = purple },                                                          -- Column separating vertically split windows
        Folded { fg = grey_0 },                                                             -- Line used for closed folds
        -- FoldColumn   { }, -- 'foldcolumn'
        SignColumn { fg = fg },                                                             -- Column where |signs| are displayed
        IncSearch { fg = bg_0, bg = blue },                                                 -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr { fg = grey_1 },                                                             -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr { fg = grey_0 },                                                       -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        -- MatchParen   { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        -- MoreMsg      { }, -- |more-prompt|
        NonText { fg = bg_2 },               -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal { fg = fg, bg = bg_0 },       -- Normal text
        NormalFloat { fg = fg, bg = bg_0 },  -- Normal text in floating windows.
        FloatBorder { fg = blue, bg = bg_0 },
        -- NormalNC     { }, -- normal text in non-current windows
        Pmenu { fg = fg, bg = colours.line },       -- Popup menu: Normal item.
        PmenuSel { fg = bg_0, bg = blue },  -- Popup menu: Selected item.
        PmenuSbar { bg = bg_2 },            -- Popup menu: Scrollbar.
        PmenuThumb { bg = grey_0 },         -- Popup menu: Thumb of the scrollbar.
        Question { fg = orange },           -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine { fg = purple, gui = styles.bold }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search { bg = bg_4 },               -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        -- StatusLine   { }, -- Status line of current window
        -- StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine { fg = bg_2, bg = bg_2 },                                                        -- Tab pages line, not active tab page label
        TabLineFill { fg = bg_2, bg = bg_2 },                                                    -- Tab pages line, where there are no labels
        TabLineSel { fg = blue, bg = bg_0 },                                                     -- Tab pages line, active tab page label
        Title { fg = purple, gui = styles.bold },                                                -- Titles for output from ":set all", ":autocmd" etc.
        Visual { bg = bg_2 },                                                                    -- Visual mode selection
        VisualNOS { Visual },                                                                    -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg { fg = orange, gui = table_concat({ styles.bold, styles.underline }, ',') },  -- Warning messages
        Whitespace { fg = grey_1 },                                                              -- "nbsp", "space", "tab" and "trail" in 'listchars'
        Winseparator { fg = blue },                                                              -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
        -- WildMenu     { }, -- Current match in 'wildmenu' completion

        -- Common vim syntax groups used for all kinds of code and markup.
        -- Commented-out groups should chain up to their preferred (*) group
        -- by default.
        --
        -- See :h group-name
        --
        -- Uncomment and edit if you want more specific syntax highlighting.

        -- Comment { fg = grey_0 },                        -- Any comment
        --
        -- Constant { fg = orange, gui = styles.italic },  -- (*) Any constant
        -- String { fg = green },                          --   A string constant: "this is a string"
        -- Character { fg = green },                       --   A character constant: 'c', '\n'
        -- Number { fg = yellow },                         --   A number constant: 234, 0xff
        -- Boolean { fg = yellow },                        --   A boolean constant: TRUE, false
        -- Float { fg = yellow },                          --   A floating point constant: 2.3e10
        --
        -- Identifier { fg = red },                        -- (*) Any variable name
        -- Function { fg = blue },                         --   Function name (also: methods for classes)
        --
        -- Statement { fg = purple },                      -- (*) Any statement
        -- Conditional { fg = purple },                    --   if, then, else, endif, switch, etc.
        -- Repeat { fg = purple },                         --   for, do, while, etc.
        -- Label { fg = purple },                          --   case, default, etc.
        -- Operator { fg = purple },                       --   "sizeof", "+", "*", etc.
        -- Keyword { fg = purple },                        --   any other keyword
        -- Exception { fg = purple },                      --   try, catch, throw
        --
        -- PreProc { fg = purple },                        -- (*) Generic Preprocessor
        -- Include { fg = purple },                        --   Preprocessor #include
        -- Define { fg = purple },                         --   Preprocessor #define
        -- Macro { fg = yellow },                          --   Same as Define
        -- PreCondit { fg = purple },                      --   Preprocessor #if, #else, #endif, etc.
        --
        -- Type { fg = yellow },                              -- (*) int, long, char, etc.
        -- StorageClass { fg = purple },                      --   static, register, volatile, etc.
        -- Structure { fg = yellow },                         --   struct, union, enum, etc.
        -- Typedef { fg = yellow },                        --   A Typedef
        --
        -- Special { fg = yellow },                        -- (*) Any special symbol
        -- SpecialChar { fg = yellow },                    --   Special character in a constant
        -- Tag { fg = yellow },                            --   You can use CTRL-] on this
        -- Delimiter { fg = fg },                          --   Character that needs attention
        -- SpecialComment { fg = grey_0 },                 --   Special things inside a comment (e.g. '\n')
        -- Debug          { }, --   Debugging statements

        Underlined { gui = styles.underline },    -- Text that stands out, HTML links
        -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
        Error { fg = red },                       -- Any erroneous construct
        Todo { fg = yellow, gui = styles.bold },  -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        sym "@lsp.type.namespace" { fg = colours.red },
        sym "@lsp.type.type" { fg = colours.yellow },
        sym "@lsp.type.class" { fg = colours.yellow },
        sym "@lsp.type.enum" { fg = colours.yellow },
        sym "@lsp.type.struct" { fg = colours.yellow },
        sym "@lsp.type.typeParameter" { fg = colours.yellow },
        sym "@lsp.type.parameter" { fg = colours.grey_2 },
        sym "@lsp.type.variable" { fg = colours.fg },
        sym "@lsp.type.property" { fg = colours.cyan },
        sym "@lsp.type.enumMember" { fg = colours.cyan },
        -- sym"@lsp.type.event" { fg = yellow },

        sym "@lsp.type.function" { fg = colours.blue },
        sym "@lsp.type.method" { fg = colours.blue },
        sym "@lsp.type.macro" { fg = colours.pink },
        sym "@lsp.type.keyword" { fg = colours.purple },
        sym "@lsp.type.modifier" { fg = colours.purple },
        sym "@lsp.type.comment" { fg = colours.grey_0 },
        sym "@lsp.type.string" { fg = colours.green },
        sym "@lsp.type.number" { fg = colours.yellow },
        sym "@lsp.type.regexp" { fg = colours.yellow },
        sym "@lsp.type.operator" { fg = colours.purple },

        sym "@lsp.mod.deprecated" { fg = colours.grey_2, gui = "strikethrough" },
    }
end)

return base_group
