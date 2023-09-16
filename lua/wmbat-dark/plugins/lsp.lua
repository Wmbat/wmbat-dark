-- lsp highlights
local lush = require("lush")
local styles = require("wmbat-dark.settings").styles
local colors = require("wmbat-dark.colors")

local group = lush(function()
    return {
        TextError { fg = colors.red },
        TextWarning { fg = colors.orange },
        TextInformation { fg = colors.blue },
        TextHint { fg = colors.green },

        UnderlineError { fg = colors.red, gui = styles.undercurl },
        UnderlineWarning { fg = colors.orange, gui = styles.undercurl },
        UnderlineInformation { fg = colors.blue, gui = styles.undercurl },
        UnderlineHint { fg = colors.blue, gui = styles.undercurl },

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
        -- LspCodeLens { },
        -- LspCodeLensSeparator { },
        LspSignatureActiveParameter { fg = bg_0, bg = red, gui = styles.bold },

        -- Lsp Semantic Highlighting
        sym "@lsp.type.namespace" { fg = colors.red },
        sym "@lsp.type.type" { fg = colors.yellow },
        sym "@lsp.type.class" { fg = colors.yellow },
        sym "@lsp.type.enum" { fg = colors.yellow },
        sym "@lsp.type.struct" { fg = colors.yellow },
        sym "@lsp.type.typeParameter" { fg = colors.yellow },
        sym "@lsp.type.parameter" { fg = colors.grey_2 },
        sym "@lsp.type.variable" { fg = colors.fg },
        sym "@lsp.type.property" { fg = colors.cyan },
        sym "@lsp.type.enumMember" { fg = colors.cyan },
        -- sym"@lsp.type.event" { fg = yellow },

        sym "@lsp.type.function" { fg = colors.blue },
        sym "@lsp.type.method" { fg = colors.blue },
        sym "@lsp.type.macro" { fg = colors.pink },
        sym "@lsp.type.keyword" { fg = colors.purple },
        sym "@lsp.type.modifier" { fg = colors.purple },
        sym "@lsp.type.comment" { fg = colors.grey_0 },
        sym "@lsp.type.string" { fg = colors.green },
        sym "@lsp.type.number" { fg = colors.yellow },
        sym "@lsp.type.regexp" { fg = colors.yellow },
        sym "@lsp.type.operator" { fg = colors.purple },
        sym "@lsp.mod.deprecated" { fg = colors.grey_2, gui = "strikethrough" },
    }
end)

return group
