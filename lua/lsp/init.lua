local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- clangd用
require("lsp.clangd").setup(capabilities)

-- css-lsp用
require("lsp.cssls").setup(capabilities)

-- emmet-language-server用
require("lsp.emmet_language_server").setup(capabilities)

-- html-lsp用
require("lsp.html").setup(capabilities)

-- lua_ls用
require("lsp.lua_ls").setup(capabilities)

-- pyright用
require("lsp.pyright").setup(capabilities)

-- Rust-analyzer用
require("lsp.rust_analyzer").setup(capabilities)

-- typescript-language-server用
require("lsp.ts_ls").setup(capabilities)
