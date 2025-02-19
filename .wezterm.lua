local wezterm = require("wezterm")
local act = wezterm.action


local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.default_prog = { 'pwsh', '-NoLogo' }

-- Settings
-- UI
config.window_decorations = "RESIZE"
config.color_scheme = 'Gruvbox Dark (Gogh)'
config.window_background_opacity = 1

config.inactive_pane_hsb = { -- Dim inactive panes
	saturation = 0.8,
	brightness = 0.6,
}

-- Font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12

-- Keybindings
Leader = "CTRL"
LeaderShift = "CTRL|SHIFT"
wezterm.on("format-window-title", function()
	local title = "WezTerm"
	return title
end)

-- Tab bar
config.enable_tab_bar = false
config.integrated_title_buttons = { "Close" }

return config