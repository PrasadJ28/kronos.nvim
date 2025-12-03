local M = {}

function M.setup()
    local c = require("kronos.colors").palette
    local set = vim.api.nvim_set_hl

    -- Reset
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end

    -- 1. BASIC EDITING
    set(0, "Normal", { fg = c.fg, bg = c.bg })
    set(0, "SignColumn", { bg = "NONE" })
    set(0, "CursorLine", { bg = "#111111" })
    set(0, "LineNr", { fg = c.color10 })
    set(0, "CursorLineNr", { fg = c.color3, bold = true })
    set(0, "Visual", { bg = c.color10 })
    set(0, "Search", { fg = c.bg, bg = c.color3 })
    set(0, "StatusLine", { fg = c.fg, bg = c.color9 })
    set(0, "WinSeparator", { fg = c.color0 })

    -- 2. SYNTAX
    set(0, "Comment", { fg = c.color0, italic = true })
    set(0, "Constant", { fg = c.color5 })
    set(0, "String", { fg = c.color2 })
    set(0, "Function", { fg = c.color4, bold = true })
    set(0, "Keyword", { fg = c.color7 })
    set(0, "Type", { fg = c.color1 })
    set(0, "Identifier", { fg = c.color6 })
    set(0, "@variable", { link = "Identifier" })
    set(0, "Statement", { fg = c.color2 })
    set(0, "Boolean", { fg = c.color5, bold = true })
    set(0, "Number", { fg = c.color5 })
   -- "Search": All matches elsewhere in the file
    set(0, "Search",    { fg = c.bg, bg = c.color5 })

    -- "IncSearch": The text while you are typing the query
    set(0, "IncSearch", { fg = c.bg, bg = c.color5 })

    -- "CurSearch": The specific match under your cursor (This is the one you are likely seeing!)
    set(0, "CurSearch", { fg = c.bg, bg = c.color5 })

    -- ... existing syntax ...
   -- ... inside M.setup() ...

    -- 1. BASE FUNCTIONS -> BLUE (color4)
    -- This handles standard functions like print(), main(), setup()
    set(0, "Function", { fg = c.color4, bold = true })
    set(0, "@function", { link = "Function" })
    set(0, "@lsp.type.function", { link = "Function" })

    -- 2. METHODS -> CYAN (color6)
    -- We explicitly define these attributes instead of linking to ensure they stand out.
    -- This handles object methods like: user.save(), table.insert()
    set(0, "@method", { fg = c.color6, italic = true })
    set(0, "@function.method", { fg = c.color6, italic = true })
    set(0, "@lsp.type.method", { fg = c.color6, italic = true })

    -- ... inside M.setup() ...

    -- 1. DETACH MEMBERS FROM IDENTIFIERS
    -- This targets "setup" in "M.setup" or "insert" in "table.insert"

    -- Option A: Make them look like Functions (Blue) - Recommended for code like M.setup()
    set(0, "@variable.member", { fg = c.color11})
    set(0, "@property", { fg = c.color11 })
    set(0, "@lsp.type.property", { link = "@property" })

    -- Option B: Keep them Cyan (if you want them to match variables)
    -- set(0, "@variable.member", { fg = c.color6 })

    -- 2. ENSURE PUNCTUATION IS SUBTLE
    -- This targets the "." in "M.setup"
    set(0, "@punctuation.delimiter", { fg = c.color6 }) -- Grey dot
    set(0, "@punctuation.bracket", { fg = c.color6 })   -- Grey ()
    -- 3. FOLDER ICONS (Universal Support)
    -- Neo-tree
    set(0, "NeoTreeDirectoryIcon", { fg = c.color7 }) -- Orange
    set(0, "NeoTreeClosed", { fg = c.color7 })
    set(0, "NeoTreeOpen", { fg = c.color7 })
    -- NvimTree (Added this so it works for both plugins)
    set(0, "NvimTreeFolderIcon", { fg = c.color7 })   -- Orange
    set(0, "NvimTreeOpenedFolderIcon", { fg = c.color7 })

    -- 4. FOLDER NAMES (Text)
    -- Neo-tree
    set(0, "NeoTreeDirectoryName", { fg = c.color4, bold = true }) -- Blue
    set(0, "NeoTreeRootName", { fg = c.color7, bold = true })      -- Orange Root
    -- NvimTree
    set(0, "NvimTreeFolderName", { fg = c.color3, bold = true })   -- Blue
    set(0, "NvimTreeRootFolder", { fg = c.color7, bold = true })   -- Orange Root
    set(0, "Directory", { fg = c.color3, bold = true })            -- Standard Vim

    -- 5. DIAGNOSTICS
    set(0, "DiagnosticError", { fg = c.color1 })
    set(0, "DiagnosticWarn", { fg = c.color3 })
    set(0, "DiagnosticInfo", { fg = c.color6 })
    set(0, "DiagnosticHint", { fg = c.color4 })

    require("kronos.plugins").setup(c, set)
end

return M
