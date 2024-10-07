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
-- config.window_decorations = "MACOS_FORCE_ENABLE_SHADOW"
--config.window_background_opacity = 0.85
-- config.macos_window_background_blur = 65
-- config.window_frame = {
--  border_left_width = '6px',
--   border_right_width = '6px',
--   border_bottom_height = '6px',
--   border_top_height = '6px',
--   border_left_color = "#F38BA8",
--   border_right_color = "#F38BA8",
--   border_top_color = "#F38BA8",
--   border_bottom_color = "#F38BA8",
-- }
-- and finally, return the configuration to wezterm
return config
