local M = {}

-- 1. Lualine Reloader
function M.reload_lualine()
    if package.loaded["lualine"] == nil then return end
    package.loaded["lualine.themes.kronos"] = nil
    local lualine = require("lualine")
    local config = lualine.get_config()
    if config.options.theme == "kronos" or config.options.theme == "auto" then
        config.options.theme = require("lualine.themes.kronos")
        lualine.setup(config)
    end
end

-- 2. The Internal Patch Logic (Hidden)
local function apply_patch()
    local status_ok, defaults = pcall(require, "neo-tree.defaults")
    if not status_ok then return end

    -- Define the Orange Icon Provider
    local icon_provider = function(icon, node, state)
        if node.type == "directory" then
            return {
                text = icon,
                highlight = "NeoTreeDirectoryIcon",
            }
        end
    end

    -- Inject into Defaults
    local icon_config = defaults.default_component_configs.icon

    -- Force Provider
    icon_config.provider = icon_provider

    -- Force specific states to use the highlight (Handling string/table edge cases)
    local function set_hl(key)
        if type(icon_config[key]) == "string" then
            icon_config[key] = { icon = icon_config[key], highlight = "NeoTreeDirectoryIcon" }
        elseif type(icon_config[key]) == "table" then
            icon_config[key].highlight = "NeoTreeDirectoryIcon"
        end
    end

    set_hl("folder_closed")
    set_hl("folder_open")
    set_hl("folder_empty")

    -- Disable Git colors on names
    defaults.default_component_configs.name.use_git_status_colors = false
end

-- 3. The Public Hook (Run this in init.lua)
function M.hook_neotree()
    -- Case A: Neo-tree is already running (e.g. reload)
    if package.loaded["neo-tree"] then
        apply_patch()
    -- Case B: Neo-tree hasn't loaded yet. Wait for it!
    else
        vim.api.nvim_create_autocmd("User", {
            pattern = "LazyLoad",
            callback = function(event)
                if event.data == "neo-tree.nvim" then
                    apply_patch()
                    return true -- Delete autocmd after running once
                end
            end,
        })
    end
end

return M
