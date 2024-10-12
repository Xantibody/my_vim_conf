return {
  -- add gruvbox
  {
    'ellisonleao/gruvbox.nvim',
    --colorsheme high priority
    priority = 1000,
    config = function()
      vim.cmd("colorscheme gruvbox")
    end
  }
}
