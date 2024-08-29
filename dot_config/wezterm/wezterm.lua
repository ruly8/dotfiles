-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.window_padding = {
    left = 1,
    right = 1,
    top = 0,
    bottom = 0,
}

-- For example, changing the color scheme:
--config.color_scheme = 'Gruvbox dark, pale (base16)'
config.color_scheme = 'nordfox' -- or nordfox

config.hide_tab_bar_if_only_one_tab = true

config.initial_rows = 50

-- Keybinds
local act = wezterm.action
config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
    -- panes
    {
        mods = 'LEADER|SHIFT',
        key = '%',
        action = act.SplitVertical --{ domain = 'CurrentPaneDomain' },
    },
    {
        mods = 'LEADER|SHIFT',
        key = '"',
        action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    -- window
    {
        mods = 'LEADER',
        key = 'c',
        action = act.SpawnTab 'CurrentPaneDomain',
    },
}

-- and finally, return the configuration to wezterm
return config
