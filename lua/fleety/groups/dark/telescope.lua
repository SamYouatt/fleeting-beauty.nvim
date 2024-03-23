local M = {}

function M.get()
    return {
        TelescopeNormal = { fg = C.text, bg = C.alt_base },
        TelescopeBorder = { link = "FloatBorder" },
        TelescopeSelectionCaret = { fg = C.blue },
        TelescopeSelection = { fg = C.text, bg = C.navy },
        TelescopeMatching = { fg = C.text, bg = C.burnt_orange },
        TelescopePreviewNormal = { bg = C.base },
    }
end

return M
