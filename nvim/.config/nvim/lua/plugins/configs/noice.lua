local noice = require("noice")

-- See: https://github.com/folke/noice.nvim
noice.setup({
  cmdline = {
    format = {
      cmdline = { title = " Command ", icon = "❯" },
      filter = { icon = "!", icon_hl_group = "NoiceCmdlineIconFilter" },
      help = false,
      lua = false,
      search_down = { icon = "/" },
      search_up = { icon = "?" },
    },
  },
  lsp = {
    signature = {
      auto_open = { enabled = false },
    },
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  views = {
    cmdline_popup = {
      border = { style = "single" }
    },
    hover = {
      border = { style = "single" }
    },
  },
})
