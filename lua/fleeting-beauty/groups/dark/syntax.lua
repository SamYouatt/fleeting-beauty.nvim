local M = {}

function M.get()
    return {
        Comment = {},            -- just comments
        SpecialComment = {},                               -- special things inside a comment
        Constant = {},                                         -- (preferred) any constant
        String = {},           -- a string constant: "this is a string"
        Character = {},                                         --  a character constant: 'c', '\n'
        Number = {},           --   a number constant: 234, 0xff
        Float = {},                                         --    a floating point constant: 2.3e10
        Boolean = {},         --  a boolean constant: TRUE, false
        Identifier = {},  -- (preferred) any variable name
        Function = {},        -- function name (also: methods for classes)
        Statement = {},                                        -- (preferred) any statement
        Conditional = {}, --  if, then, else, endif, switch, etc.
        Repeat = {},             --   for, do, while, etc.
        Label = {},                                         --    case, default, etc.
        Operator = {},         -- "sizeof", "+", "*", etc.
        Keyword = {},         --  any other keyword
        Exception = {},       --  try, catch, throw

        PreProc = {},                                           -- (preferred) generic Preprocessor
        Include = {},         --  preprocessor #include
        Define = {},                                       -- preprocessor #define
        Macro = {},                                            -- same as Define
        PreCondit = {},                                    -- preprocessor #if, #else, #endif, etc.

        StorageClass = {},                                    -- static, register, volatile, etc.
        Structure = {},                                       --  struct, union, enum, etc.
        Special = {},                                           -- (preferred) any special symbol
        Type = {},              -- (preferred) int, long, char, etc.
        Typedef = {},                                         --  A typedef
        SpecialChar = {},                                  -- special character in a constant
        Tag = {},                       -- you can use CTRL-] on this
        Delimiter = {},                                     -- character that needs attention
        Debug = {},                                        -- debugging statements

        Underlined = {},                            -- (preferred) text that stands out, HTML links
        Bold = {},
        Italic = {},
        -- ("Ignore", below, may be invisible...)
        -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = {},                                      -- (preferred) any erroneous construct
        Todo = {}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
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
        debugPC = {}, -- used for highlighting the current line in terminal-debug
        debugBreakpoint = {},                -- used for breakpoint colors in terminal-debug
        -- illuminate
        illuminatedWord = {},
        illuminatedCurWord = {},
        -- diff
        diffAdded = {},
        diffRemoved = {},
        diffChanged = {},
        diffOldFile = {},
        diffNewFile = {},
        diffFile = {},
        diffLine = {},
        diffIndexLine = {},
        DiffAdd = {},   -- diff mode: Added line |diff.txt|
        DiffChange = {}, -- diff mode: Changed line |diff.txt|
        DiffDelete = {},  -- diff mode: Deleted line |diff.txt|
        DiffText = {},   -- diff mode: Changed text within a changed line |diff.txt|
        -- NeoVim
        healthError = {},
        healthSuccess = {},
        healthWarning = {},
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
        rainbow1 = {},
        rainbow2 = {},
        rainbow3 = {},
        rainbow4 = {},
        rainbow5 = {},
        rainbow6 = {},
    }
end

return M
