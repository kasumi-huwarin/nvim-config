return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({
            async = true,
            lsp_fallback = true,
          })
        end,
        mode = "n",
        desc = "Format buffer",
      },
    },
    opts = {
      formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        lua = { "stylua" },
        markdown = { "prettier" },
        python = { "ruff_format" },
        rust = { "rustfmt" },
        sh = { "shfmt" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        yaml = { "prettier" },
        zsh = { "shfmt" },
      },
      format_on_save = function()
        return {
          timeout_ms = 500,
          lsp_fallback = true,
        }
      end,
    },
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      {
        "<leader>l",
        function()
          require("lint").try_lint()
        end,
        mode = "n",
        desc = "Lint buffer",
      },
    },
    config = function()
      local lint = require("lint")

      lint.linters_by_ft = {
        c = { "cpplint" },
        cpp = { "cpplint" },
        javascript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        lua = { "selene" },
        python = { "ruff" },
        sh = { "shellcheck" },
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        zsh = { "shellcheck" },
      }

      local lint_augroup = vim.api.nvim_create_augroup("nvim-lint", { clear = true })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
      "mason-org/mason.nvim",
    },
    opts = {
      ensure_installed = {
        "clang-format",
        "cpplint",
        "eslint_d",
        "selene",
        "prettier",
        "ruff",
        "shellcheck",
        "shfmt",
        "stylua",
      },
      auto_update = false,
      run_on_start = true,
      start_delay = 3000,
    },
  },
}
