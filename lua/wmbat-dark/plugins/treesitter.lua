-- treesitter highlights
local lush = require("lush")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")

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
        ["@comment"] = { fg = colours.grey_0 },                             -- Comment
        ["@punctuation"] = { fg = colours.grey_0 },                         -- Delimiter
        ["@punctuation.special"] = { fg = colours.yellow },                 -- Delimiter

        ["@constant"] = { fg = colours.orange, gui = styles.italic },       -- Constant
        ["@constant.builtin"] = { fg = colours.cyan, gui = styles.italic }, -- Special
        ["@constant.macro"] = { fg = colours.cyan, gui = styles.italic },   -- Define
        ["@define"] = { fg = colours.purple },                              -- Define
        ["@macro"] = { fg = colours.cyan },                                 -- Macro
        ["@string"] = { fg = colours.green },                               -- String
        ["@string.escape"] = { fg = colours.yellow },                       -- SpecialChar
        ["@string.regex"] = { fg = colours.yellow },                        -- SpecialChar
        ["@string.special"] = { fg = colours.yellow },                      -- SpecialChar
        ["@character"] = { fg = colours.green },                            -- Character
        ["@character.special"] = { fg = colours.yellow },                   -- SpecialChar
        ["@number"] = { fg = colours.yellow },                              -- Number
        ["@boolean"] = { fg = colours.yellow },                             -- Boolean
        ["@float"] = { fg = colours.yellow },                               -- Float

        ["@function"] = { fg = colours.blue },                              -- Function
        ["@function.builtin"] = { fg = colours.blue },                      -- Special
        ["@function.macro"] = { fg = colours.blue },                        -- Macro
        ["@parameter"] = { fg = colours.grey_2, gui = styles.italic },      -- Identifier
        ["@method"] = { fg = colours.blue },                                -- Function
        ["@field"] = { fg = colours.blue },                                 -- Identifier
        ["@property"] = { fg = colours.red, gui = styles.italic },          -- Identifier
        ["@constructor"] = { fg = colours.blue },                           -- Special

        ["@conditional"] = { fg = colours.purple },                         -- Conditional
        ["@repeat"] = { fg = colours.purple },                              -- Repeat
        ["@label"] = { fg = colours.purple },                               -- Label
        ["@operator"] = { fg = colours.purple },                            -- Operator
        ["@keyword"] = { fg = colours.purple },                             -- Keyword
        ["@exception"] = { fg = colours.purple },                           -- Exception

        ["@variable"] = { fg = colours.white },                             -- Identifier
        ["@type"] = { fg = colours.yellow },                                -- Type
        ["@type.definition"] = { fg = colours.yellow },                     -- Typedef
        -- sym"@storageclass"     { }, -- StorageClass
        ["@structure"] = { fg = colours.cyan, gui = styles.italic },        -- Structure
        ["@namespace"] = { fg = colours.red },                              -- Identifier
        ["@include"] = { fg = colours.purple },                             -- Include
        ["@preproc"] = { fg = colours.purple },                             -- PreProc
        -- sym"@debug"            { }, -- Debug
        ["@tag"] = { fg = colours.red, guy = styles.italic },               -- Tag
    }
end)

return group
