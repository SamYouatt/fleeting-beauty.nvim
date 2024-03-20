local M = {}

local function get_colours()
    local light_palette = require("fleety.palettes.light")
    local dark_palette = require("fleety.palettes.dark")
    C = vim.o.background == "light" and light_palette or dark_palette

    local dark_theme = {}
    dark_theme.editor = require("fleety.groups.dark.editor").get()
    dark_theme.syntax = require("fleety.groups.dark.syntax").get()
    dark_theme.treesitter = require("fleety.groups.dark.treesitter").get()
    dark_theme.semantic_tokens = require("fleety.groups.dark.semantic_tokens").get()
    dark_theme.telescope = require("fleety.groups.dark.telescope").get()

    local light_theme = {}
    light_theme.editor = require("fleety.groups.light.editor").get()
    light_theme.syntax = require("fleety.groups.light.syntax").get()
    light_theme.treesitter = require("fleety.groups.light.treesitter").get()
    light_theme.semantic_tokens = require("fleety.groups.light.semantic_tokens").get()
    light_theme.telescope = require("fleety.groups.light.telescope").get()

    if vim.o.background == "dark" then
        local dark_groups = vim.tbl_deep_extend("keep", dark_theme.telescope, dark_theme.semantic_tokens,
            dark_theme.treesitter, dark_theme.syntax, dark_theme.editor)

        return dark_groups
    elseif vim.o.background == "light" then
        local light_groups = vim.tbl_deep_extend("keep", light_theme.telescope, light_theme.semantic_tokens,
            light_theme.treesitter, light_theme.syntax, light_theme.editor)

        return light_groups
    end

    vim.notify("Unknown background", vim.log.level.ERROR)
end

function M.setup()
end

function M.load()
    if vim.g.colors_name then
        vim.cmd.hi("clear")
    end
    vim.g.colors_name = "fleety"
    vim.o.termguicolors = true

    local groups = get_colours()

    for group, colours in pairs(groups) do
        vim.api.nvim_set_hl(0, group, colours)
    end
end

return M
