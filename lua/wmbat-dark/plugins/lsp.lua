-- lsp highlights
local lush = require('lush')
local base = require('wmbat-dark.base')
local styles = require('wmbat-dark.settings').styles

local M = {}

M = lush(function(injected_functions)
    local sym = injected_functions.sym
    return {
        TextError { fg = base.red },
        TextWarning { fg = baset.orange },
        TextInformation { fg = base.blue },
        TextHint { fg = base.green },

        UnderlineError { fg = base.red, gui = styles.undercurl },
        UnderlineWarning { fg = base.orange, gui = styles.undercurl },
        UnderlineInformation { fg = base.blue, gui = styles.undercurl },
        UnderlineHint { fg = base.blue, gui = styles.undercurl },

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
        sym "@lsp.type.namespace" { fg = base.red },
        sym "@lsp.type.type" { fg = base.yellow },
        sym "@lsp.type.class" { fg = base.yellow },
        sym "@lsp.type.enum" { fg = base.yellow },
        sym "@lsp.type.struct" { fg = base.yellow },
        sym "@lsp.type.typeParameter" { fg = base.yellow },
        sym "@lsp.type.parameter" { fg = base.grey_2 },
        sym "@lsp.type.variable" { fg = base.fg },
        sym "@lsp.type.property" { fg = base.cyan },
        sym "@lsp.type.enumMember" { fg = base.cyan },
        -- sym"@lsp.type.event" { fg = yellow },

        sym "@lsp.type.function" { fg = base.blue },
        sym "@lsp.type.method" { fg = base.blue },
        sym "@lsp.type.macro" { fg = base.pink },
        sym "@lsp.type.keyword" { fg = base.purple },
        sym "@lsp.type.modifier" { fg = base.purple },
        sym "@lsp.type.comment" { fg = base.grey_0 },
        sym "@lsp.type.string" { fg = base.green },
        sym "@lsp.type.number" { fg = base.yellow },
        sym "@lsp.type.regexp" { fg = base.yellow },
        sym "@lsp.type.operator" { fg = base.purple },
        sym "@lsp.mod.deprecated" { fg = base.grey_2, gui = "strikethrough" },
    }
end)

return M
