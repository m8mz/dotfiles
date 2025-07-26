local wezterm = require("wezterm")
local act = wezterm.action
return {
	color_scheme = "Dracula (Official)",
	enable_tab_bar = true,
	tab_bar_at_bottom = false,
	use_fancy_tab_bar = false,
	font = wezterm.font("JetBrains Mono", {
		weight = "Medium",
	}),
	font_size = 12.0,
	freetype_load_target = "Normal",
	window_decorations = "RESIZE",
	keys = {
		{
			key = "LeftArrow",
			mods = "OPT",
			action = act.SendKey({
				key = "b",
				mods = "ALT",
			}),
		},
		{
			key = "RightArrow",
			mods = "OPT",
			action = act.SendKey({
				key = "f",
				mods = "ALT",
			}),
		},
	},
}
