return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup({
      mappings = {
        basic = true, -- enables `gcc`, `gc` etc.
        extra = true  -- enables `gco`, `gcO`, `gcA`
      }
    })
  end,
  opts = {
    -- you can use this to create a highlight for commented region
    -- like the vim yank highlight by tj.
    pre_hook = nil,
    post_hook = nil,
    ignore = '^$',
  },

  -- "kylechui/nvim-surround",
  -- config = function()
  --   require("nvim-surround").setup({
  --     -- Configuration here, or leave empty to use defaults
  --   })
  -- end
}
