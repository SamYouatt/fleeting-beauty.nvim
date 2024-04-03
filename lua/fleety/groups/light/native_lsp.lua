local M = {}

function M.get()
    local error = C.red
    local warning = C.orange
    local info = C.pink
    local hint = C.subtext1

    return {
        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.
        LspReferenceText = {},  -- used for highlighting "text" references
        LspReferenceRead = {},  -- used for highlighting "read" references
        LspReferenceWrite = {}, -- used for highlighting "write" references
        -- highlight diagnostics in numberline

        DiagnosticUnnecessary = { fg = C.subtext1 }, -- defaults to comment colour normally

        DiagnosticVirtualTextError = {
            bg = C.none,
            fg = error,
        }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
        DiagnosticVirtualTextWarn = {
            bg = C.none,
            fg = warning,
        }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
        DiagnosticVirtualTextInfo = {
            bg = C.none,
            fg = info,
        }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
        DiagnosticVirtualTextHint = {
            bg = C.none,
            fg = hint,
        },                                              -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default

        DiagnosticError = { bg = C.none, fg = error },  -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
        DiagnosticWarn = { bg = C.none, fg = warning }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
        DiagnosticInfo = { bg = C.none, fg = info },    -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
        DiagnosticHint = { bg = C.none, fg = hint },    -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default

        -- for nvim nightly
        DiagnosticUnderlineError = { underline = true },        -- Used to underline "Error" diagnostics
        DiagnosticUnderlineWarn = { underline = true },       -- Used to underline "Warn" diagnostics
        DiagnosticUnderlineInfo = { underline = true },          -- Used to underline "Info" diagnostics
        DiagnosticUnderlineHint = { underline = true },          -- Used to underline "Hint" diagnostics

        DiagnosticFloatingError = { fg = error },         -- Used to color "Error" diagnostic messages in diagnostics float
        DiagnosticFloatingWarn = { fg = warning },        -- Used to color "Warn" diagnostic messages in diagnostics float
        DiagnosticFloatingInfo = { fg = info },           -- Used to color "Info" diagnostic messages in diagnostics float
        DiagnosticFloatingHint = { fg = hint },           -- Used to color "Hint" diagnostic messages in diagnostics float

        DiagnosticSignError = { fg = error },             -- Used for "Error" signs in sign column
        DiagnosticSignWarn = { fg = warning },            -- Used for "Warn" signs in sign column
        DiagnosticSignInfo = { fg = info },               -- Used for "Info" signs in sign column
        DiagnosticSignHint = { fg = hint },               -- Used for "Hint" signs in sign column

        LspDiagnosticsDefaultError = { fg = error },      -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultWarning = { fg = warning },  -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultInformation = { fg = info }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultHint = { fg = hint },        -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspSignatureActiveParameter = { fg = C.purple },
        -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

        LspDiagnosticsError = { fg = error },
        LspDiagnosticsWarning = { fg = warning },
        LspDiagnosticsInformation = { fg = info },
        LspDiagnosticsHint = { fg = hint },
        LspDiagnosticsVirtualTextError = { fg = error },      -- Used for "Error" diagnostic virtual text
        LspDiagnosticsVirtualTextWarning = { fg = warning },  -- Used for "Warning" diagnostic virtual text
        LspDiagnosticsVirtualTextInformation = { fg = info }, -- Used for "Information" diagnostic virtual text
        LspDiagnosticsVirtualTextHint = { fg = hint },        -- Used for "Hint" diagnostic virtual text
        LspDiagnosticsUnderlineError = { sp = error },        -- Used to underline "Error" diagnostics
        LspDiagnosticsUnderlineWarning = { sp = warning },    -- Used to underline "Warning" diagnostics
        LspDiagnosticsUnderlineInformation = { sp = info },   -- Used to underline "Information" diagnostics
        LspDiagnosticsUnderlineHint = { sp = hint },          -- Used to underline "Hint" diagnostics
        LspCodeLens = {},                                     -- virtual text of the codelens
        LspInlayHint = {
        },                                                    -- virtual text of the inlay hints
        LspInfoBorder = { link = "FloatBorder" },             -- LspInfo border
    }
end

return M
