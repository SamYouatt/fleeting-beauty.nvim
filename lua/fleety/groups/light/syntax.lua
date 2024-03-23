local M = {}

function M.get()
    return {
        Comment = { fg = C.emerald },        -- just comments
        SpecialComment = {},                  -- special things inside a comment
        Constant = { fg = C.purple },       -- (preferred) any constant
        String = { fg = C.rust },             -- a string constant: "this is a string"
        Character = { fg = C.fuschia },          --  a character constant: 'c', '\n'
        Number = { fg = C.fuschia },           --   a number constant: 234, 0xff
        Float = { link = "Number" },          --    a floating point constant: 2.3e10
        Boolean = { fg = C.teal },            --  a boolean constant: TRUE, false
        Identifier = { fg = C.purple },         -- (preferred) any variable name
        Function = { fg = C.green },         -- function name (also: methods for classes)
        Statement = { fg = C.teal },          -- (preferred) any statement
        Conditional = { fg = C.blue },        --  if, then, else, endif, switch, etc.
        Repeat = { fg = C.blue },             --   for, do, while, etc.
        Label = { fg = C.blue },              --    case, default, etc.
        Operator = { fg = C.text },           -- "sizeof", "+", "*", etc.
        Keyword = { fg = C.blue },            --  any other keyword
        Exception = { fg = C.blue },          --  try, catch, throw

        PreProc = { fg = C.pink },                         -- (preferred) generic Preprocessor
        Include = { fg = C.blue },            --  preprocessor #include
        Define = {},                          -- preprocessor #define
        Macro = { fg = C.indigo },                           -- same as Define
        PreCondit = { fg = C.blue },                       -- preprocessor #if, #else, #endif, etc.

        StorageClass = { fg = C.blue },       -- static, register, volatile, etc.
        Structure = { fg = C.blue },          --  struct, union, enum, etc.
        Special = { link = "Character" },     -- (preferred) any special symbol
        Type = { fg = C.blue },               -- (preferred) int, long, char, etc.
        Typedef = {},                         --  A typedef
        SpecialChar = { link = "Character" }, -- special character in a constant
        Tag = { fg = C.blue },            -- you can use CTRL-] on this
        Delimiter = { fg = C.text },   -- character that needs attention
        Debug = {},                           -- debugging statements

        Underlined = {},                      -- (preferred) text that stands out, HTML links
        Bold = {},
        Italic = {},
        -- ("Ignore", below, may be invisible...)
        -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = { fg = C.red },    -- (preferred) any erroneous construct
        Todo = { fg = C.emerald }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        qfLineNr = {},
        qfFileName = {},
        htmlH1 = {},
        htmlH2 = {},
        -- mkdHeading = { fg = C.peach, style = { "bold" } },
        -- mkdCode = { bg = C.terminal_black, fg = C.text },
        mkdCodeDelimiter = {},
        mkdCodeStart = {},
        mkdCodeEnd = {},
        -- mkdLink = { fg = C.blue, style = { "underline" } },

        -- debugging
        debugPC = {},         -- used for highlighting the current line in terminal-debug
        debugBreakpoint = {}, -- used for breakpoint colors in terminal-debug
        -- illuminate
        illuminatedWord = {},
        illuminatedCurWord = {},
        -- diff
        diffAdded = { fg = C.green },
        diffRemoved = { fg = C.red },
        diffChanged = { fg = C.orange },
        diffOldFile = {},
        diffNewFile = {},
        diffFile = {},
        diffLine = { fg = C.subtext1 },
        diffIndexLine = {},
        DiffAdd = {},    -- diff mode: Added line |diff.txt|
        DiffChange = {}, -- diff mode: Changed line |diff.txt|
        DiffDelete = {}, -- diff mode: Deleted line |diff.txt|
        DiffText = {},   -- diff mode: Changed text within a changed line |diff.txt|
        -- NeoVim
        healthError = { fg = C.red },
        healthSuccess = { fg = C.green },
        healthWarning = { fg = C.yellow },
        -- misc

        -- glyphs
        GlyphPalette1 = {},
        GlyphPalette2 = {},
        GlyphPalette3 = {},
        GlyphPalette4 = {},
        GlyphPalette6 = {},
        GlyphPalette7 = {},
        GlyphPalette9 = {},

        -- rainbow
        rainbow1 = { fg = C.red },
        rainbow2 = { fg = C.orange },
        rainbow3 = { fg = C.yellow },
        rainbow4 = { fg = C.green },
        rainbow5 = { fg = C.blue },
        rainbow6 = { fg = C.lavender },
    }
end

return M
