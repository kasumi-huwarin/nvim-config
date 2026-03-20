-- vscode-html-language-server (HTML)
local M = {}

function M.setup(capabilities)
  vim.lsp.config("html", {
    capabilities = capabilities,
  })
  vim.lsp.enable("html")
end

return M
