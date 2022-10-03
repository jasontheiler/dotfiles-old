local cmp = require("cmp")
local luasnip = require("luasnip")

vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- See: https://github.com/hrsh7th/nvim-cmp#setup
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  sources = {
    { name = "luasnip" },
    { name = "nvim_lsp" },
    { name = "nvim_lsp_signature_help" },
    { name = "buffer" },
  },
  mapping = {
    ["<C-Space>"] = cmp.mapping.complete(),
  },
})
