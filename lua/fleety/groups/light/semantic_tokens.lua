local M = {}

function M.get()
    return {
        ["@lsp.type.boolean"] = { link = "@boolean" },
        ["@lsp.type.builtinType"] = { link = "@type.builtin" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
        ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
        ["@lsp.type.interface"] = { fg = C.blue },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.number"] = { link = "@number" },
        ["@lsp.type.operator"] = { link = "@operator" },
        ["@lsp.type.parameter"] = { link = "@parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
        ["@lsp.type.typeAlias"] = { link = "@type.definition" },
        ["@lsp.type.unresolvedReference"] = { link = "@error" },
        ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
        ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
        ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
        ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
        ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
        ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.operator.injected"] = { link = "@operator" },
        ["@lsp.typemod.string.injected"] = { link = "@string" },
        ["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
        ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
        ["@lsp.typemod.variable.injected"] = { link = "@variable" },

        -- lua
        ["@lsp.type.property.lua"] = { link = "@variable.member.lua" },

        -- rust
        ["@lsp.type.macro.rust"] = { link = "@function.macro.rust" },
        ["@lsp.type.selfKeyword.rust"] = { fg = C.rust },
        ["@lsp.type.builtinType.rust"] = { fg = C.blue },
        ["@lsp.type.decorator.rust"] = { link = "@function.macro" },
        ["@punctuation.special.rust"] = { fg = C.text },
    }
end

return M
