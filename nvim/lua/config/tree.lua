-- gruvbox treesitter groups and lsp semantic highlight tokens

local red = "#cc241d"
local yellow = "#d79921"
local green = "#98971a"

vim.o.background = "dark"
--
require("gruvbox").setup({

  terminal_colors = true,
  contrast = "hard",
  italic = {
    operators = true,
  },
  palette_overrides = {
    dark0_hard = "#0e1018",
  },
  overrides = {
    MatchParen = { bg = "#9d0006" },
    SignColumn = { bg = "#0e1018" },
    -- ["@markup.italic"] = { fg = red, bold = false, italic = true },
    -- ["@markup.bold"] = { fg = red, bold = true },
  },
})
--
vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme gruvbox")
