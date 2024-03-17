local M = {}

function M.get()
    local colours = {
        -- Identifiers
        ["@variable"] = { fg = C.text },     -- Any variable name that does not have another highlight.
        ["@variable.builtin"] = { fg = C.teal }, -- Variable names that are defined by the languages, like this or self.
        ["@variable.parameter"] = { fg = C.text }, -- For parameters of a function.
        ["@variable.member"] = { fg = C.text }, -- For fields.

        ["@constant"] = { link = "Constant" }, -- For constants
        ["@constant.builtin"] = { fg = C.teal }, -- For constant that are built in the language: nil in Lua.
        ["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.

        ["@module"] = {},                    -- For identifiers referring to modules and namespaces.
        ["@label"] = { link = "Label" },     -- For labels: label: in C and :label: in Lua.

        -- Literals
        ["@string"] = { link = "String" },           -- For strings.
        ["@string.regexp"] = {},                     -- For regexes.
        ["@string.escape"] = { link = "Character" }, -- For escape characters within a string.
        ["@string.special"] = { link = "Special" },  -- other special strings (e.g. dates)
        ["@string.special.symbol"] = { link = "Special" },
        ["@string.special.url"] = { fg = C.sapphire }, -- urls, links and emails

        ["@character"] = { link = "Character" },     -- character literals
        ["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

        ["@boolean"] = { link = "Boolean" },         -- For booleans.
        ["@number"] = { link = "Number" },           -- For all numbers
        ["@number.float"] = { link = "Float" },      -- For floats.

        -- Types
        ["@type"] = { link = "Type" },        -- For types.
        ["@type.builtin"] = { fg = C.teal },  -- For builtin types.
        ["@type.definition"] = { link = "Type" }, -- type definitions (e.g. `typedef` in C)
        ["@type.qualifier"] = { link = "Keyword" }, -- type qualifiers (e.g. `const`)

        ["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
        ["@property"] = { fg = C.text },      -- Same as TSField.

        -- Functions
        ["@function"] = { link = "Function" },       -- For function (calls and definitions).
        ["@function.builtin"] = {},                  -- For builtin functions: table.insert in Lua.
        ["@function.call"] = { link = "Function" },  -- function calls
        ["@function.macro"] = { fg = C.leaf },       -- For macro defined functions (calls and definitions): each macro_rules in Rust.

        ["@function.method"] = { link = "Function" }, -- For method definitions.
        ["@function.method.call"] = { link = "Function" }, -- For method calls.

        ["@constructor"] = { fg = C.blue },          -- For constructor calls and definitions: = { } in Lua, and Java constructors.
        ["@operator"] = { link = "Operator" },       -- For any operator: +, but also -> and * in C.

        -- Keywords
        ["@keyword"] = { link = "Keyword" },           -- For keywords that don't fall in previous categories.
        ["@keyword.function"] = { link = "Keyword" },  -- For keywords used to define a function.
        ["@keyword.operator"] = { link = "Operator" }, -- For new keyword operator
        ["@keyword.import"] = { link = "Include" },    -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
        ["@keyword.storage"] = { link = "StorageClass" }, -- visibility/life-time/etc. modifiers (e.g. `static`)
        ["@keyword.repeat"] = { link = "Repeat" },     -- For keywords related to loops.
        ["@keyword.return"] = { link = "Keyword" },
        ["@keyword.exception"] = { link = "Exception" }, -- For exception related keywords.

        ["@keyword.conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.

        ["@keyword.directive"] = {},                   -- various preprocessor directives & shebangs
        ["@keyword.directive.define"] = {},            -- preprocessor definition directives
        -- JS & derivative
        ["@keyword.export"] = {},

        -- Punctuation
        ["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters (e.g. `;` / `.` / `,`).
        ["@punctuation.bracket"] = { fg = C.text },    -- For brackets and parenthesis.
        ["@punctuation.special"] = { link = "Special" }, -- For special punctuation that does not fall in the categories before (e.g. `{}` in string interpolation).

        -- Comment
        ["@comment"] = { link = "Comment" },

        ["@comment.error"] = { link = "Error" },
        ["@comment.warning"] = { fg = C.yellow },
        ["@comment.hint"] = { fg = C.navy },
        ["@comment.todo"] = { link = "Todo" },

        -- Markup
        ["@markup"] = { fg = C.text },             -- For strings considerated text in a markup language.
        ["@markup.strong"] = {},                   -- bold
        ["@markup.italic"] = {},                   -- italic
        ["@markup.strikethrough"] = {},            -- strikethrough text
        ["@markup.underline"] = { link = "Underlined" }, -- underlined text

        ["@markup.heading"] = {},                  -- titles like: # Example

        ["@markup.math"] = {},                     -- math environments (e.g. `$ ... $` in LaTeX)
        ["@markup.environment"] = {},              -- text environments of markup languages
        ["@markup.environment.name"] = {},         -- text indicating the type of an environment

        ["@markup.link"] = { link = "Tag" },       -- text references, footnotes, citations, etc.
        ["@markup.link.url"] = {},                 -- urls, links and emails

        ["@markup.raw"] = {},                      -- used for inline code in markdown and for doc in python (""")

        ["@markup.list"] = { link = "Special" },
        ["@markup.list.checked"] = {}, -- todo notes
        ["@markup.list.unchecked"] = {}, -- todo notes

        -- Diff
        ["@diff.plus"] = { link = "diffAdded" }, -- added text (for diff files)
        ["@diff.minus"] = { link = "diffRemoved" }, -- deleted text (for diff files)
        ["@diff.delta"] = { link = "diffChanged" }, -- deleted text (for diff files)

        -- Tags
        ["@tag"] = { fg = C.blue },         -- Tags like html tag names.
        ["@tag.attribute"] = { fg = C.lavender }, -- Tags like html tag names.
        ["@tag.delimiter"] = { fg = C.subtext1 }, -- Tag delimiter like < > /

        -- Misc
        ["@error"] = { link = "Error" },

        -- Language specific:
        -- bash
        ["@function.builtin.bash"] = {},

        -- markdown
        ["@markup.heading.1.markdown"] = { link = "rainbow1" },
        ["@markup.heading.2.markdown"] = { link = "rainbow2" },
        ["@markup.heading.3.markdown"] = { link = "rainbow3" },
        ["@markup.heading.4.markdown"] = { link = "rainbow4" },
        ["@markup.heading.5.markdown"] = { link = "rainbow5" },
        ["@markup.heading.6.markdown"] = { link = "rainbow6" },

        -- java
        ["@constant.java"] = {},

        -- css
        ["@property.css"] = { fg = C.teal },
        ["@property.id.css"] = { fg = C.blue },
        ["@property.class.css"] = { fg = C.lavender },
        ["@type.css"] = { fg = C.teal },
        ["@type.tag.css"] = { fg = C.yellow },
        ["@string.css"] = { fg = C.yellow },
        ["@string.plain.css"] = { fg = C.pink },
        ["@number.css"] = { fg = C.yellow },
        ["@function.css"] = { fg = C.lavender },
        ["@variable.css"] = { fg = C.pink },

        -- toml
        ["@property.toml"] = {}, -- Differentiates between string and properties

        -- json
        ["@label.json"] = {}, -- For labels: label: in C and :label: in Lua.

        -- lua
        ["@constructor.lua"] = {}, -- For constructor calls and definitions: = { } in Lua.
        ["@variable.member.lua"] = { fg = C.blue },

        -- typescript
        ["@property.typescript"] = { fg = C.test },
        ["@constructor.typescript"] = {},

        -- TSX (Typescript React)
        ["@constructor.tsx"] = {},
        ["@tag.attribute.tsx"] = { fg = C.lavender },

        -- yaml
        ["@variable.member.yaml"] = {}, -- For fields.

        -- Ruby
        ["@string.special.symbol.ruby"] = {},

        -- PHP
        ["@function.method.php"] = { link = "Function" },
        ["@function.method.call.php"] = { link = "Function" },

        -- C/CPP
        ["@type.builtin.c"] = {},
        ["@property.cpp"] = {},
        ["@type.builtin.cpp"] = {},

        -- gitcommit
        ["@comment.warning.gitcommit"] = {},

        -- Misc
        gitcommitSummary = {},
        zshKSHFunction = { link = "Function" },
    }

    -- Legacy highlights
    colours["@parameter"] = colours["@variable.parameter"]
    colours["@field"] = colours["@variable.member"]
    colours["@namespace"] = colours["@module"]
    colours["@float"] = colours["@number.float"]
    colours["@symbol"] = colours["@string.special.symbol"]
    colours["@string.regex"] = colours["@string.regexp"]

    colours["@text"] = colours["@markup"]
    colours["@text.strong"] = colours["@markup.strong"]
    colours["@text.emphasis"] = colours["@markup.italic"]
    colours["@text.underline"] = colours["@markup.underline"]
    colours["@text.strike"] = colours["@markup.strikethrough"]
    colours["@text.uri"] = colours["@markup.link.url"]
    colours["@text.math"] = colours["@markup.math"]
    colours["@text.environment"] = colours["@markup.environment"]
    colours["@text.environment.name"] = colours["@markup.environment.name"]

    colours["@text.title"] = colours["@markup.heading"]
    colours["@text.literal"] = colours["@markup.raw"]
    colours["@text.reference"] = colours["@markup.link"]

    colours["@text.todo.checked"] = colours["@markup.list.checked"]
    colours["@text.todo.unchecked"] = colours["@markup.list.unchecked"]

    colours["@comment.note"] = colours["@comment.hint"]

    -- @text.todo is now for todo comments, not todo notes like in markdown
    colours["@text.todo"] = colours["@comment.todo"]
    colours["@text.warning"] = colours["@comment.warning"]
    colours["@text.note"] = colours["@comment.note"]
    colours["@text.danger"] = colours["@comment.error"]

    -- @text.uri is now
    -- > @markup.link.url in markup links
    -- > @string.special.url outside of markup
    colours["@text.uri"] = colours["@markup.link.uri"]

    colours["@method"] = colours["@function.method"]
    colours["@method.call"] = colours["@function.method.call"]

    colours["@text.diff.add"] = colours["@diff.plus"]
    colours["@text.diff.delete"] = colours["@diff.minus"]

    colours["@define"] = colours["@keyword.directive.define"]
    colours["@preproc"] = colours["@keyword.directive"]
    colours["@storageclass"] = colours["@keyword.storage"]
    colours["@conditional"] = colours["@keyword.conditional"]
    colours["@exception"] = colours["@keyword.exception"]
    colours["@include"] = colours["@keyword.import"]
    colours["@repeat"] = colours["@keyword.repeat"]

    colours["@symbol.ruby"] = colours["@string.special.symbol.ruby"]

    colours["@variable.member.yaml"] = colours["@field.yaml"]

    colours["@text.title.1.markdown"] = colours["@markup.heading.1.markdown"]
    colours["@text.title.2.markdown"] = colours["@markup.heading.2.markdown"]
    colours["@text.title.3.markdown"] = colours["@markup.heading.3.markdown"]
    colours["@text.title.4.markdown"] = colours["@markup.heading.4.markdown"]
    colours["@text.title.5.markdown"] = colours["@markup.heading.5.markdown"]
    colours["@text.title.6.markdown"] = colours["@markup.heading.6.markdown"]

    colours["@method.php"] = colours["@function.method.php"]
    colours["@method.call.php"] = colours["@function.method.call.php"]

    return colours
end

return M
