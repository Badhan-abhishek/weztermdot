local wezterm = require("wezterm")

local M = {}

local dimmer = { brightness = 0.04 }

M = {
	window_frame = {
		font_size = 20.0,
	},
	font_size = 20.0,
	tab_bar_at_bottom = false,
	use_fancy_tab_bar = false,
	leader = { key = "a", mods = "CTRL" },
	disable_default_key_bindings = false,
	enable_scroll_bar = true,
	min_scroll_bar_height = "2cell",
	colors = {
		scrollbar_thumb = "gray",
	},

	font = wezterm.font_with_fallback({
		"Geist Mono",
		"JetBrains Mono",
	}),

	background = {
		{
			source = {
				File = "/Users/cuilsoft/.config/wezterm/assets/bg_1.jpg",
			},
			repeat_x = "NoRepeat",
			hsb = dimmer,
		},
	},
}

return M
