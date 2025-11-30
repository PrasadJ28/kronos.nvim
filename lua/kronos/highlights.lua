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
    set(0, "LineNr", { fg = c.color0 })
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
    set(0, "Type", { fg = c.color6 })
    set(0, "Identifier", { fg = c.color6 })
    set(0, "Statement", { fg = c.color2 })
    set(0, "Boolean", { fg = c.color5, bold = true })
    set(0, "Number", { fg = c.color5 })

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
    set(0, "NvimTreeFolderName", { fg = c.color4, bold = true })   -- Blue
    set(0, "NvimTreeRootFolder", { fg = c.color7, bold = true })   -- Orange Root
    set(0, "Directory", { fg = c.color4, bold = true })            -- Standard Vim

    -- 5. DIAGNOSTICS
    set(0, "DiagnosticError", { fg = c.color1 })
    set(0, "DiagnosticWarn", { fg = c.color3 })
    set(0, "DiagnosticInfo", { fg = c.color6 })
    set(0, "DiagnosticHint", { fg = c.color4 })

    require("kronos.plugins").setup(c, set)
end

return M
