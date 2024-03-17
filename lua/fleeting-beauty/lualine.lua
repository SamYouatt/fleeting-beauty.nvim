return function(bingle)
    vim.notify("loading lualine theme", vim.log.levels.ERROR)

    local C = require("fleeting-beauty.palettes.dark")
    local colours = {}

    colours.normal = {
        a = { bg = C.blue, fg = C.base, gui = "bold" },
        b = { bg = C.alt_base, fg = C.blue },
        c = { bg = "NONE", fg = C.text },
    }

    colours.insert = {
        a = { bg = C.green, fg = C.base, gui = "bold" },
        b = { bg = C.alt_base, fg = C.green },
    }

    colours.terminal = {
        a = { bg = C.green, fg = C.base, gui = "bold" },
        b = { bg = C.alt_base, fg = C.green },
    }

    colours.command = {
        a = { bg = C.peach, fg = C.base, gui = "bold" },
        b = { bg = C.alt_base, fg = C.peach },
    }

    colours.visual = {
        a = { bg = C.mauve, fg = C.base, gui = "bold" },
        b = { bg = C.alt_base, fg = C.mauve },
    }

    colours.replace = {
        a = { bg = C.red, fg = C.base, gui = "bold" },
        b = { bg = C.alt_base, fg = C.red },
    }

    return colours
end
