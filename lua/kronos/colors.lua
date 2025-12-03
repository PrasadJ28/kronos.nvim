local M = {}

local palettes = {
    -- 1. Your Original Dark Theme
    dusk = {
        bg = "#030f18", fg = "#ffffff",
        color0 = "#555555", -- Grey
        color1 = "#FF554D", -- Red
        color2 = "#80EF80", -- Green
        color3 = "#FFA500", -- Yellow
        color4 = "#AA6AC8", -- Purple
        color5 = "#Fb6F92", -- Pink
        color6 = "#03A9F4", -- Blue
        color7 = "#E25303", -- Orange
        color8 = "#010508", -- bg_dark
        color9 = "#051520", -- bg_light
        color10 = "#333333", -- selection
        color11 = "#10BC9F", --method
        error = "#ff5555", warning = "#ffa500", info = "#8be9fd", hint = "#bd93f9",
    },

    -- 2. New "Light" Theme
    night = {
        bg = "#0c0807", fg = "#383a42", -- Light BG, Dark Text
        color0 = "#a0a1a7", -- Light Grey
        color1 = "#e45649", -- Red
        color2 = "#50a14f", -- Green
        color3 = "#986801", -- Yellow/Brown
        color4 = "#4078f2", -- Blue
        color5 = "#a626a4", -- Purple
        color6 = "#0184bc", -- Cyan
        color7 = "#E25303", -- Orange (Keep accent pop)
        color8 = "#ffffff", -- bg_dark (even lighter)
        color9 = "#f0f0f0", -- bg_light
        color10 = "#e5e5e6", -- selection
        error = "#e45649", warning = "#986801", info = "#0184bc", hint = "#a0a1a7",
    },

    -- 3. New "Cyberpunk" Theme (Neon)
    prime = {
        bg = "#100412", fg = "#00ff9f", -- Deep Purple BG, Neon Green Text
        color0 = "#670067", -- Deep Purple Grey
        color1 = "#ff0055", -- Neon Red
        color2 = "#00ff9f", -- Neon Green
        color3 = "#f6ff00", -- Neon Yellow
        color4 = "#00f7ff", -- Neon Cyan/Blue
        color5 = "#ff00ff", -- Neon Pink
        color6 = "#00ffff", -- Cyan
        color7 = "#ff9900", -- Neon Orange
        color8 = "#050014",
        color9 = "#19043d",
        color10 = "#380b6e",
        error = "#ff0055", warning = "#f6ff00", info = "#00ffff", hint = "#ff00ff",
    },

     -- 4. New "Cyberpunk" Theme (Neon)
    aurora = {
        bg = "#030f18", fg = "#00ff9f", -- Deep Purple BG, Neon Green Text
        color0 = "#670067", -- Deep Purple Grey
        color1 = "#ff0055", -- Neon Red
        color2 = "#00ff9f", -- Neon Green
        color3 = "#f6ff00", -- Neon Yellow
        color4 = "#00f7ff", -- Neon Cyan/Blue
        color5 = "#ff00ff", -- Neon Pink
        color6 = "#00ffff", -- Cyan
        color7 = "#ff9900", -- Neon Orange
        color8 = "#050014",
        color9 = "#19043d",
        color10 = "#380b6e",
        error = "#ff0055", warning = "#f6ff00", info = "#00ffff", hint = "#ff00ff",
    },

     -- 5. New "Cyberpunk" Theme (Neon)
    sunset = {
        bg = "#190408", fg = "#00ff9f", -- Deep Purple BG, Neon Green Text
        color0 = "#ffffff", -- Deep Purple Grey
        color1 = "#E76F51", -- Neon Red
        color2 = "#2A9D8F", -- Neon Green
        color3 = "#CCA3C8", -- Neon Yellow
        color4 = "#264653", -- Neon Cyan/Blue
        color5 = "#CCA3C8", -- Neon Pink
        color6 = "#00ffff", -- Cyan
        color7 = "#ff9900", -- Neon Orange
        color8 = "#050014",
        color9 = "#19043d",
        color10 = "#FFA500",
        error = "#ff0055", warning = "#f6ff00", info = "#00ffff", hint = "#ff00ff",
    },
}

function M.setup(opts)
    opts = opts or {}
    -- This line picks the palette based on what user put in setup()
    M.palette = palettes[opts.theme] or palettes.dusk
end

M.palette = palettes.dusk

return M
