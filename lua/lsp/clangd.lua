local M = {}

function M.setup(capabilities)
  vim.lsp.config("clangd", {
    cmd = {
      "clangd",
      "--header-insertion=never",
      "--clang-tidy=false",
    },
    capabilities = capabilities,
  })
  vim.lsp.enable("clangd")
end

return M
