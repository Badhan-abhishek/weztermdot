local wezterm = require("wezterm")
local config = wezterm.config_builder()

local ui = require("ui")
local keys = require("keys")

config = ui
config.keys = keys

config.automatically_reload_config = true

config.set_environment_variables = {
	PATH = "/Applications/WezTerm.app/Contents/MacOS/:" .. os.getenv("PATH"),
}

config.window_padding = {
	right = 0,
	left = 0,
	top = 0,
	bottom = 0,
}

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Seti"
	else
		return "Night Owlish Light"
	end
end

wezterm.on("window-config-reloaded", function(window)
	local overrides = window:get_config_overrides() or {}
	local appearance = window:get_appearance()
	local scheme = scheme_for_appearance(appearance)
	if overrides.color_scheme ~= scheme then
		overrides.color_scheme = scheme
		window:set_config_overrides(overrides)
	end
end)

return config
