local M = {}

function M.get()
    return {
        -- Identifiers
        ["@variable"] = { fg = C.text },           -- Any variable name that does not have another highlight.
        ["@variable.builtin"] = { fg = C.rust },   -- Variable names that are defined by the languages, like this or self.
        ["@variable.parameter"] = { fg = C.text }, -- For parameters of a function.
        ["@variable.member"] = { fg = C.text },    -- For fields.

        ["@constant"] = { link = "Constant" },     -- For constants
        ["@constant.builtin"] = { fg = C.teal },   -- For constant that are built in the language: nil in Lua.
        ["@constant.macro"] = { link = "Macro" },  -- For constants that are defined by macros: NULL in C.

        ["@module"] = {},                          -- For identifiers referring to modules and namespaces.
        ["@label"] = { link = "Label" },           -- For labels: label: in C and :label: in Lua.

        -- Literals
        ["@string"] = { link = "String" },                 -- For strings.
        ["@string.regexp"] = {},                           -- For regexes.
        ["@string.escape"] = { link = "Character" },       -- For escape characters within a string.
        ["@string.special"] = { link = "Special" },        -- other special strings (e.g. dates)
        ["@string.special.symbol"] = { link = "Special" },
        ["@string.special.url"] = { fg = C.sapphire },                      -- urls, links and emails

        ["@character"] = { link = "Character" },           -- character literals
        ["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

        ["@boolean"] = { link = "Boolean" },               -- For booleans.
        ["@number"] = { link = "Number" },                 -- For all numbers
        ["@number.float"] = { link = "Float" },            -- For floats.

        -- Types
        ["@type"] = { link = "Type" },              -- For types.
        ["@type.builtin"] = { fg = C.teal },                     -- For builtin types.
        ["@type.definition"] = { link = "Type" },   -- type definitions (e.g. `typedef` in C)
        ["@type.qualifier"] = { link = "Keyword" }, -- type qualifiers (e.g. `const`)

        ["@attribute"] = { link = "Constant" },     -- attribute annotations (e.g. Python decorators)
        ["@property"] = {},                         -- Same as TSField.

        -- Functions
        ["@function"] = { link = "Function" },             -- For function (calls and definitions).
        ["@function.builtin"] = {},                        -- For builtin functions: table.insert in Lua.
        ["@function.call"] = { link = "Function" },        -- function calls
        ["@function.macro"] = { fg = C.leaf },             -- For macro defined functions (calls and definitions): each macro_rules in Rust.

        ["@function.method"] = { link = "Function" },      -- For method definitions.
        ["@function.method.call"] = { link = "Function" }, -- For method calls.

        ["@constructor"] = {},                             -- For constructor calls and definitions: = { } in Lua, and Java constructors.
        ["@operator"] = { link = "Operator" },             -- For any operator: +, but also -> and * in C.

        -- Keywords
        ["@keyword"] = { link = "Keyword" },                 -- For keywords that don't fall in previous categories.
        ["@keyword.function"] = { link = "Keyword" },        -- For keywords used to define a function.
        ["@keyword.operator"] = { link = "Operator" },       -- For new keyword operator
        ["@keyword.import"] = { link = "Include" },          -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
        ["@keyword.storage"] = { link = "StorageClass" },    -- visibility/life-time/etc. modifiers (e.g. `static`)
        ["@keyword.repeat"] = { link = "Repeat" },           -- For keywords related to loops.
        ["@keyword.return"] = { link = "Keyword" },
        ["@keyword.exception"] = { link = "Exception" },     -- For exception related keywords.

        ["@keyword.conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.

        ["@keyword.directive"] = {},                         -- various preprocessor directives & shebangs
        ["@keyword.directive.define"] = {},                  -- preprocessor definition directives
        -- JS & derivative
        ["@keyword.export"] = {},

        -- Punctuation
        ["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters (e.g. `;` / `.` / `,`).
        ["@punctuation.bracket"] = { fg = C.text },          -- For brackets and parenthesis.
        ["@punctuation.special"] = { link = "Special" },     -- For special punctuation that does not fall in the categories before (e.g. `{}` in string interpolation).

        -- Comment
        ["@comment"] = { link = "Comment" },

        ["@comment.error"] = { link = "Error" },
        ["@comment.warning"] = { fg = C.yellow },
        ["@comment.hint"] = { fg = C.navy },
        ["@comment.todo"] = { link = "Todo" },

        -- Markup
        ["@markup"] = { fg = C.text },                   -- For strings considerated text in a markup language.
        ["@markup.strong"] = {},                         -- bold
        ["@markup.italic"] = {},                         -- italic
        ["@markup.strikethrough"] = {},                  -- strikethrough text
        ["@markup.underline"] = { link = "Underlined" }, -- underlined text

        ["@markup.heading"] = {},                        -- titles like: # Example

        ["@markup.math"] = {},                           -- math environments (e.g. `$ ... $` in LaTeX)
        ["@markup.environment"] = {},                    -- text environments of markup languages
        ["@markup.environment.name"] = {},               -- text indicating the type of an environment

        ["@markup.link"] = { link = "Tag" },             -- text references, footnotes, citations, etc.
        ["@markup.link.url"] = {},                       -- urls, links and emails

        ["@markup.raw"] = {},                            -- used for inline code in markdown and for doc in python (""")

        ["@markup.list"] = { link = "Special" },
        ["@markup.list.checked"] = {},   -- todo notes
        ["@markup.list.unchecked"] = {}, -- todo notes

        -- Diff
        ["@diff.plus"] = { link = "diffAdded" },    -- added text (for diff files)
        ["@diff.minus"] = { link = "diffRemoved" }, -- deleted text (for diff files)
        ["@diff.delta"] = { link = "diffChanged" }, -- deleted text (for diff files)

        -- Tags
        ["@tag"] = {},           -- Tags like html tag names.
        ["@tag.attribute"] = {}, -- Tags like html tag names.
        ["@tag.delimiter"] = {}, -- Tag delimiter like < > /

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
        ["@property.css"] = {},
        ["@property.id.css"] = {},
        ["@property.class.css"] = {},
        ["@type.css"] = {},
        ["@type.tag.css"] = {},
        ["@string.plain.css"] = {},
        ["@number.css"] = {},

        -- toml
        ["@property.toml"] = {}, -- Differentiates between string and properties

        -- json
        ["@label.json"] = {}, -- For labels: label: in C and :label: in Lua.

        -- lua
        ["@constructor.lua"] = {}, -- For constructor calls and definitions: = { } in Lua.

        -- typescript
        ["@property.typescript"] = {},
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
end

return M
