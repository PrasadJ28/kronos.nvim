local M = {}

M.config = {
    theme = "sunset",
}

function M.setup(opts)
    M.config = vim.tbl_deep_extend("force", M.config, opts or {})
    M.load()
end

function M.load()
    vim.o.termguicolors = true
    vim.g.colors_name = "kronos"


    -- 1. Setup Colors
    vim.o.termguicolors = true

    -- CHANGED: dynamic naming based on the config
    if M.config.theme == "dark" then
        vim.g.colors_name = "kronos"
    else
        vim.g.colors_name = "kronos-" .. M.config.theme
    end
    require("kronos.colors").setup(M.config)

    -- 2. Apply Highlights
    require("kronos.highlights").setup()

    -- 3. Reload Lualine
    require("kronos.util").reload_lualine()

    -- 4. Set the Neo-tree Hook (Safe Lazy Loading)
    require("kronos.util").hook_neotree()
end

return M

