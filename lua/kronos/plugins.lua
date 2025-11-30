local M = {}

function M.setup(c, set)
    -- 1. Neo-Tree (File Explorer)
    set(0, "NeoTreeNormal", { fg = c.fg, bg = c.bg })
    set(0, "NeoTreeNormalNC", { fg = c.fg, bg = c.bg })

    -- FOLDER NAMES -> Blue (color4)
    set(0, "NeoTreeDirectoryName", { fg = c.color4, bold = true })

    -- FOLDER ICONS -> Orange (color7)
    set(0, "NeoTreeDirectoryIcon", { fg = c.color7 })

    -- ROOT FOLDER -> Orange (color7)
    set(0, "NeoTreeRootName", { fg = c.color7, bold = true })

    set(0, "NeoTreeGitAdded", { fg = c.color2 })           -- Green
    set(0, "NeoTreeGitConflict", { fg = c.color1, bold = true }) -- Red
    set(0, "NeoTreeGitDeleted", { fg = c.color1 })         -- Red
    set(0, "NeoTreeGitModified", { fg = c.color3 })        -- Yellow
    set(0, "NeoTreeGitUntracked", { fg = c.color2, italic = true }) -- Green
    set(0, "NeoTreeIndentMarker", { fg = c.color0 })       -- Grey
    set(0, "NeoTreeSymbolicLinkTarget", { fg = c.color5 }) -- Purple
    set(0, "NeoTreeWinSeparator", { fg = c.color0 })       -- Grey

    -- 2. Bufferline (Tabs)
    set(0, "BufferLineFill", { bg = c.color8 }) -- bg_dark
    set(0, "BufferLineBackground", { fg = c.color0, bg = c.color8 })

    -- Selected Buffer (Active)
    set(0, "BufferLineBufferSelected", { fg = c.fg, bg = c.bg, bold = true, italic = false })
    set(0, "BufferLineSeparatorSelected", { fg = c.color8, bg = c.bg })
    set(0, "BufferLineIndicatorSelected", { fg = c.color7, bg = c.bg }) -- Orange Indicator (color7)

    -- Visible but inactive
    set(0, "BufferLineBufferVisible", { fg = c.fg, bg = c.color9 })
    set(0, "BufferLineSeparatorVisible", { fg = c.color8, bg = c.color9 })

    -- Modified Buffers
    set(0, "BufferLineModified", { fg = c.color3, bg = c.color8 }) -- Yellow
    set(0, "BufferLineModifiedSelected", { fg = c.color3, bg = c.bg })

    -- 3. Noice & Notify
    set(0, "NotifyBackground", { bg = c.bg })
    set(0, "NotifyInfoIcon", { fg = c.color6 })  -- Cyan
    set(0, "NotifyInfoTitle", { fg = c.color6 })
    set(0, "NotifyErrorIcon", { fg = c.color1 }) -- Red
    set(0, "NotifyErrorTitle", { fg = c.color1 })
    set(0, "NotifyWarnIcon", { fg = c.color3 })  -- Yellow
    set(0, "NotifyWarnTitle", { fg = c.color3 })

    -- Noice Command Line
    set(0, "NoiceCmdlinePopup", { bg = c.color9 })
    set(0, "NoiceCmdlinePopupBorder", { fg = c.color4, bg = c.color9 }) -- Blue
    set(0, "NoiceCmdlinePopupTitle", { fg = c.color4, bold = true })

    -- 4. Telescope
    set(0, "TelescopeNormal", { fg = c.fg, bg = c.bg })
    set(0, "TelescopeBorder", { fg = c.color0, bg = c.bg }) -- Grey
    set(0, "TelescopePromptNormal", { fg = c.fg, bg = c.color9 })
    set(0, "TelescopePromptBorder", { fg = c.color0, bg = c.color9 })
    set(0, "TelescopePromptTitle", { fg = c.color4, bold = true }) -- Blue
    set(0, "TelescopeSelection", { bg = c.color10, bold = true }) -- Selection
    set(0, "TelescopeDirectory", { fg = c.color4 }) -- Blue Text

    -- 5. Gitsigns
    set(0, "GitSignsAdd", { fg = c.color2 })    -- Green
    set(0, "GitSignsChange", { fg = c.color3 }) -- Yellow
    set(0, "GitSignsDelete", { fg = c.color1 }) -- Red
    set(0, "GitSignsCurrentLineBlame", { fg = c.color0, italic = true }) -- Grey

    -- 6. Cmp (Autocompletion Menu)
    set(0, "Pmenu", { fg = c.fg, bg = c.color9 })
    set(0, "PmenuSel", { fg = c.fg, bg = c.color10, bold = true })
    set(0, "PmenuSbar", { bg = c.color9 })
    set(0, "PmenuThumb", { bg = c.color0 })
    set(0, "CmpItemAbbrDeprecated", { fg = c.color0, strikethrough = true })
    set(0, "CmpItemKind", { fg = c.color4 })         -- Blue
    set(0, "CmpItemKindFunction", { fg = c.color4 }) -- Blue
    set(0, "CmpItemKindMethod", { fg = c.color4 })   -- Blue
    set(0, "CmpItemKindVariable", { fg = c.color6 }) -- Cyan
    set(0, "CmpItemKindKeyword", { fg = c.color1 })  -- Red

    -- 7. WhichKey
    set(0, "WhichKey", { fg = c.color4 })      -- Blue
    set(0, "WhichKeyGroup", { fg = c.color5 }) -- Purple
    set(0, "WhichKeyDesc", { fg = c.fg })
    set(0, "WhichKeyFloat", { bg = c.color9 })

    -- 8. Indent Blankline
    set(0, "IblIndent", { fg = c.color0 })     -- Grey
    set(0, "IblScope", { fg = c.color4 })      -- Blue

    -- 9. Alpha / Dashboard
    set(0, "AlphaHeader", { fg = c.color4 })   -- Blue
    set(0, "DashboardHeader", { fg = c.color4 })
    set(0, "AlphaButtons", { fg = c.color6 })  -- Cyan
    set(0, "DashboardFooter", { fg = c.color0, italic = true })

    -- 10. Navic / Dropbar
    set(0, "NavicText", { fg = c.fg })
    set(0, "NavicSeparator", { fg = c.color0 })
end

return M
