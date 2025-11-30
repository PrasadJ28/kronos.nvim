local M = {}

-- Default Configuration
M.config = {
    theme = "dusk", -- Default to your main dark theme
    transparent = false,
}

function M.setup(opts)
    M.config = vim.tbl_deep_extend("force", M.config, opts or {})
    M.load()
end

function M.load()
    -- 1. Standard Vim Settings
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.termguicolors = true

    -- 2. Set the Colorscheme Name dynamically
    -- If using the default "dusk", just call it "kronos"
    -- Otherwise, call it "kronos-sea", "kronos-night", etc.
    if M.config.theme == "dusk" then
        vim.g.colors_name = "kronos"
    else
        vim.g.colors_name = "kronos-" .. M.config.theme
    end

    -- 3. Setup Colors (Loads the specific palette: dusk, sea, astal, etc.)
    require("kronos.colors").setup(M.config)

    -- 4. Apply Highlights (The Logic)
    require("kronos.highlights").setup()

    -- 5. Reload Lualine (Updates status bar colors instantly)
    require("kronos.util").reload_lualine()

    -- 6. Set the Neo-tree Hook (Injects Orange Icons safely)
    require("kronos.util").hook_neotree()
end

return M
