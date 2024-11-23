local lush = require('lush')
local base = require("wmbat-dark.base")
local loader = require("wmbat-dark.utils.loader")
local config_module = require("wmbat-dark.config")

---comment
---@param user_config { langs: { }, plugins: { } }
local function setup(user_config)
    if user_config then
        config_module.apply_config(user_config)
    end

    local load_plugins = loader.load_plugins(config_module.config)
    local load_langs = loader.load_langs(config_module.config)
    return lush.merge({ base, load_plugins, load_langs })
end

return {setup = setup}
-- 
-- 
-- local colours = require("wmbat-dark.colours")
-- local styles = require("wmbat-dark.settings").styles
-- local table_concat = table.concat
-- local hsl = lush.hsl
-- 
-- local fg = colours.white
-- 
-- local bg_0 = colours.black_0
-- local bg_1 = colours.black_1
-- local bg_2 = colours.black_2
-- local bg_3 = colours.black_3
-- local bg_4 = colours.black_4
-- 
-- local red = colours.red
-- local dark_red = colours.dark_red
-- local green = colours.green
-- local blue = colours.blue
-- local dark_blue = colours.dark_blue
-- local yellow = colours.yellow
-- local dark_yellow = colours.dark_yellow
-- local cyan = colours.cyan
-- local purple = colours.purple
-- local dark_purple = colours.dark_purple
-- local orange = colours.orange
-- local pink = colours.pink
-- 
-- local grey_0 = colours.grey_0
-- local grey_1 = colours.grey_1
-- local grey_2 = colours.grey_2
-- 
-- -- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- -- support an annotation like the following. Consult your server documentation.
-- -- @diagnostic disable: undefined-global
-- local theme = lush(function(injected_functions)
--     local sym = injected_functions.sym
--     return {
--         -- These groups are for the native LSP client and diagnostic system. Some
--         -- other LSP clients may use these groups, or use their own. Consult your
--         -- LSP client's documentation.
-- 
--         -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
--         --
--         LspReferenceText { gui = styles.bold },  -- Used for highlighting "text" references
--         LspReferenceRead { gui = styles.bold },  -- Used for highlighting "read" references
--         LspReferenceWrite { gui = styles.bold }, -- Used for highlighting "write" references
--         -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
--         -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
--         LspSignatureActiveParameter { fg = bg_0, bg = red, gui = styles.bold }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
-- 
--         TextError { fg = colours.red },
--         TextWarning { fg = colours.orange },
--         TextInformation { fg = colours.blue },
--         TextHint { fg = colours.green },
-- 
--         UnderlineError { fg = colours.red, gui = styles.undercurl },
--         UnderlineWarning { fg = colours.orange, gui = styles.undercurl },
--         UnderlineInformation { fg = colours.blue, gui = styles.undercurl },
--         UnderlineHint { fg = colours.blue, gui = styles.undercurl },
-- 
--         -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
--         --
--         DiagnosticError { TextError },                    -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
--         DiagnosticWarn { TextWarning },                   -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
--         DiagnosticInfo { TextInformation },               -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
--         DiagnosticHint { TextHint },                      -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
--         DiagnosticVirtualTextError { TextError },         -- Used for "Error" diagnostic virtual text.
--         DiagnosticVirtualTextWarn { TextWarning },        -- Used for "Warn" diagnostic virtual text.
--         DiagnosticVirtualTextInfo { TextInformation },    -- Used for "Info" diagnostic virtual text.
--         DiagnosticVirtualTextHint { TextHint },           -- Used for "Hint" diagnostic virtual text.
--         DiagnosticUnderlineError { UnderlineError },      -- Used to underline "Error" diagnostics.
--         DiagnosticUnderlineWarn { UnderlineWarning },     -- Used to underline "Warn" diagnostics.
--         DiagnosticUnderlineInfo { UnderlineInformation }, -- Used to underline "Info" diagnostics.
--         DiagnosticUnderlineHint { UnderlineHint },        -- Used to underline "Hint" diagnostics.
--         DiagnosticFloatingError { TextError },            -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
--         DiagnosticFloatingWarn { TextWarning },           -- Used to color "Warn" diagnostic messages in diagnostics float.
--         DiagnosticFloatingInfo { TextInformation },       -- Used to color "Info" diagnostic messages in diagnostics float.
--         DiagnosticFloatingHint { TextHint },              -- Used to color "Hint" diagnostic messages in diagnostics float.
--         DiagnosticSignError { TextError },                -- Used for "Error" signs in sign column.
--         DiagnosticSignWarn { TextWarning },               -- Used for "Warn" signs in sign column.
--         DiagnosticSignInfo { TextInformation },           -- Used for "Info" signs in sign column.
--         DiagnosticSignHint { TextHint },                  -- Used for "Hint" signs in sign column.
-- 
-- 
--         sym "@lsp.type.namespace" { fg = red },
--         sym "@lsp.type.type" { fg = yellow },
--         sym "@lsp.type.class" { fg = yellow },
--         sym "@lsp.type.enum" { fg = yellow },
--         sym "@lsp.type.struct" { fg = yellow },
--         sym "@lsp.type.typeParameter" { fg = yellow },
--         sym "@lsp.type.parameter" { fg = grey_2 },
--         sym "@lsp.type.variable" { fg = fg },
--         sym "@lsp.type.property" { fg = cyan },
--         sym "@lsp.type.enumMember" { fg = cyan },
--         -- sym"@lsp.type.event" { fg = yellow },
-- 
--         sym "@lsp.type.function" { fg = blue },
--         sym "@lsp.type.method" { fg = blue },
--         sym "@lsp.type.macro" { fg = pink },
--         sym "@lsp.type.keyword" { fg = purple },
--         sym "@lsp.type.modifier" { fg = purple },
--         sym "@lsp.type.comment" { fg = grey_0 },
--         sym "@lsp.type.string" { fg = green },
--         sym "@lsp.type.number" { fg = yellow },
--         sym "@lsp.type.regexp" { fg = yellow },
--         sym "@lsp.type.operator" { fg = purple },
-- 
--         sym "@lsp.mod.deprecated" { fg = grey_2, gui = "strikethrough" },
--     }
-- end)
-- 
-- -- Return our parsed theme for extension or use elsewhere.
-- return theme
-- 
-- -- vi:nowrap
