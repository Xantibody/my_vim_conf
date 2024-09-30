return {
  'stevearc/oil.nvim',
  opts = {
    -- show hidden files
    view_options = {show_hidden = true},
  },
  keys = {
    {"<leader>O", "<cmd>Oil<CR>",desc = "Open oil"},
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
