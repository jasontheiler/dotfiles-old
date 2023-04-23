local catppuccin = require("catppuccin")
local color_utils = require("catppuccin/utils/colors")

-- See: https://github.com/catppuccin/nvim#configuration
catppuccin.setup({
  flavour = "mocha",
  transparent_background = true,
  styles = {
    conditionals = {},
  },
  integrations = {
    native_lsp = {
      enabled = true,
      underlines = {
        errors = { "undercurl" },
        warnings = { "undercurl" },
        information = { "undercurl" },
        hints = { "undercurl" },
      },
    },
  },
  color_overrides = {
    mocha = {
      rosewater = "#DAA992",
      flamingo = "#DAA992",
      pink = "#C386BB",
      mauve = "#C386BB",
      red = "#EA6962",
      maroon = "#D3869B",
      peach = "#DD7F4E",
      yellow = "#E8C677",
      green = "#A9B665",
      teal = "#89B482",
      sky = "#89B482",
      sapphire = "#89B482",
      blue = "#7DAEB3",
      lavender = "#BDAEC3",
      text = "#E4CEA8",
      subtext1 = "#BDAE8B",
      subtext0 = "#A69372",
      overlay2 = "#8C7A58",
      overlay1 = "#735F3F",
      overlay0 = "#5A4525",
      surface2 = "#4B4F51",
      surface1 = "#2A2D2E",
      surface0 = "#232728",
      base = "#231F1F",
      mantle = "#1B1717",
      crust = "#130F0F",
    },
  },
  highlight_overrides = {
    mocha = function(palette)
      return {
        ["@namespace"] = { style = {} },
        ["@parameter"] = { style = {} },
        ["@tag.attribute"] = { style = {} },
        BufferLineBufferSelected = { fg = palette.text },
        BufferLineNumbersSelected = { fg = palette.text },
        CmpCompletionBorder = { fg = palette.lavender },
        CmpDocumentationBorder = { fg = palette.lavender },
        CmpItemAbbr = { fg = palette.text },
        CmpItemAbbrMatch = { fg = palette.blue },
        CursorLineNrNormal = { fg = palette.blue },
        CursorLineNrVisual = { fg = palette.pink },
        CursorLineNrInsert = { fg = palette.green },
        CursorLineNrReplace = { fg = palette.red },
        CursorLineNrCommand = { fg = palette.peach },
        FidgetTitle = { fg = palette.teal },
        FloatBorder = { fg = palette.lavender },
        HeirlineWinbar = { fg = palette.text },
        HeirlineWinbarInactive = { fg = palette.surface2 },
        NormalFloat = { fg = palette.text, bg = palette.none },
        Pmenu = { fg = palette.text, bg = palette.base },
        PmenuSbar = { bg = palette.surface0 },
        PmenuSel = { fg = palette.base, bg = palette.lavender },
        PmenuThumb = { bg = palette.lavender },
        TelescopeBorder = { fg = palette.lavender },
        TelescopePromptTitle = { fg = palette.flamingo },
        TelescopeSelection = { fg = palette.text, bg = palette.surface0 },
        TelescopeSelectionCaret = { bg = palette.surface0 },
        TreesitterContext = { bg = palette.none },
        TreesitterContextLineNumber = { fg = palette.overlay0 },
        VertSplit = { fg = palette.crust },
        VirtColumn = { fg = palette.surface0 },
        YankHighlight = { bg = color_utils.darken(palette.rosewater, 0.33, palette.base) },
      }
    end,
  },
})

vim.cmd("colorscheme catppuccin")
