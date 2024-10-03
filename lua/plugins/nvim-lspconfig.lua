return {
  'neovim/nvim-lspconfig',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
  },
  keys = {
    { 'gD', vim.lsp.buf.declaration, desc = "Go to declaration" },
    { 'gd', vim.lsp.buf.definition, desc = "Go to definition" },
    { 'K', vim.lsp.buf.hover, desc = "Hover" },
    { 'gi', vim.lsp.buf.implementation, desc = "Go to implementation" },
    { '<C-k>', vim.lsp.buf.signature_help, desc = "Signature help" },
    { '<space>wa', vim.lsp.buf.add_workspace_folder, desc = "Add workspace folder" },
    { '<space>wr', vim.lsp.buf.remove_workspace_folder, desc = "Remove workspace folder" },
    { '<space>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, desc = "List workspace folders" },
    { '<space>D', vim.lsp.buf.type_definition, desc = "Type definition" },
    { '<space>rn', vim.lsp.buf.rename, desc = "Rename" },
    { '<space>ca', vim.lsp.buf.code_action, desc = "Code action" },
    { 'gr', vim.lsp.buf.references, desc = "References" },
    { '<space>f', function() vim.lsp.buf.format { async = true } end, desc = "Format" },
  },
  config = function()
    local lspconfig = require('lspconfig')
    require('mason-lspconfig').setup_handlers({
      function(server_name)
        lspconfig[server_name].setup{}
      end,
    })
  end
}
