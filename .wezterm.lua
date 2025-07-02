local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- new window
config.initial_cols = 100
config.initial_rows = 40

-- font & color
config.font_size = 13
config.color_scheme = 'Atom'
config.font = wezterm.font 'JetBrains Mono'

-- ssh
local ssh_target = "mbdtf"
config.default_prog = { "/usr/bin/ssh", ssh_target }

return config


return config
