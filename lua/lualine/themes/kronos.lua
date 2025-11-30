local colors = require("kronos.colors").palette

return {
  normal = {
    -- Normal Mode: Orange Background (color7), White Text (bg)
    -- Note: Your 'bg' is actually dark, but typically you want 'fg' (white) on top of orange,
    -- or 'bg' (black) on top of orange.
    -- Assuming you want White Text on Orange:
    a = { bg = colors.color7, fg = colors.fg, gui = 'bold' },

    b = { bg = colors.color0, fg = colors.fg },
    c = { bg = colors.bg,     fg = colors.color6 }, -- Cyan Filename
  },
  insert = {
    a = { bg = colors.color2, fg = colors.bg, gui = 'bold' }, -- Green
    b = { bg = colors.color0, fg = colors.fg },
    c = { bg = colors.bg,     fg = colors.color2 },
  },
  visual = {
    a = { bg = colors.color6, fg = colors.bg, gui = 'bold' }, -- Cyan
    b = { bg = colors.color0, fg = colors.fg },
    c = { bg = colors.bg,     fg = colors.color6 },
  },
  replace = {
    a = { bg = colors.color1, fg = colors.bg, gui = 'bold' }, -- Red
    b = { bg = colors.color0, fg = colors.fg },
    c = { bg = colors.bg,     fg = colors.color6 },
  },
  command = {
    a = { bg = colors.color3, fg = colors.bg, gui = 'bold' }, -- Yellow
    b = { bg = colors.color0, fg = colors.fg },
    c = { bg = colors.bg,     fg = colors.color6 },
  },
  inactive = {
    a = { bg = colors.bg,     fg = colors.color0, gui = 'bold' },
    b = { bg = colors.bg,     fg = colors.color0 },
    c = { bg = colors.bg,     fg = colors.color0 },
  },
}
