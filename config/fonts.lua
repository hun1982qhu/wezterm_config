local wezterm = require('wezterm')
local platform = require('utils.platform')

local font1 = 'JetBrains Mono'
local font2 = 'Nerd Font'
local font3 = 'Agave Nerd Font'
local font4 = 'FiraCode Nerd Font'
local font5 = 'Noto Serif CJK SC'
local font6 = 'KaiTi' -- 系统楷体字体
local font7 = 'STKaiti' -- 华文楷体

local is_mac = platform().is_mac
-- local font_size = is_mac and 18 or 16 -- 定义字体大小

if is_mac then
   -- macOS 配置
   local font_size = 18 -- 定义字体大小
   return {
      font = wezterm.font_with_fallback({
         font1,
         font2,
         font3,
         font4,
         font6, -- 优先楷体
         font7, -- 华文楷体
         font5, -- 备用字体
      }),
      font_size = font_size,
      freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
      freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
      warn_about_missing_glyphs = true,
   }
else
   -- 非 macOS 配置
   local font_size = 16 -- 定义字体大小
   return {
      font = wezterm.font_with_fallback({
         font1,
         font2,
         font3,
         font4,
      }),
      font_size = font_size,
      freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
      freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
      warn_about_missing_glyphs = true,
   }
end
