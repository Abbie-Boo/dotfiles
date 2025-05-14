-- setups
vim.o.nu = true
vim.o.rnu = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2 -- set tab width to 2 space
vim.o.expandtab = true
-- vim.o.spell = true

-- Key maps
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<s-w>", vim.cmd.w)
vim.keymap.set("n", "<s-q>", vim.cmd.q)
vim.keymap.set("v", "<leader>x", vim.cmd.lua)
vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/plugins/luasnip.lua<CR>")

-- Telescope key maps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
vim.keymap.set("n", "<leader>fo", builtin.vim_options, { desc = "Find vim options" })
vim.keymap.set("n", "<leader>fc", function()
	builtin.find_files({
		cwd = vim.fn.stdpath("config"),
	})
end, { desc = "Find vim config files" })

-- rust
vim.keymap.set("n", "<leader>r", ":RustRun!<CR>")
vim.keymap.set("n", "<leader>oc", ":RustLsp openCargo<CR>")
