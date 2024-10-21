-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Tokyo Night'
config.color_scheme = 'Catppuccin Mocha'
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 18
config.initial_cols = 130
config.initial_rows = 35
config.window_decorations = "RESIZE | MACOS_FORCE_ENABLE_SHADOW"
config.keys = {
  {
    key = 'f',
    mods = 'CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
  -- {
  --   key = '/',
  --   mods = 'CTRL',
  --   action = wezterm.action.ClearScrollback 'ScrollbackAndViewport',
  -- },
}
return config
