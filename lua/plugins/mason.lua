return {
  { "williamboman/mason.nvim", build = ":MasonUpdate", config = true },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "gopls", "ts_ls" },
        automatic_installation = true,
      })

      local lspconfig = require("lspconfig")

      -- Go
      lspconfig.gopls.setup({})

      -- TypeScript / JavaScript
      lspconfig.ts_ls.setup({})
    end,
  },
}
