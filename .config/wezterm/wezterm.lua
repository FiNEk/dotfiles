-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Appearance
config.color_scheme = "Catppuccin Mocha"
config.enable_tab_bar = false
-- Fonts
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium" })
config.font_size = 15
-- GPU
-- config.front_end = "WebGpu"
-- config.max_fps = 144

return config
