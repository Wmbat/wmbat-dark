-- treesitter highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
    return {
        -- Tree-Sitter syntax groups.
        --
        -- See :h treesitter-highlight-groups, some groups may not be listed,
        -- submit a PR fix to lush-template!
        --
        -- Tree-Sitter groups are defined with an "@" symbol, which must be
        -- specially handled to be valid lua code, we do this via the special
        -- sym function. The following are all valid ways to call the sym function,
        -- for more details see https://www.lua.org/pil/5.html
        --
        -- sym("@text.literal")
        -- sym('@text.literal')
        -- sym"@text.literal"
        -- sym'@text.literal'
        --
        -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

        -- sym"@text.literal"      { }, -- Comment
        -- sym"@text.reference"    { }, -- Identifier
        -- sym"@text.title"        { }, -- Title
        -- sym"@text.uri"          { }, -- Underlined
        -- sym"@text.underline"    { }, -- Underlined
        -- sym"@text.todo"         { }, -- Todo
        --
        sym "@comment" { fg = colours.grey_0 },                             -- Comment
        sym "@punctuation" { fg = colours.grey_0 },                         -- Delimiter
        sym "@punctuation.special" { fg = colours.yellow },                 -- Delimiter

        sym "@constant" { fg = colours.orange, gui = styles.italic },       -- Constant
        sym "@constant.builtin" { fg = colours.cyan, gui = styles.italic }, -- Special
        sym "@constant.macro" { fg = colours.cyan, gui = styles.italic },   -- Define
        sym "@define" { fg = colours.purple },                              -- Define
        sym "@macro" { fg = colours.cyan },                                 -- Macro
        sym "@string" { fg = colours.green },                               -- String
        sym "@string.escape" { fg = colours.yellow },                       -- SpecialChar
        sym "@string.regex" { fg = colours.yellow },                        -- SpecialChar
        sym "@string.special" { fg = colours.yellow },                      -- SpecialChar
        sym "@character" { fg = colours.green },                            -- Character
        sym "@character.special" { fg = colours.yellow },                   -- SpecialChar
        sym "@number" { fg = colours.yellow },                              -- Number
        sym "@boolean" { fg = colours.yellow },                             -- Boolean
        sym "@float" { fg = colours.yellow },                               -- Float

        sym "@function" { fg = colours.blue },                              -- Function
        sym "@function.builtin" { fg = colours.blue },                      -- Special
        sym "@function.macro" { fg = colours.blue },                        -- Macro
        sym "@parameter" { fg = colours.grey_2, gui = styles.italic },      -- Identifier
        sym "@method" { fg = colours.blue },                                -- Function
        sym "@field" { fg = colours.blue },                                 -- Identifier
        sym "@property" { fg = colours.red, gui = styles.italic },          -- Identifier
        sym "@constructor" { fg = colours.blue },                           -- Special

        sym "@conditional" { fg = colours.purple },                         -- Conditional
        sym "@repeat" { fg = colours.purple },                              -- Repeat
        sym "@label" { fg = colours.purple },                               -- Label
        sym "@operator" { fg = colours.purple },                            -- Operator
        sym "@keyword" { fg = colours.purple },                             -- Keyword
        sym "@exception" { fg = colours.purple },                           -- Exception

        sym "@variable" { fg = colours.white },                             -- Identifier
        sym "@type" { fg = colours.yellow },                                -- Type
        sym "@type.definition" { fg = colours.yellow },                     -- Typedef
        -- sym"@storageclass"     { }, -- StorageClass
        sym "@structure" { fg = colours.cyan, gui = styles.italic },        -- Structure
        sym "@namespace" { fg = colours.red },                              -- Identifier
        sym "@include" { fg = colours.purple },                             -- Include
        sym "@preproc" { fg = colours.purple },                             -- PreProc
        -- sym"@debug"            { }, -- Debug
        sym "@tag" { fg = colours.red, guy = styles.italic },               -- Tag
    }
end)

return group
