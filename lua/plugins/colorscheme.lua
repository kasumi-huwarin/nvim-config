return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm",
      transparent = false,
      plugins = {
        auto = true,
        bufferline = true,
        cmp = true,
        telescope = true,
        ["nvim-tree"] = true,
      },
      on_highlights = function(hl, c)
        hl.Pmenu = { bg = c.bg_dark, fg = c.fg }
        hl.PmenuSel = { bg = c.bg_highlight, fg = c.fg }
        hl.PmenuSbar = { bg = c.bg_dark1 }
        hl.PmenuThumb = { bg = c.comment }
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
