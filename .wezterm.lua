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
config.default_prog = { '/bin/zsh', '-l' } :contentReference[oaicite:0]{index=0}

config.keys = {

  {
    key    = 'n',
    mods   = 'CMD',
    action = wezterm.action.SpawnCommandInNewWindow {
      args = { '/usr/bin/ssh', 'mbdtf' },
    },
  },

  {
    key    = 't',
    mods   = 'CMD',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },
}

return config
