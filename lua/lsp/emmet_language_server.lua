-- emmet-language-server
local M = {}

function M.setup(capabilities)
  vim.lsp.config("emmet_language_server", {
    capabilities = capabilities,
  })
  vim.lsp.enable("emmet_language_server")
end

return M
