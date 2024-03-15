local M = {}

local function get_colours()
    C = require("fleeting-beauty.palettes.dark")

    local theme = {}
    theme.editor = require("fleeting-beauty.groups.dark.editor").get()

    local groups = vim.tbl_deep_extend("keep", theme.editor)

    return groups
end

function M.setup()
end

function M.load()
    local groups = get_colours()

    for group, colours in pairs(groups) do
        vim.api.nvim_set_hl(0, group, colours)
    end
end

return M
