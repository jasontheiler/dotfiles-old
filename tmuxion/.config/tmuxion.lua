local tmuxion = require("tmuxion")

local catppuccin = {
  flamingo = os.getenv("CATPPUCCIN_FLAMINGO"),
  lavender = os.getenv("CATPPUCCIN_LAVENDER"),
  overlay0 = os.getenv("CATPPUCCIN_OVERLAY0"),
  surface0 = os.getenv("CATPPUCCIN_SURFACE0"),
}

tmuxion.config({
  session_selector = {
    width = 48,
    height = 16,
    scrolloff = 4,
    inverted = false,
    paths = {
      truncate_home_dir = true,
      home_dir_symbol = "~",
      trailing_slash = true,
    },
    results = {
      style = nil,
      border = "plain",
      border_style = { fg = catppuccin.lavender },
      title = " Results ",
      title_style = nil,
      item_style = nil,
      item_match_style = { fg = "blue" },
      selection_style = { bg = catppuccin.surface0, modifiers = { "bold" } },
      selection_prefix = "❯ ",
      selection_prefix_style = { fg = catppuccin.flamingo },
    },
    prompt = {
      style = nil,
      border = "plain",
      border_style = { fg = catppuccin.lavender },
      title = " Sessions ",
      title_style = nil,
      pattern_style = nil,
      pattern_prefix = "  ",
      pattern_prefix_style = { fg = catppuccin.flamingo },
      stats_template = " {results}/{sessions} ",
      stats_style = { fg = catppuccin.overlay0 },
    },
  },
  keybinds = {
    session_selector = { "C-s" },
    last_session = { "w" },
  },
})
