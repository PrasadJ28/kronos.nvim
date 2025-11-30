local M = {}

function M.apply_neotree_overrides(opts)
    opts = opts or {}

    -- Ensure the nested structure exists
    opts.default_component_configs = opts.default_component_configs or {}
    opts.default_component_configs.icon = opts.default_component_configs.icon or {}
    opts.default_component_configs.name = opts.default_component_configs.name or {}

    -- 1. Force the Provider to use "NeoTreeDirectoryIcon" (Orange)
    opts.default_component_configs.icon.provider = function(icon, node, state)
        if node.type == "directory" then
            return {
                text = icon,
                highlight = "NeoTreeDirectoryIcon",
            }
        end
    end

    -- 2. Force specific folder states to use the highlight
    local force_hl = { icon = "", highlight = "NeoTreeDirectoryIcon" }
    -- We copy the logic to avoid referencing the same table object multiple times if needed,
    -- but usually modifying the table keys is enough.
    opts.default_component_configs.icon.folder_closed = { icon = "", highlight = "NeoTreeDirectoryIcon" }
    opts.default_component_configs.icon.folder_open   = { icon = "", highlight = "NeoTreeDirectoryIcon" }
    opts.default_component_configs.icon.folder_empty  = { icon = "", highlight = "NeoTreeDirectoryIcon" }

    -- 3. Disable Git Colors on names (Keep them Blue)
    opts.default_component_configs.name.use_git_status_colors = false

    return opts
end

return M
