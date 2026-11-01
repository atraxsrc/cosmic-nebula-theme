-- Nebula for WezTerm, part of cosmic-nebula-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("nebula")
-- To follow COSMIC's Dark / Light toggle with the Nebula Day half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "nebula" or "nebuladay")

return {
  foreground = "#E0E6ED",
  background = "#181C22",

  cursor_bg = "#4ECDC4",
  cursor_fg = "#181C22",
  cursor_border = "#4ECDC4",
  compose_cursor = "#FFB38A",

  selection_bg = "#2C3444",
  selection_fg = "none",

  scrollbar_thumb = "#5B6478",
  split = "#5B6478",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#101318", "#FF7B92", "#82EEFF", "#C9AFF0", "#4ECDC4", "#FFB38A", "#82EEFF", "#D1D7E0" },
  brights = { "#5B6478", "#FFA4B4", "#A6F3FF", "#DAC9F5", "#66D4CC", "#FFCEB3", "#B388EB", "#EFEDF2" },

  copy_mode_active_highlight_bg = { Color = "#4ECDC4" },
  copy_mode_active_highlight_fg = { Color = "#181C22" },
  copy_mode_inactive_highlight_bg = { Color = "#C9AFF0" },
  copy_mode_inactive_highlight_fg = { Color = "#181C22" },

  quick_select_label_bg = { Color = "#FFB38A" },
  quick_select_label_fg = { Color = "#181C22" },
  quick_select_match_bg = { Color = "#C9AFF0" },
  quick_select_match_fg = { Color = "#181C22" },

  tab_bar = {
    background = "#181C22",
    active_tab = { bg_color = "#4ECDC4", fg_color = "#181C22", intensity = "Bold" },
    inactive_tab = { bg_color = "#20252C", fg_color = "#96AAFF" },
    inactive_tab_hover = { bg_color = "#272C34", fg_color = "#E0E6ED" },
    new_tab = { bg_color = "#181C22", fg_color = "#96AAFF" },
    new_tab_hover = { bg_color = "#272C34", fg_color = "#4ECDC4" },
  },
}
