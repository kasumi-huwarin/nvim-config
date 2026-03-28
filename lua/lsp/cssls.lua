-- vscode-css-language-server (CSS)
local M = {}

function M.setup(capabilities)
  vim.lsp.config("cssls", {
    capabilities = capabilities,
  })
  vim.lsp.enable("cssls")
end

return M
