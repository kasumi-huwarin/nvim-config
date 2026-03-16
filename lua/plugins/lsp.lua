-- lua/plugins/lsp.lua
-- mason.nvim nvim-lspconfig
return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lsp")
    end,
  },
}
