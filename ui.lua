local wezterm = require("wezterm")

local M = {}

local dimmer = { brightness = 0.02 }

local background_image_name = "bg_5.jpeg"

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
		"PlemolJP35 Console NF",
		"JetBrains Mono",
	}),

	background = {
		{
			source = {
				File = "/Users/abhishek/.config/wezterm/assets/" .. background_image_name,
			},
			repeat_x = "NoRepeat",
			hsb = dimmer,
		},
	},
}

return M
