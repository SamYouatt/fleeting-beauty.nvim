local M = {}

local function get_colours()
    local groups = {
        -- This is just any normal space so should be easy to see if its loaded
        Normal = { fg = #000000, bg = #BBBBBB }
    }

    return groups
end

function M.setup()
    vim.notify("Setting up nvim-fleet", vim.log.levels.ERROR)
end

function M.load()
    vim.notify("Loaded fleet theme", vim.log.levels.ERROR)

    local groups = get_colours()

    for group, colours in pair(groups) do
        vim.api.nvim_set_hl(0, group, colours)
    end
end

return M
