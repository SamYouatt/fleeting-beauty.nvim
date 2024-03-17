local M = {}

local function get_colours()
    C = require("fleeting-beauty.palettes.dark")

    local theme = {}
    theme.editor = require("fleeting-beauty.groups.dark.editor").get()
    theme.syntax = require("fleeting-beauty.groups.dark.syntax").get()
    theme.treesitter = require("fleeting-beauty.groups.dark.treesitter").get()
    theme.semantic_tokens = require("fleeting-beauty.groups.dark.semantic_tokens").get()
    theme.telescope = require("fleeting-beauty.groups.dark.telescope").get()

    local groups = vim.tbl_deep_extend("keep", theme.telescope, theme.semantic_tokens, theme.treesitter, theme.syntax, theme.editor)

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
