local wezterm = require("wezterm")
return {
	window_frame = {
		font = wezterm.font({ family = "Segoe UI Variable Static Display", weight = "Regular" }),
		font_size = 9.0,
	},
	font = wezterm.font_with_fallback({
		{ family = "JetBrains Mono",         weight = "Regular", harfbuzz_features = { "calt=0", "clig=0", "liga=0" } },
		{ family = "Symbols Nerd Font Mono", scale = 0.75 },
	}),
	font_size = 10.0,
	use_cap_height_to_scale_fallback_fonts = true,
	hide_tab_bar_if_only_one_tab = true,
	default_cursor_style = "BlinkingBlock",
	cursor_blink_rate = 500,
	animation_fps = 60,
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
	bold_brightens_ansi_colors = true,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	mouse_bindings = {
		{
			event = { Down = { streak = 1, button = "Right" } },
			mods = "NONE",
			action = wezterm.action.PasteFrom("PrimarySelection"),
		},
	},
	colors = {
		-- The default text color
		foreground = "#fcfcfc",
		-- The default background color
		background = "#232627",
		-- Overrides the cell background color when the current cell is occupied by the
		-- cursor and the cursor style is set to Block
		cursor_bg = "#ffffff",
		-- Overrides the text color when the current cell is occupied by the cursor
		-- cursor_fg = 'black',
		-- Specifies the border color of the cursor when the cursor style is set to Block,
		-- or the color of the vertical or horizontal bar when the cursor style is set to
		-- Bar or Underline.
		cursor_border = "#ffffff",
		-- the foreground color of selected text
		selection_fg = "black",
		-- the background color of selected text
		selection_bg = "#ffffff",
		-- The color of the scrollbar "thumb"; the portion that represents the current viewport
		-- scrollbar_thumb = '#222222',

		-- The color of the split lines between panes
		--split = '#444444',

		ansi = {
			"#232627",
			"#ed1515",
			"#11d116",
			"#f67400",
			"#1d99f3",
			"#9b59b6",
			"#1abc9c",
			"#fcfcfc",
		},
		brights = {
			"#7f8c8d",
			"#c0392b",
			"#1cdc9a",
			"#fdbc4b",
			"#3daee9",
			"#8e44ad",
			"#16a085",
			"#ffffff",
		},
		-- Arbitrary colors of the palette in the range from 16 to 255
		--indexed = { [136] = "#af8700" },
	},
}
