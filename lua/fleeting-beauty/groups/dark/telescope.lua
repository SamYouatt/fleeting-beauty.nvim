local M = {}

function M.get()
    return {
        TelescopeBorder = { link = "FloatBorder" },
        TelescopeSelectionCaret = { fg = C.blue },
        TelescopeSelection = { fg = C.text, bg = C.navy },
        TelescopeMatching = { fg = C.text, bg = C.burnt_orange },
    }
end

return M
