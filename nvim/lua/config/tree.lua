-- gruvbox treesitter groups and lsp semantic highlight tokens

local red = "#cc241d"
local yellow = "#d79921"
local green = "#98971a"
local bg0 = "#ffffff"

-- vim.o.background = "dark"
--
require("gruvbox").setup({

  terminal_colors = true,
  contrast = "hard",
  italic = {
    operators = true,
  },
  palette_overrides = {
    dark0_hard = "#0e1018",
    light0_hard = bg0,
  },
  overrides = {
    -- MatchParen = { bg = "#9d0006" },
    SignColumn = { bg = bg0 },
    -- ["@markup.italic"] = { fg = red, bold = false, italic = true },
    -- ["@markup.bold"] = { fg = red, bold = true },
  },
})
--
vim.cmd("colorscheme gruvbox")
