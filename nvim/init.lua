vim.o.nu = true
vim.o.rnu = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2 -- set tab width to 2 space
vim.o.expandtab = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.laststatus = 0
-- vim.opt.foldlevelstart = 99

vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undofile = true


vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>s", vim.cmd.source)
vim.keymap.set({ "n", "v", "x" }, "<leader>y", '"+y<CR>')
vim.keymap.set("n", "<leader>f=", vim.lsp.buf.format)
vim.keymap.set({ "n", "v" }, "-", vim.cmd.Ex)
vim.keymap.set("n", "z,", vim.diagnostic.open_float)

vim.keymap.set("n", "<leader>b", function()
  local ft = vim.bo.filetype
  local path = "~/.config/nvim/snippets/" .. ft .. ".lua"
  vim.cmd("edit " .. path)
end, { desc = "Open snippet file for current filetype" })


require("config.lazy")

-- Autocommands
-- The support for nvim hightlight will be removed
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    vim.lsp.buf.format()
  end,
})


-- Lsp
vim.lsp.enable({ "lua_ls", "clangd", "tinymist", "rust_analyzer" })
vim.o.foldenable = true
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldmethod = 'expr'
vim.o.foldlevel = 99

require("config.tree")
