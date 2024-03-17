local colours = require("fleety.palettes.dark")
local fleety = {}

fleety.normal = {
    a = { bg = colours.blue, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.blue },
    c = { bg = "NONE", fg = colours.text },
}

fleety.insert = {
    a = { bg = colours.green, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.green },
}

fleety.terminal = {
    a = { bg = colours.green, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.green },
}

fleety.command = {
    a = { bg = colours.peach, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.peach },
}

fleety.visual = {
    a = { bg = colours.mauve, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.mauve },
}

fleety.replace = {
    a = { bg = colours.red, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.red },
}

fleety.inactive = {
    a = { bg = colours.alt_base, fg = colours.blue },
    b = { bg = colours.alt_base, fg = colours.surface1, gui = "bold" },
    c = { bg = colours.alt_base, fg = colours.overlay0 },
}

return fleety
