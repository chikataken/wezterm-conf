local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- new window
config.initial_cols = 100
config.initial_rows = 40

-- font & color
config.font_size = 13
config.color_scheme = 'Atom'
config.font = wezterm.font 'JetBrains Mono'


-- dynamic status bar
wezterm.on("update-status", function(window, pane)
  local battery = wezterm.battery_info()[1]
  local pct     = math.floor(battery.state_of_charge * 100)
  local time    = wezterm.strftime("%H:%M")
  window:set_right_status(
    wezterm.format {
      { Text = string.format("🔋%d%%  ⌚%s", pct, time) },
    }
  )
end)

return config
