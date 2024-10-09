return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    -- Not required if installing with Mason UI
    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "jdtls",
        "rust_analyzer",
        "marksman",
        "yamlls",
        "pylsp",
        "ts_ls",

      },

      Automatic_installed = true,
    })
  end
}
