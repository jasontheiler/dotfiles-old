-- See: https://github.com/folke/which-key.nvim
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local which_key = require("which-key")

    -- See: https://github.com/folke/which-key.nvim#%EF%B8%8F-configuration
    which_key.setup({
      preset = "helix",
      win = {
        padding = { 1, 3 },
        border = "single",
      },
      sort = { "group", "alphanum" },
      replace = { key = {} },
      icons = {
        group = "",
        rules = false,
        keys = {},
      },
      show_help = false,
    })

    -- See: https://github.com/folke/which-key.nvim#%EF%B8%8F-setup
    which_key.add({
      { "<leader>b", group = "Buffer" },
      { "<leader>g", group = "Git" },
      { "<leader>l", group = "LSP" },
      { "<leader>r", group = "Random" },
      { "<leader>s", group = "Search" },
      { "<leader>w", group = "Window" },
    })
  end,
}
