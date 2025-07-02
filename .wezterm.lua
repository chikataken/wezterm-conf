local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- new window
config.initial_cols = 100
config.initial_rows = 40

-- font & color
config.font_size = 13
config.color_scheme = 'Atom'
config.font = wezterm.font 'JetBrains Mono'
config.window_background_opacity = 0.95

-- ssh
config.default_prog = { '/bin/zsh', '-l' }
config.default_gui_startup_args = { 'ssh', 'mbdtf'}

return config
