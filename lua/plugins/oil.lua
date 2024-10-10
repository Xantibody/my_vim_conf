return {
  'stevearc/oil.nvim',
  cmd = { "Oil" },
  opts = {
    -- show hidden files
    view_options = { show_hidden = true },
  },
  keys = {
    { "<leader>o", "<cmd>Oil<CR>", desc = "Open oil" },
  },
  dependencies = { "echasnovski/mini.icons", opts = {} },
  -- Optional dependencies
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
}
