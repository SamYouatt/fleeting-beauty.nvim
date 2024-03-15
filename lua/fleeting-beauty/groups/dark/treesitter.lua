local M = {}

function M.get()
    return {
        ["@variable"] = { fg = C.text },

        ["@constant"] = { fg = C.purple },

        ["@string"] = { fg = C.pink },

        ["@type"] = { link = "Type" },
    }
end

return M
