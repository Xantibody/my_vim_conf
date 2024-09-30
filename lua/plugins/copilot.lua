return {
  -- Use Tim Pope's copilot plugin
  'github/copilot.vim',
  init = function()
    vim.g.copilot_filetypes = {
      -- Wrapping the filetypes in "[ ]" is necessary to allow for filetypes with dots in their name
      ['markdown'] = true,
      ['python'] = true,
      ['lua'] = true,
    }
    vim.g.copilot_no_tab_map = true
  end,
}
