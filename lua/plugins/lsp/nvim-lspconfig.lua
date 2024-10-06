return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  keys = {
    { "<leader>F",  function() vim.lsp.buf.format({ async = true }) end, mode = "n",          desc = "Format buffer using LSP" },
    { "gR",         "<cmd>Telescope lsp_references<CR>",                 mode = "n",          desc = "Show LSP references" },
    { "gD",         vim.lsp.buf.declaration,                             mode = "n",          desc = "Go to declaration" },
    { "gd",         "<cmd>Telescope lsp_definitions<CR>",                mode = "n",          desc = "Show LSP definitions" },
    { "gi",         "<cmd>Telescope lsp_implementations<CR>",            mode = "n",          desc = "Show LSP implementations" },
    { "gt",         "<cmd>Telescope lsp_type_definitions<CR>",           mode = "n",          desc = "Show LSP type definitions" },
    { "<leader>ca", vim.lsp.buf.code_action,                             mode = { "n", "v" }, desc = "See available code actions" },
    { "<leader>rn", vim.lsp.buf.rename,                                  mode = "n",          desc = "Smart rename" },
    { "<leader>D",  "<cmd>Telescope diagnostics bufnr=0<CR>",            mode = "n",          desc = "Show buffer diagnostics" },
    { "<leader>d",  vim.diagnostic.open_float,                           mode = "n",          desc = "Show line diagnostics" },
    { "[d",         vim.diagnostic.goto_prev,                            mode = "n",          desc = "Go to previous diagnostic" },
    { "]d",         vim.diagnostic.goto_next,                            mode = "n",          desc = "Go to next diagnostic" },
    { "K",          vim.lsp.buf.hover,                                   mode = "n",          desc = "Show documentation for what is under cursor" },
    { "<leader>rs", ":LspRestart<CR>",                                   mode = "n",          desc = "Restart LSP" },
  },

  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import mason_lspconfig plugin
    local mason_lspconfig = require("mason-lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf, silent = true }
      end,
    })
    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    -- (not in youtube nvim video)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end



    -- java settings
    -- Must be java17 or higher. lol
    lspconfig["jdtls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- rust settings
    lspconfig["rust_analyzer"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- lua settings
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- markdown settings
    lspconfig["marksman"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- yaml settings
    lspconfig["yamlls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    --python settings
    lspconfig["pylsp"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    --ts, js settings
    lspconfig["ts_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })
  end,
}
