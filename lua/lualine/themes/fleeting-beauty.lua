local colours = require("fleeting-beauty.palettes.dark")
local fleeting_beauty = {}

fleeting_beauty.normal = {
    a = { bg = colours.blue, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.blue },
    c = { bg = "NONE", fg = colours.text },
}

fleeting_beauty.insert = {
    a = { bg = colours.green, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.green },
}

fleeting_beauty.terminal = {
    a = { bg = colours.green, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.green },
}

fleeting_beauty.command = {
    a = { bg = colours.peach, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.peach },
}

fleeting_beauty.visual = {
    a = { bg = colours.mauve, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.mauve },
}

fleeting_beauty.replace = {
    a = { bg = colours.red, fg = colours.base, gui = "bold" },
    b = { bg = colours.alt_base, fg = colours.red },
}

fleeting_beauty.inactive = {
    a = { bg = C.alt_base, fg = C.blue },
    b = { bg = C.alt_base, fg = C.surface1, gui = "bold" },
    c = { bg = C.alt_base, fg = C.overlay0 },
}

return fleeting_beauty
