local M = {}

M.config = {
    theme = "dark", -- I recommend keeping 'dark' as default unless 'dusk' exists in colors.lua
}

function M.setup(opts)
    M.config = vim.tbl_deep_extend("force", M.config, opts or {})
    M.load()
end

function M.load()
    -- 1. Standard Vim Settings
    vim.o.termguicolors = true

    -- 2. Set the Colorscheme Name dynamically
    -- This helps Neovim know which variant is running (e.g. for status lines)
    if M.config.theme == "dark" then
        vim.g.colors_name = "kronos"
    else
        vim.g.colors_name = "kronos-" .. M.config.theme
    end

    -- 3. Setup Colors (Loads the palette based on M.config.theme)
    require("kronos.colors").setup(M.config)

    -- 4. Apply Highlights
    require("kronos.highlights").setup()

    -- 5. Reload Lualine (Updates status bar colors instantly)
    require("kronos.util").reload_lualine()

    -- 6. Set the Neo-tree Hook (Safe Lazy Loading overrides)
    require("kronos.util").hook_neotree()
end

return M
