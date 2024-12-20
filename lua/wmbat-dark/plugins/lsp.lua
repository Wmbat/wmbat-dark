-- lsp highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
    return {
        TextError { fg = colours.red },
        TextWarning { fg = colours.orange },
        TextInformation { fg = colours.blue },
        TextHint { fg = colours.green },

        UnderlineError { fg = colours.red, gui = styles.undercurl },
        UnderlineWarning { fg = colours.orange, gui = styles.undercurl },
        UnderlineInformation { fg = colours.blue, gui = styles.undercurl },
        UnderlineHint { fg = colours.blue, gui = styles.undercurl },

        DiagnosticError { TextError },
        DiagnosticWarn { TextWarning },
        DiagnosticInfo { TextInformation },
        DiagnosticHint { TextHint },

        DiagnosticFloatingError { TextError },
        DiagnosticFloatingWarn { TextWarning },
        DiagnosticFloatingInfo { TextInformation },
        DiagnosticFloatingHint { TextHint },

        DiagnosticVirtualError { TextError },
        DiagnosticVirtualWarn { TextWarning },
        DiagnosticVirtualInfo { TextInformation },
        DiagnosticVirtualHint { TextHint },

        DiagnosticUnderlineError { UnderlineError },
        DiagnosticUnderlineWarn { UnderlineWarning },
        DiagnosticUnderlineInfo { UnderlineInformation },
        DiagnosticUnderlineHint { UnderlineHint },

        DiagnosticSignError { TextError },
        DiagnosticSignWarn { TextWarning },
        DiagnosticSignInfo { TextInformation },
        DiagnosticSignHint { TextHint },

        LspDiagnosticsDefaultError { TextError },
        LspDiagnosticsDefaultWarning { TextWarning },
        LspDiagnosticsDefaultInformation { TextInformation },
        LspDiagnosticsDefaultHint { TextHint },

        LspDiagnosticsFloatingError { TextError },
        LspDiagnosticsFloatingWarning { TextWarning },
        LspDiagnosticsFloatingInformation { TextInformation },
        LspDiagnosticsFloatingHint { TextHint },

        LspDiagnosticsVirtualError { TextError },
        LspDiagnosticsVirtualWarning { TextWarning },
        LspDiagnosticsVirtualInformation { TextInformation },
        LspDiagnosticsVirtualHint { TextHint },

        LspDiagnosticsUnderlineError { UnderlineError },
        LspDiagnosticsUnderlineWarning { UnderlineWarning },
        LspDiagnosticsUnderlineInformation { UnderlineInformation },
        LspDiagnosticsUnderlineHint { UnderlineHint },

        LspDiagnosticsSignError { TextError },
        LspDiagnosticsSignWarning { TextWarning },
        LspDiagnosticsSignInformation { TextInformation },
        LspDiagnosticsSignHint { TextHint },

        LspReferenceText { gui = styles.bold },
        LspReferenceRead { gui = styles.bold },
        LspReferenceWrite { gui = styles.bold },

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

return group
