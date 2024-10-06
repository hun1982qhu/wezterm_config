local wezterm = require('wezterm')
local platform = require('utils.platform')

local font1 = 'JetBrains Mono'
local font2 = 'Nerd Font'
local font3 = 'Agave Nerd Font'
local font4 = 'FiraCode Nerd Font'

local font_size = platform().is_mac and 18 or 16

return {
   font = wezterm.font_with_fallback({
      font1,
      font2,
      font3,
      font4,
      -- 'Noto Sans Mono',
   }),
   font_size = font_size,
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   warn_about_missing_glyphs = false,
}
