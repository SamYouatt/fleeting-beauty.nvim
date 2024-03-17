local M = {}

function M.get()
    return {
        ColorColumn = { bg = C.surface0 },                 -- used for the columns set with 'colorcolumn'
        Conceal = { fg = C.subtext1 },                     -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = { fg = C.base, bg = C.text },             -- character under the cursor
        lCursor = { link = "Cursor" },                     -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM = { link = "Cursor" },                    -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = C.alt_base },                -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine = { bg = C.alt_base },                  -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
        Directory = { fg = C.blue },                       -- directory names (and other special names in listings)
        EndOfBuffer = { fg = C.base },                     -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        ErrorMsg = { fg = C.red },                         -- error messages on the command line
        VertSplit = { fg = C.surface2 },                   -- the column separating vertically split windows
        Folded = { fg = C.teal },                          -- line used for closed folds
        FoldColumn = { fg = C.surface1 },                  -- 'foldcolumn'
        SignColumn = { fg = C.surface1 },                  -- column where |signs| are displayed
        SignColumnSB = { link = "SignColumn" },            -- column where |signs| are displayed
        Substitute = { fg = C.base, bg = C.blue },         -- |:substitute| replacement text highlighting
        LineNr = { fg = C.surface1 },                      -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr = { fg = C.surface0 },                -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
        MatchParen = { fg = C.text, bg = C.swamp },        -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg = { fg = C.text },                         -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea = { fg = C.text }, -- Area for messages and cmdline, don't set this highlight because of https://github.com/neovim/neovim/issues/17832
        MsgSeparator = {},                                 -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = { fg = C.blue },                         -- |more-prompt|
        NonText = { fg = C.subtext1 },                     -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal = { fg = C.text, bg = C.base },
        NormalNC = { link = "Normal" },                    -- normal text in non-current windows
        NormalSB = { link = "Normal" },                    -- normal text in non-current windows
        NormalFloat = { fg = C.text, bg = C.alt_base },    -- Normal text in floating windows.
        FloatBorder = { fg = C.surface0, bg = C.alt_base },
        FloatTitle = { fg = C.surface0, bg = C.alt_base }, -- Title of floating windows
        Pmenu = { fg = C.text, bg = C.alt_base },          -- Popup menu: normal item e.g. tab popup in command bar.
        PmenuSel = { fg = C.text, bg = C.ocean },          -- Popup menu: selected item.
        PmenuSbar = { bg = C.surface2 },                   -- Popup menu: scrollbar.
        PmenuThumb = { bg = C.surface1 },                  -- Popup menu: Thumb of the scrollbar.
        Question = { fg = C.blue },                        -- |hit-enter| prompt and yes/no questions
        QuickFixLine = { bg = C.surface2 },                -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search = { fg = C.base, bg = C.burnt_orange },     -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        IncSearch = { fg = C.base, bg = C.blue },          -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        CurSearch = { fg = C.test },                       -- 'cursearch' highlighting: highlights the current search you're on differently
        SpecialKey = { link = "NonText" },                 -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
        SpellBad = { sp = C.red },                         -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. SpellCap = {}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise. SpellLocal = {}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellCap = { sp = C.yellow },                      -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal = { sp = C.teal },                      -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare = { sp = C.green },                      -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine = { fg = C.text, bg = C.alt_base },     -- status line of current window
        StatusLineNC = { fg = C.text, bg = C.alt_base },   -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine = { fg = C.text, bg = C.alt_base },        -- tab pages line, not active tab page label
        TabLineFill = { fg = C.text, bg = C.alt_base },    -- tab pages line, where there are no labels
        TabLineSel = { fg = C.text, bg = C.base },         -- tab pages line, active tab page label
        Title = { fg = C.blue },                           -- titles for output from ":set all", ":autocmd" etc.
        Visual = { bg = C.navy },                          -- Visual mode selection
        VisualNOS = { bg = C.navy },                       -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg = { fg = C.orange },                    -- warning messages
        Whitespace = { fg = C.surface1 },                  -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu = { link = "PmenuSel" },                  -- current match in 'wildmenu' completion
        WinBar = { fg = C.surface0 },
        WinBarNC = { link = "WinBar" },
        WinSeparator = { fg = C.alt_base },
    }
end

return M
